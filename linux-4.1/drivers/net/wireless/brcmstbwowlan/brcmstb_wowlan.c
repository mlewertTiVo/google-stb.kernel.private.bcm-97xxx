/*
 * Wake-On-Wlan driver for Broadcom 7271 set top box SoC
 *
 * Copyright (c) 2017 Broadcom
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

#include <linux/kernel.h>
#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/platform_device.h>
#include <linux/of.h>
#include <linux/interrupt.h>

struct private_data {
	void __iomem *regs;
	int wowlan_irq;
	struct platform_device *pdev;
};

static irqreturn_t brcmstb_wowlan_isr(int irq, void *dev)
{
	struct private_data *pdata = dev;

	pm_wakeup_event(&pdata->pdev->dev, 0);
	dev_dbg(&pdata->pdev->dev,
		"#####wowlan_isr######\n\n");

	return 0;
}

static int brcmstb_wowlan_probe(struct platform_device *pdev)
{
	struct private_data *pdata;
	struct resource *res;
	int ret;

	pdata = devm_kzalloc(&pdev->dev, sizeof(*pdata), GFP_KERNEL);
	if (!pdata)
		return -ENOMEM;

	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
	pdata->regs = devm_ioremap_resource(&pdev->dev, res);
	if (IS_ERR(pdata->regs)) {
		dev_err(&pdev->dev, "couldn't map registers\n");
		return PTR_ERR(pdata->regs);
	}

	pdata->pdev = pdev;
	pdata->wowlan_irq = platform_get_irq(pdev, 1);

	if (pdata->wowlan_irq < 0) {
		dev_err(&pdev->dev, "couldn't obtain wowlan_irq\n");
		return -EINVAL;
	}

	ret = devm_request_irq(&pdev->dev, pdata->wowlan_irq,
		brcmstb_wowlan_isr, IRQF_NO_SUSPEND,
		"wlan_wol", pdata);
	if (ret) {
		dev_err(&pdev->dev, "wowlan_irq request failure\n");
		return ret;
	}

	device_set_wakeup_capable(&pdev->dev, true);
	device_set_wakeup_enable(&pdev->dev, true);
	enable_irq_wake(pdata->wowlan_irq);
	platform_set_drvdata(pdev, pdata);

	return 0;
}

static int brcmstb_wowlan_remove(struct platform_device *pdev)
{
	struct private_data *pdata = platform_get_drvdata(pdev);

	disable_irq_wake(pdata->wowlan_irq);
	device_set_wakeup_enable(&pdev->dev, false);
	device_set_wakeup_capable(&pdev->dev, false);
	platform_set_drvdata(pdev, NULL);

	return 0;
}

static const struct of_device_id brcmstb_wowlan_of_match[] = {
	{ .compatible = "brcm,bcm7271-wlan" },
	{ /* sentinel */ },
};

static struct platform_driver brcmstb_wowlan_driver = {
	.probe	= brcmstb_wowlan_probe,
	.remove = brcmstb_wowlan_remove,
	.driver = {
		.name = "bcm7271-wowlan",
		.of_match_table = brcmstb_wowlan_of_match,
	},
};
module_platform_driver(brcmstb_wowlan_driver);

MODULE_LICENSE("GPL");
MODULE_DESCRIPTION("BCM7271 Wake-On-WLAN Driver");
MODULE_AUTHOR("Broadcom");
