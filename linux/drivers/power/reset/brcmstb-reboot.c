/*
 * Copyright (C) 2013 Broadcom Corporation
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License as
 * published by the Free Software Foundation version 2.
 *
 * This program is distributed "as is" WITHOUT ANY WARRANTY of any
 * kind, whether express or implied; without even the implied warranty
 * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 */

#include <linux/device.h>
#include <linux/errno.h>
#include <linux/init.h>
#include <linux/io.h>
#include <linux/jiffies.h>
#include <linux/of_address.h>
#include <linux/of_irq.h>
#include <linux/of_platform.h>
#include <linux/platform_device.h>
#include <linux/printk.h>
#include <linux/reboot.h>
#include <linux/regmap.h>
#include <linux/smp.h>
#include <linux/mfd/syscon.h>

#include <asm/system_misc.h>

#define RESET_SOURCE_ENABLE_REG 1
#define SW_MASTER_RESET_REG 2

/* Other AON Register Definitions can be found in 'mach-bcm/aon_defs.h'*/
#define AON_REG_ANDROID_RESTART_CAUSE	0x24
#define AON_REG_ANDROID_RESTART_TIME	0x28
#define AON_REG_ANDROID_RESTART_TIME_N	0x2C

static struct regmap *regmap;
static u32 rst_src_en;
static u32 sw_mstr_rst;
static void __iomem *aon_sram_base;

#ifdef CONFIG_BRCMSTB_WKTMR_SYSTIME_SYNC
static inline void brcmstb_save_reboot_time(void)
{
	/* Sync the wall clock into AON SRAM since wktmr gets reset */
	struct timespec now;
	u32 sec;

	getnstimeofday(&now);

	sec = now.tv_sec + (now.tv_nsec + 500000000) / 1000000000;
	writel(sec, aon_sram_base + AON_REG_ANDROID_RESTART_TIME);
	writel(~sec, aon_sram_base + AON_REG_ANDROID_RESTART_TIME_N);
}
#endif

static void brcmstb_reboot(enum reboot_mode mode, const char *cmd)
{
	int rc;
	u32 tmp;
	u32 val;

	if (aon_sram_base != NULL) {
		/* Save the reboot reason to AON SRAM for bootloader to use.
		* Do this before writing to the sw master reset reg.
		* If there is an error in writing to sw master reset reg,
		* then we will likely need power-on-reset and the AON SRAM
		* will be cleared as part of the power-on-reset.*/
		if (cmd != NULL && cmd[0] != 0) {
			/* Save first letter of the reboot command argument to
			 * distinguish different reboot reason. Expected 'cmd':
			 *   - 'bootloader': Boot into bootloader
			 *   - 'recovery': Boot into recovery mode
			 *   - 'system' or '': Boot into normal Android mode*/
			val = cmd[0];
			pr_info("brcmstb_reboot: cmd='%s', val=%u\n", cmd, val);
		} else {
			val = 0;
			pr_info("brcmstb_reboot: empty cmd string\n");
		}
		writel(val, aon_sram_base + AON_REG_ANDROID_RESTART_CAUSE);
#ifdef CONFIG_BRCMSTB_WKTMR_SYSTIME_SYNC
		brcmstb_save_reboot_time();
#endif
	} else {
		pr_info("brcmstb_reboot: reboot reason cannot be saved.\n");
	}

	rc = regmap_write(regmap, rst_src_en, 1);
	if (rc) {
		pr_err("failed to write rst_src_en (%d)\n", rc);
		return;
	}

	rc = regmap_read(regmap, rst_src_en, &tmp);
	if (rc) {
		pr_err("failed to read rst_src_en (%d)\n", rc);
		return;
	}

	rc = regmap_write(regmap, sw_mstr_rst, 1);
	if (rc) {
		pr_err("failed to write sw_mstr_rst (%d)\n", rc);
		return;
	}

	rc = regmap_read(regmap, sw_mstr_rst, &tmp);
	if (rc) {
		pr_err("failed to read sw_mstr_rst (%d)\n", rc);
		return;
	}

	while (1)
		;
}

static int brcmstb_reboot_probe(struct platform_device *pdev)
{
	int rc;
	struct device_node *np = pdev->dev.of_node;
	struct device_node *np_aon_ctrl;

	/* The System Data RAM in the AON_CTRL block is used by different
	 * drivers for preserving state across software reset. For backward
	 * compatiblity, we only issue a warning if brcm,brcmstb-aon-ctrl
	 * device tree node cannot be found.*/
	np_aon_ctrl =
		of_find_compatible_node(NULL, NULL, "brcm,brcmstb-aon-ctrl");
	if (!np_aon_ctrl) {
		WARN(1, "brcm,brcmstb-aon-ctrl not found in DT, won't save reboot reason");
		aon_sram_base = NULL;
	} else {
		aon_sram_base = of_iomap(np_aon_ctrl, 1);
		WARN(!aon_sram_base, "failed to map aon-sram base");
		of_node_put(np_aon_ctrl);
	}

	regmap = syscon_regmap_lookup_by_phandle(np, "syscon");
	if (IS_ERR(regmap)) {
		pr_err("failed to get syscon phandle\n");
		return -EINVAL;
	}

	rc = of_property_read_u32_index(np, "syscon", RESET_SOURCE_ENABLE_REG,
					&rst_src_en);
	if (rc) {
		pr_err("can't get rst_src_en offset (%d)\n", rc);
		return -EINVAL;
	}

	rc = of_property_read_u32_index(np, "syscon", SW_MASTER_RESET_REG,
					&sw_mstr_rst);
	if (rc) {
		pr_err("can't get sw_mstr_rst offset (%d)\n", rc);
		return -EINVAL;
	}

	arm_pm_restart = brcmstb_reboot;

	return 0;
}

static const struct of_device_id of_match[] = {
	{ .compatible = "brcm,brcmstb-reboot", },
	{},
};

static struct platform_driver brcmstb_reboot_driver = {
	.probe = brcmstb_reboot_probe,
	.driver = {
		.name = "brcmstb-reboot",
		.owner = THIS_MODULE,
		.of_match_table = of_match,
	},
};

static int __init brcmstb_reboot_init(void)
{
	return platform_driver_probe(&brcmstb_reboot_driver,
					brcmstb_reboot_probe);
}
subsys_initcall(brcmstb_reboot_init);
