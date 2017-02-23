/*
 * Broadcom STB SoCs Bus Unit Interface controls
 *
 * Copyright (C) 2015, Broadcom Corporation
 */

#include <linux/kernel.h>
#include <linux/io.h>
#include <linux/of_address.h>
#include <linux/syscore_ops.h>

#define B15_CPU_CREDIT_REG_OFFSET	0x184
#define B53_CPU_CREDIT_REG_OFFSET	0x0b0
#define  CPU_CREDIT_REG_MCPx_WR_PAIRING_EN_MASK 0x70000000

static void __iomem *cpubiuctrl_base;
static unsigned int mcp_wr_pairing_en;
static unsigned int cpu_credit_reg_offset;

/*
 * HW7445-1920: On affected chips, disable MCP write pairing to improve
 * stability on long term stress test.
 */
static int __init mcp_write_pairing_set(void)
{
	u32 creds = 0;

	if (!cpubiuctrl_base)
		return -1;

	creds = __raw_readl(cpubiuctrl_base + cpu_credit_reg_offset);
	if (mcp_wr_pairing_en) {
		pr_info("MCP: Enabling write pairing\n");
		__raw_writel(creds | CPU_CREDIT_REG_MCPx_WR_PAIRING_EN_MASK,
			     cpubiuctrl_base + cpu_credit_reg_offset);
	} else if (creds & CPU_CREDIT_REG_MCPx_WR_PAIRING_EN_MASK) {
		pr_info("MCP: Disabling write pairing\n");
		__raw_writel(creds & ~CPU_CREDIT_REG_MCPx_WR_PAIRING_EN_MASK,
				cpubiuctrl_base + cpu_credit_reg_offset);
	} else {
		pr_info("MCP: Write pairing already disabled\n");
	}

	return 0;
}

static void __init setup_hifcpubiuctrl_regs(void)
{
	struct device_node *np, *cpu_dn;

	np = of_find_compatible_node(NULL, NULL, "brcm,brcmstb-cpu-biu-ctrl");
	if (!np)
		pr_err("missing BIU control node\n");

	cpubiuctrl_base = of_iomap(np, 0);
	if (!cpubiuctrl_base)
		pr_err("failed to remap BIU control base\n");

	mcp_wr_pairing_en = of_property_read_bool(np, "brcm,write-pairing");

	of_node_put(np);

	cpu_dn = of_get_cpu_node(0, NULL);
	if (!cpu_dn) {
		pr_err("failed to obtain CPU device node\n");
		return;
	}

	if (of_device_is_compatible(cpu_dn, "brcm,brahma-b15"))
		cpu_credit_reg_offset = B15_CPU_CREDIT_REG_OFFSET;
	else if (of_device_is_compatible(cpu_dn, "brcm,brahma-b53"))
		cpu_credit_reg_offset = B53_CPU_CREDIT_REG_OFFSET;
	else
		pr_err("unsupported CPU\n");
	of_node_put(cpu_dn);
}

#ifdef CONFIG_PM_SLEEP
static u32 cpu_credit_reg_dump;  /* for save/restore */

static int brcmstb_cpu_credit_reg_suspend(void)
{
	if (cpubiuctrl_base)
		cpu_credit_reg_dump =
			__raw_readl(cpubiuctrl_base + cpu_credit_reg_offset);
	return 0;
}

static void brcmstb_cpu_credit_reg_resume(void)
{
	if (cpubiuctrl_base)
		__raw_writel(cpu_credit_reg_dump,
				cpubiuctrl_base + cpu_credit_reg_offset);
}

static struct syscore_ops brcmstb_cpu_credit_syscore_ops = {
	.suspend = brcmstb_cpu_credit_reg_suspend,
	.resume = brcmstb_cpu_credit_reg_resume,
};
#endif


void __init brcmstb_biuctrl_init(void)
{
	setup_hifcpubiuctrl_regs();
	if (mcp_write_pairing_set())
		pr_err("MCP: Unable to disable write pairing!\n");

#ifdef CONFIG_PM_SLEEP
	register_syscore_ops(&brcmstb_cpu_credit_syscore_ops);
#endif
}
