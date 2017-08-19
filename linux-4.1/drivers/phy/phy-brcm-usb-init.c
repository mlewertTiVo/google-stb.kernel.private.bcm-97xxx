/*
 * phy-brcm-usb-init.c - Broadcom USB Phy chip specific init functions
 *
 * Copyright (C) 2014-2017 Broadcom
 *
 * This software is licensed under the terms of the GNU General Public
 * License version 2, as published by the Free Software Foundation, and
 * may be copied, distributed, and modified under those terms.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 */

/*
 * This module contains USB PHY initialization for power up and S3 resume
 */

#include <linux/delay.h>
#include <linux/io.h>

#include <linux/soc/brcmstb/brcmstb.h>
#include "phy-brcm-usb-init.h"

/* Register definitions for the USB CTRL block */
#define USB_CTRL_SETUP			0x00
#define   USB_CTRL_SETUP_IOC_MASK			0x00000010
#define   USB_CTRL_SETUP_IPP_MASK			0x00000020
#define   USB_CTRL_SETUP_BABO_MASK			0x00000001
#define   USB_CTRL_SETUP_FNHW_MASK			0x00000002
#define   USB_CTRL_SETUP_FNBO_MASK			0x00000004
#define   USB_CTRL_SETUP_WABO_MASK			0x00000008
#define   USB_CTRL_SETUP_SCB_CLIENT_SWAP_MASK		0x00002000 /* option */
#define   USB_CTRL_SETUP_SCB1_EN_MASK			0x00004000 /* option */
#define   USB_CTRL_SETUP_SCB2_EN_MASK			0x00008000 /* option */
#define   USB_CTRL_SETUP_SS_EHCI64BIT_EN_MASK		0X00020000 /* option */
#define   USB_CTRL_SETUP_SS_EHCI64BIT_EN_VAR_MASK	0x00010000 /* option */
#define   USB_CTRL_SETUP_STRAP_IPP_SEL_MASK		0x02000000 /* option */
#define   USB_CTRL_SETUP_CC_DRD_MODE_ENABLE_MASK	0x04000000 /* option */
#define   USB_CTRL_SETUP_STRAP_CC_DRD_MODE_ENABLE_SEL_MASK 0x08000000 /* opt */
#define   USB_CTRL_SETUP_OC3_DISABLE_MASK		0xc0000000 /* option */
#define USB_CTRL_PLL_CTL		0x04
#define   USB_CTRL_PLL_CTL_PLL_SUSPEND_EN_MASK		0x08000000
#define   USB_CTRL_PLL_CTL_PLL_RESETB_MASK		0x40000000
#define   USB_CTRL_PLL_CTL_PLL_IDDQ_PWRDN_MASK		0x80000000 /* option */
#define USB_CTRL_EBRIDGE		0x0c
#define   USB_CTRL_EBRIDGE_ESTOP_SCB_REQ_MASK		0x00020000 /* option */
#define USB_CTRL_MDIO			0x14
#define USB_CTRL_MDIO2			0x18
#define USB_CTRL_UTMI_CTL_1		0x2c
#define   USB_CTRL_UTMI_CTL_1_POWER_UP_FSM_EN_MASK	0x00000800
#define   USB_CTRL_UTMI_CTL_1_POWER_UP_FSM_EN_P1_MASK	0x08000000
#define USB_CTRL_USB_PM			0x34
#define   USB_CTRL_USB_PM_BDC_SOFT_RESETB_MASK		0x00800000 /* option */
#define   USB_CTRL_USB_PM_XHC_SOFT_RESETB_MASK		0x00400000 /* option */
#define   USB_CTRL_USB_PM_XHC_SOFT_RESETB_VAR_MASK	0x40000000 /* option */
#define   USB_CTRL_USB_PM_USB_PWRDN_MASK		0x80000000 /* option */
#define   USB_CTRL_USB_PM_SOFT_RESET_MASK		0x40000000 /* option */
#define   USB_CTRL_USB_PM_USB20_HC_RESETB_MASK		0x30000000 /* option */
#define   USB_CTRL_USB_PM_USB20_HC_RESETB_VAR_MASK	0x00300000 /* option */
#define USB_CTRL_USB30_CTL1		0x60
#define   USB_CTRL_USB30_CTL1_PHY3_PLL_SEQ_START_MASK	0x00000010
#define   USB_CTRL_USB30_CTL1_PHY3_RESETB_MASK		0x00010000
#define   USB_CTRL_USB30_CTL1_XHC_SOFT_RESETB_MASK	0x00020000 /* option */
#define   USB_CTRL_USB30_CTL1_USB3_IOC_MASK		0x10000000 /* option */
#define   USB_CTRL_USB30_CTL1_USB3_IPP_MASK		0x20000000 /* option */
#define USB_CTRL_USB30_PCTL		0x70
#define   USB_CTRL_USB30_PCTL_PHY3_SOFT_RESETB_MASK	0x00000002
#define   USB_CTRL_USB30_PCTL_PHY3_SOFT_RESETB_P1_MASK	0x00020000
#define USB_CTRL_USB_DEVICE_CTL1	0x90
#define   USB_CTRL_USB_DEVICE_CTL1_PORT_MODE_MASK	0x00000003 /* option */

/* Register definitions for the XHCI EC block */
#define USB_XHCI_EC_IRAADR 0x658
#define USB_XHCI_EC_IRADAT 0x65c

enum brcm_family_type {
	BRCM_FAMILY_3390A0,
	BRCM_FAMILY_7250B0,
	BRCM_FAMILY_7271A0,
	BRCM_FAMILY_7364A0,
	BRCM_FAMILY_7366C0,
	BRCM_FAMILY_74371A0,
	BRCM_FAMILY_7439B0,
	BRCM_FAMILY_7445D0,
	BRCM_FAMILY_7260A0,
	BRCM_FAMILY_7278A0,
	BRCM_FAMILY_7425B0,
	BRCM_FAMILY_MIPS_GENERIC,
	BRCM_FAMILY_COUNT,
};

#define USB_BRCM_FAMILY(chip) \
	[BRCM_FAMILY_##chip] = __stringify(chip)

static const char *family_names[BRCM_FAMILY_COUNT] = {
	USB_BRCM_FAMILY(3390A0),
	USB_BRCM_FAMILY(7250B0),
	USB_BRCM_FAMILY(7271A0),
	USB_BRCM_FAMILY(7364A0),
	USB_BRCM_FAMILY(7366C0),
	USB_BRCM_FAMILY(74371A0),
	USB_BRCM_FAMILY(7439B0),
	USB_BRCM_FAMILY(7445D0),
	USB_BRCM_FAMILY(7260A0),
	USB_BRCM_FAMILY(7278A0),
	USB_BRCM_FAMILY(7425B0),
	USB_BRCM_FAMILY(MIPS_GENERIC),
};

enum {
	USB_CTRL_SETUP_SCB1_EN_SELECTOR,
	USB_CTRL_SETUP_SCB2_EN_SELECTOR,
	USB_CTRL_SETUP_SS_EHCI64BIT_EN_SELECTOR,
	USB_CTRL_SETUP_STRAP_IPP_SEL_SELECTOR,
	USB_CTRL_SETUP_OC3_DISABLE_SELECTOR,
	USB_CTRL_PLL_CTL_PLL_IDDQ_PWRDN_SELECTOR,
	USB_CTRL_EBRIDGE_ESTOP_SCB_REQ_SELECTOR,
	USB_CTRL_USB_PM_BDC_SOFT_RESETB_SELECTOR,
	USB_CTRL_USB_PM_XHC_SOFT_RESETB_SELECTOR,
	USB_CTRL_USB_PM_USB_PWRDN_SELECTOR,
	USB_CTRL_USB30_CTL1_XHC_SOFT_RESETB_SELECTOR,
	USB_CTRL_USB30_CTL1_USB3_IOC_SELECTOR,
	USB_CTRL_USB30_CTL1_USB3_IPP_SELECTOR,
	USB_CTRL_USB_DEVICE_CTL1_PORT_MODE_SELECTOR,
	USB_CTRL_USB_PM_SOFT_RESET_SELECTOR,
	USB_CTRL_SETUP_CC_DRD_MODE_ENABLE_SELECTOR,
	USB_CTRL_SETUP_STRAP_CC_DRD_MODE_ENABLE_SEL_SELECTOR,
	USB_CTRL_USB_PM_USB20_HC_RESETB_SELECTOR,
	USB_CTRL_SETUP_ENDIAN_SELECTOR,
	USB_CTRL_SELECTOR_COUNT,
};

#define USB_CTRL_REG(base, reg)	((void *)base + USB_CTRL_##reg)
#define USB_XHCI_EC_REG(base, reg) ((void *)base + USB_XHCI_EC_##reg)
#define USB_CTRL_MASK(reg, field) \
	USB_CTRL_##reg##_##field##_MASK
#define USB_CTRL_MASK_FAMILY(params, reg, field)			\
	(params->usb_reg_bits_map[USB_CTRL_##reg##_##field##_SELECTOR])

#define USB_CTRL_SET_FAMILY(params, reg, field)	\
	usb_ctrl_set_family(params, USB_CTRL_##reg,	\
			USB_CTRL_##reg##_##field##_SELECTOR)
#define USB_CTRL_UNSET_FAMILY(params, reg, field)	\
	usb_ctrl_unset_family(params, USB_CTRL_##reg,	\
		USB_CTRL_##reg##_##field##_SELECTOR)
#define USB_CTRL_SET(base, reg, field)	\
	usb_ctrl_set(USB_CTRL_REG(base, reg),	\
		USB_CTRL_##reg##_##field##_MASK)
#define USB_CTRL_UNSET(base, reg, field)	\
	usb_ctrl_unset(USB_CTRL_REG(base, reg),	\
		USB_CTRL_##reg##_##field##_MASK)

#define MDIO_USB2	0
#define MDIO_USB3	(1 << 31)

#define USB_CTRL_SETUP_ENDIAN_BITS (	\
		USB_CTRL_MASK(SETUP, BABO) |	\
		USB_CTRL_MASK(SETUP, FNHW) |	\
		USB_CTRL_MASK(SETUP, FNBO) |	\
		USB_CTRL_MASK(SETUP, WABO))

#ifdef __LITTLE_ENDIAN
#define ENDIAN_SETTINGS (			\
		USB_CTRL_MASK(SETUP, BABO) |	\
		USB_CTRL_MASK(SETUP, FNHW))
#else
#define ENDIAN_SETTINGS (			\
		USB_CTRL_MASK(SETUP, FNHW) |	\
		USB_CTRL_MASK(SETUP, FNBO) |	\
		USB_CTRL_MASK(SETUP, WABO))
#endif

struct id_to_type {
	u32 id;
	int type;
};

static const struct id_to_type id_to_type_table_arm[] = {
	{ 0x33900000, BRCM_FAMILY_3390A0 },
	{ 0x72500010, BRCM_FAMILY_7250B0 },
	{ 0x72600000, BRCM_FAMILY_7260A0 },
	{ 0x72680000, BRCM_FAMILY_7271A0 },
	{ 0x72710000, BRCM_FAMILY_7271A0 },
	{ 0x73640000, BRCM_FAMILY_7364A0 },
	{ 0x73660020, BRCM_FAMILY_7366C0 },
	{ 0x07437100, BRCM_FAMILY_74371A0 },
	{ 0x74390010, BRCM_FAMILY_7439B0 },
	{ 0x74450030, BRCM_FAMILY_7445D0 },
	{ 0x72780000, BRCM_FAMILY_7278A0 },
	{ 0, BRCM_FAMILY_7271A0 }, /* default */
};

static const struct id_to_type id_to_type_table_mips[] = {
	{ 0x74250010, BRCM_FAMILY_7425B0 },
	{ 0x74350010, BRCM_FAMILY_7425B0 },
	{ 0, BRCM_FAMILY_MIPS_GENERIC },
};

static const u32
usb_reg_bits_map_table[BRCM_FAMILY_COUNT][USB_CTRL_SELECTOR_COUNT] = {
	/* 3390B0 */
	[BRCM_FAMILY_3390A0] = {
		USB_CTRL_SETUP_SCB1_EN_MASK,
		USB_CTRL_SETUP_SCB2_EN_MASK,
		USB_CTRL_SETUP_SS_EHCI64BIT_EN_MASK,
		USB_CTRL_SETUP_STRAP_IPP_SEL_MASK,
		USB_CTRL_SETUP_OC3_DISABLE_MASK,
		0, /* USB_CTRL_PLL_CTL_PLL_IDDQ_PWRDN_MASK */
		USB_CTRL_EBRIDGE_ESTOP_SCB_REQ_MASK,
		0, /* USB_CTRL_USB_PM_BDC_SOFT_RESETB_MASK */
		USB_CTRL_USB_PM_XHC_SOFT_RESETB_MASK,
		USB_CTRL_USB_PM_USB_PWRDN_MASK,
		0, /* USB_CTRL_USB30_CTL1_XHC_SOFT_RESETB_MASK */
		0, /* USB_CTRL_USB30_CTL1_USB3_IOC_MASK */
		0, /* USB_CTRL_USB30_CTL1_USB3_IPP_MASK */
		USB_CTRL_USB_DEVICE_CTL1_PORT_MODE_MASK,
		0, /* USB_CTRL_USB_PM_SOFT_RESET_MASK */
		0, /* USB_CTRL_SETUP_CC_DRD_MODE_ENABLE_MASK */
		0, /* USB_CTRL_SETUP_STRAP_CC_DRD_MODE_ENABLE_SEL_MASK */
		USB_CTRL_USB_PM_USB20_HC_RESETB_VAR_MASK,
		ENDIAN_SETTINGS, /* USB_CTRL_SETUP ENDIAN bits */
	},
	/* 7250b0 */
	[BRCM_FAMILY_7250B0] = {
		USB_CTRL_SETUP_SCB1_EN_MASK,
		USB_CTRL_SETUP_SCB2_EN_MASK,
		USB_CTRL_SETUP_SS_EHCI64BIT_EN_MASK,
		0, /* USB_CTRL_SETUP_STRAP_IPP_SEL_MASK */
		USB_CTRL_SETUP_OC3_DISABLE_MASK,
		USB_CTRL_PLL_CTL_PLL_IDDQ_PWRDN_MASK,
		USB_CTRL_EBRIDGE_ESTOP_SCB_REQ_MASK,
		0, /* USB_CTRL_USB_PM_BDC_SOFT_RESETB_MASK */
		USB_CTRL_USB_PM_XHC_SOFT_RESETB_VAR_MASK,
		0, /* USB_CTRL_USB_PM_USB_PWRDN_MASK */
		0, /* USB_CTRL_USB30_CTL1_XHC_SOFT_RESETB_MASK */
		0, /* USB_CTRL_USB30_CTL1_USB3_IOC_MASK */
		0, /* USB_CTRL_USB30_CTL1_USB3_IPP_MASK */
		0, /* USB_CTRL_USB_DEVICE_CTL1_PORT_MODE_MASK */
		0, /* USB_CTRL_USB_PM_SOFT_RESET_MASK */
		0, /* USB_CTRL_SETUP_CC_DRD_MODE_ENABLE_MASK */
		0, /* USB_CTRL_SETUP_STRAP_CC_DRD_MODE_ENABLE_SEL_MASK */
		USB_CTRL_USB_PM_USB20_HC_RESETB_MASK,
		ENDIAN_SETTINGS, /* USB_CTRL_SETUP ENDIAN bits */
	},
	/* 7271a0 */
	[BRCM_FAMILY_7271A0] = {
		0, /* USB_CTRL_SETUP_SCB1_EN_MASK */
		0, /* USB_CTRL_SETUP_SCB2_EN_MASK */
		USB_CTRL_SETUP_SS_EHCI64BIT_EN_MASK,
		USB_CTRL_SETUP_STRAP_IPP_SEL_MASK,
		USB_CTRL_SETUP_OC3_DISABLE_MASK,
		0, /* USB_CTRL_PLL_CTL_PLL_IDDQ_PWRDN_MASK */
		USB_CTRL_EBRIDGE_ESTOP_SCB_REQ_MASK,
		USB_CTRL_USB_PM_BDC_SOFT_RESETB_MASK,
		USB_CTRL_USB_PM_XHC_SOFT_RESETB_MASK,
		USB_CTRL_USB_PM_USB_PWRDN_MASK,
		0, /* USB_CTRL_USB30_CTL1_XHC_SOFT_RESETB_MASK */
		0, /* USB_CTRL_USB30_CTL1_USB3_IOC_MASK */
		0, /* USB_CTRL_USB30_CTL1_USB3_IPP_MASK */
		USB_CTRL_USB_DEVICE_CTL1_PORT_MODE_MASK,
		USB_CTRL_USB_PM_SOFT_RESET_MASK,
		USB_CTRL_SETUP_CC_DRD_MODE_ENABLE_MASK,
		USB_CTRL_SETUP_STRAP_CC_DRD_MODE_ENABLE_SEL_MASK,
		USB_CTRL_USB_PM_USB20_HC_RESETB_VAR_MASK,
		ENDIAN_SETTINGS, /* USB_CTRL_SETUP ENDIAN bits */
	},
	/* 7364a0 */
	[BRCM_FAMILY_7364A0] = {
		USB_CTRL_SETUP_SCB1_EN_MASK,
		USB_CTRL_SETUP_SCB2_EN_MASK,
		USB_CTRL_SETUP_SS_EHCI64BIT_EN_MASK,
		0, /* USB_CTRL_SETUP_STRAP_IPP_SEL_MASK */
		USB_CTRL_SETUP_OC3_DISABLE_MASK,
		USB_CTRL_PLL_CTL_PLL_IDDQ_PWRDN_MASK,
		USB_CTRL_EBRIDGE_ESTOP_SCB_REQ_MASK,
		0, /* USB_CTRL_USB_PM_BDC_SOFT_RESETB_MASK */
		USB_CTRL_USB_PM_XHC_SOFT_RESETB_VAR_MASK,
		0, /* USB_CTRL_USB_PM_USB_PWRDN_MASK */
		0, /* USB_CTRL_USB30_CTL1_XHC_SOFT_RESETB_MASK */
		0, /* USB_CTRL_USB30_CTL1_USB3_IOC_MASK */
		0, /* USB_CTRL_USB30_CTL1_USB3_IPP_MASK */
		0, /* USB_CTRL_USB_DEVICE_CTL1_PORT_MODE_MASK */
		0, /* USB_CTRL_USB_PM_SOFT_RESET_MASK */
		0, /* USB_CTRL_SETUP_CC_DRD_MODE_ENABLE_MASK */
		0, /* USB_CTRL_SETUP_STRAP_CC_DRD_MODE_ENABLE_SEL_MASK */
		USB_CTRL_USB_PM_USB20_HC_RESETB_MASK,
		ENDIAN_SETTINGS, /* USB_CTRL_SETUP ENDIAN bits */
	},
	/* 7366c0 */
	[BRCM_FAMILY_7366C0] = {
		USB_CTRL_SETUP_SCB1_EN_MASK,
		USB_CTRL_SETUP_SCB2_EN_MASK,
		USB_CTRL_SETUP_SS_EHCI64BIT_EN_MASK,
		0, /* USB_CTRL_SETUP_STRAP_IPP_SEL_MASK */
		USB_CTRL_SETUP_OC3_DISABLE_MASK,
		0, /* USB_CTRL_PLL_CTL_PLL_IDDQ_PWRDN_MASK */
		USB_CTRL_EBRIDGE_ESTOP_SCB_REQ_MASK,
		0, /* USB_CTRL_USB_PM_BDC_SOFT_RESETB_MASK */
		USB_CTRL_USB_PM_XHC_SOFT_RESETB_VAR_MASK,
		USB_CTRL_USB_PM_USB_PWRDN_MASK,
		0, /* USB_CTRL_USB30_CTL1_XHC_SOFT_RESETB_MASK */
		0, /* USB_CTRL_USB30_CTL1_USB3_IOC_MASK */
		0, /* USB_CTRL_USB30_CTL1_USB3_IPP_MASK */
		0, /* USB_CTRL_USB_DEVICE_CTL1_PORT_MODE_MASK */
		0, /* USB_CTRL_USB_PM_SOFT_RESET_MASK */
		0, /* USB_CTRL_SETUP_CC_DRD_MODE_ENABLE_MASK */
		0, /* USB_CTRL_SETUP_STRAP_CC_DRD_MODE_ENABLE_SEL_MASK */
		USB_CTRL_USB_PM_USB20_HC_RESETB_MASK,
		ENDIAN_SETTINGS, /* USB_CTRL_SETUP ENDIAN bits */
	},
	/* 74371A0 */
	[BRCM_FAMILY_74371A0] = {
		USB_CTRL_SETUP_SCB1_EN_MASK,
		USB_CTRL_SETUP_SCB2_EN_MASK,
		USB_CTRL_SETUP_SS_EHCI64BIT_EN_VAR_MASK,
		0, /* USB_CTRL_SETUP_STRAP_IPP_SEL_MASK */
		0, /* USB_CTRL_SETUP_OC3_DISABLE_MASK */
		USB_CTRL_PLL_CTL_PLL_IDDQ_PWRDN_MASK,
		0, /* USB_CTRL_EBRIDGE_ESTOP_SCB_REQ_MASK */
		0, /* USB_CTRL_USB_PM_BDC_SOFT_RESETB_MASK */
		0, /* USB_CTRL_USB_PM_XHC_SOFT_RESETB_MASK */
		0, /* USB_CTRL_USB_PM_USB_PWRDN_MASK */
		USB_CTRL_USB30_CTL1_XHC_SOFT_RESETB_MASK,
		USB_CTRL_USB30_CTL1_USB3_IOC_MASK,
		USB_CTRL_USB30_CTL1_USB3_IPP_MASK,
		0, /* USB_CTRL_USB_DEVICE_CTL1_PORT_MODE_MASK */
		0, /* USB_CTRL_USB_PM_SOFT_RESET_MASK */
		0, /* USB_CTRL_SETUP_CC_DRD_MODE_ENABLE_MASK */
		0, /* USB_CTRL_SETUP_STRAP_CC_DRD_MODE_ENABLE_SEL_MASK */
		0, /* USB_CTRL_USB_PM_USB20_HC_RESETB_MASK */
		ENDIAN_SETTINGS, /* USB_CTRL_SETUP ENDIAN bits */
	},
	/* 7439B0 */
	[BRCM_FAMILY_7439B0] = {
		USB_CTRL_SETUP_SCB1_EN_MASK,
		USB_CTRL_SETUP_SCB2_EN_MASK,
		USB_CTRL_SETUP_SS_EHCI64BIT_EN_MASK,
		USB_CTRL_SETUP_STRAP_IPP_SEL_MASK,
		USB_CTRL_SETUP_OC3_DISABLE_MASK,
		0, /* USB_CTRL_PLL_CTL_PLL_IDDQ_PWRDN_MASK */
		0, /* USB_CTRL_EBRIDGE_ESTOP_SCB_REQ_MASK */
		USB_CTRL_USB_PM_BDC_SOFT_RESETB_MASK,
		USB_CTRL_USB_PM_XHC_SOFT_RESETB_MASK,
		USB_CTRL_USB_PM_USB_PWRDN_MASK,
		0, /* USB_CTRL_USB30_CTL1_XHC_SOFT_RESETB_MASK */
		0, /* USB_CTRL_USB30_CTL1_USB3_IOC_MASK */
		0, /* USB_CTRL_USB30_CTL1_USB3_IPP_MASK */
		USB_CTRL_USB_DEVICE_CTL1_PORT_MODE_MASK,
		0, /* USB_CTRL_USB_PM_SOFT_RESET_MASK */
		0, /* USB_CTRL_SETUP_CC_DRD_MODE_ENABLE_MASK */
		0, /* USB_CTRL_SETUP_STRAP_CC_DRD_MODE_ENABLE_SEL_MASK */
		USB_CTRL_USB_PM_USB20_HC_RESETB_VAR_MASK,
		ENDIAN_SETTINGS, /* USB_CTRL_SETUP ENDIAN bits */
	},
	/* 7445d0 */
	[BRCM_FAMILY_7445D0] = {
		USB_CTRL_SETUP_SCB1_EN_MASK,
		USB_CTRL_SETUP_SCB2_EN_MASK,
		USB_CTRL_SETUP_SS_EHCI64BIT_EN_VAR_MASK,
		0, /* USB_CTRL_SETUP_STRAP_IPP_SEL_MASK */
		USB_CTRL_SETUP_OC3_DISABLE_MASK,
		USB_CTRL_PLL_CTL_PLL_IDDQ_PWRDN_MASK,
		0, /* USB_CTRL_EBRIDGE_ESTOP_SCB_REQ_MASK */
		0, /* USB_CTRL_USB_PM_BDC_SOFT_RESETB_MASK */
		0, /* USB_CTRL_USB_PM_XHC_SOFT_RESETB_MASK */
		0, /* USB_CTRL_USB_PM_USB_PWRDN_MASK */
		USB_CTRL_USB30_CTL1_XHC_SOFT_RESETB_MASK,
		0, /* USB_CTRL_USB30_CTL1_USB3_IOC_MASK */
		0, /* USB_CTRL_USB30_CTL1_USB3_IPP_MASK */
		0, /* USB_CTRL_USB_DEVICE_CTL1_PORT_MODE_MASK */
		0, /* USB_CTRL_USB_PM_SOFT_RESET_MASK */
		0, /* USB_CTRL_SETUP_CC_DRD_MODE_ENABLE_MASK */
		0, /* USB_CTRL_SETUP_STRAP_CC_DRD_MODE_ENABLE_SEL_MASK */
		USB_CTRL_USB_PM_USB20_HC_RESETB_VAR_MASK,
		ENDIAN_SETTINGS, /* USB_CTRL_SETUP ENDIAN bits */
	},
	/* 7260a0 */
	[BRCM_FAMILY_7260A0] = {
		0, /* USB_CTRL_SETUP_SCB1_EN_MASK */
		0, /* USB_CTRL_SETUP_SCB2_EN_MASK */
		USB_CTRL_SETUP_SS_EHCI64BIT_EN_MASK,
		USB_CTRL_SETUP_STRAP_IPP_SEL_MASK,
		USB_CTRL_SETUP_OC3_DISABLE_MASK,
		0, /* USB_CTRL_PLL_CTL_PLL_IDDQ_PWRDN_MASK */
		USB_CTRL_EBRIDGE_ESTOP_SCB_REQ_MASK,
		USB_CTRL_USB_PM_BDC_SOFT_RESETB_MASK,
		USB_CTRL_USB_PM_XHC_SOFT_RESETB_MASK,
		USB_CTRL_USB_PM_USB_PWRDN_MASK,
		0, /* USB_CTRL_USB30_CTL1_XHC_SOFT_RESETB_MASK */
		0, /* USB_CTRL_USB30_CTL1_USB3_IOC_MASK */
		0, /* USB_CTRL_USB30_CTL1_USB3_IPP_MASK */
		USB_CTRL_USB_DEVICE_CTL1_PORT_MODE_MASK,
		USB_CTRL_USB_PM_SOFT_RESET_MASK,
		USB_CTRL_SETUP_CC_DRD_MODE_ENABLE_MASK,
		USB_CTRL_SETUP_STRAP_CC_DRD_MODE_ENABLE_SEL_MASK,
		USB_CTRL_USB_PM_USB20_HC_RESETB_VAR_MASK,
		ENDIAN_SETTINGS, /* USB_CTRL_SETUP ENDIAN bits */
	},
	/* 7278a0 */
	[BRCM_FAMILY_7278A0] = {
		0, /* USB_CTRL_SETUP_SCB1_EN_MASK */
		0, /* USB_CTRL_SETUP_SCB2_EN_MASK */
		0, /*USB_CTRL_SETUP_SS_EHCI64BIT_EN_MASK */
		USB_CTRL_SETUP_STRAP_IPP_SEL_MASK,
		USB_CTRL_SETUP_OC3_DISABLE_MASK,
		0, /* USB_CTRL_PLL_CTL_PLL_IDDQ_PWRDN_MASK */
		USB_CTRL_EBRIDGE_ESTOP_SCB_REQ_MASK,
		USB_CTRL_USB_PM_BDC_SOFT_RESETB_MASK,
		USB_CTRL_USB_PM_XHC_SOFT_RESETB_MASK,
		USB_CTRL_USB_PM_USB_PWRDN_MASK,
		0, /* USB_CTRL_USB30_CTL1_XHC_SOFT_RESETB_MASK */
		0, /* USB_CTRL_USB30_CTL1_USB3_IOC_MASK */
		0, /* USB_CTRL_USB30_CTL1_USB3_IPP_MASK */
		USB_CTRL_USB_DEVICE_CTL1_PORT_MODE_MASK,
		USB_CTRL_USB_PM_SOFT_RESET_MASK,
		0, /* USB_CTRL_SETUP_CC_DRD_MODE_ENABLE_MASK */
		0, /* USB_CTRL_SETUP_STRAP_CC_DRD_MODE_ENABLE_SEL_MASK */
		0, /* USB_CTRL_USB_PM_USB20_HC_RESETB_MASK */
		0, /* USB_CTRL_SETUP ENDIAN bits */
	},
	/* 7425b0 */
	[BRCM_FAMILY_7425B0] = {
		0, /* USB_CTRL_SETUP_SCB1_EN_MASK */
		0, /* USB_CTRL_SETUP_SCB2_EN_MASK */
		0, /* USB_CTRL_SETUP_SS_EHCI64BIT_EN_MASK */
		0, /* USB_CTRL_SETUP_STRAP_IPP_SEL_MASK */
		0, /* USB_CTRL_SETUP_OC3_DISABLE_MASK */
		0, /* USB_CTRL_PLL_CTL_PLL_IDDQ_PWRDN_MASK */
		0, /* USB_CTRL_EBRIDGE_ESTOP_SCB_REQ_MASK */
		0, /* USB_CTRL_USB_PM_BDC_SOFT_RESETB_MASK */
		0, /* USB_CTRL_USB_PM_XHC_SOFT_RESETB_MASK */
		0, /* USB_CTRL_USB_PM_USB_PWRDN_MASK */
		0, /* USB_CTRL_USB30_CTL1_XHC_SOFT_RESETB_MASK */
		0, /* USB_CTRL_USB30_CTL1_USB3_IOC_MASK */
		0, /* USB_CTRL_USB30_CTL1_USB3_IPP_MASK */
		0, /* USB_CTRL_USB_DEVICE_CTL1_PORT_MODE_MASK */
		0, /* USB_CTRL_USB_PM_SOFT_RESET_MASK */
		0, /* USB_CTRL_SETUP_CC_DRD_MODE_ENABLE_MASK */
		0, /* USB_CTRL_SETUP_STRAP_CC_DRD_MODE_ENABLE_SEL_MASK */
		0, /* USB_CTRL_USB_PM_USB20_HC_RESETB_MASK */
		ENDIAN_SETTINGS, /* USB_CTRL_SETUP ENDIAN bits */
	},
	[BRCM_FAMILY_MIPS_GENERIC] = {
		0, /* USB_CTRL_SETUP_SCB1_EN_MASK */
		0, /* USB_CTRL_SETUP_SCB2_EN_MASK */
		0, /* USB_CTRL_SETUP_SS_EHCI64BIT_EN_MASK */
		0, /* USB_CTRL_SETUP_STRAP_IPP_SEL_MASK */
		0, /* USB_CTRL_SETUP_OC3_DISABLE_MASK */
		0, /* USB_CTRL_PLL_CTL_PLL_IDDQ_PWRDN_MASK */
		0, /* USB_CTRL_EBRIDGE_ESTOP_SCB_REQ_MASK */
		0, /* USB_CTRL_USB_PM_BDC_SOFT_RESETB_MASK */
		0, /* USB_CTRL_USB_PM_XHC_SOFT_RESETB_MASK */
		0, /* USB_CTRL_USB_PM_USB_PWRDN_MASK */
		0, /* USB_CTRL_USB30_CTL1_XHC_SOFT_RESETB_MASK */
		0, /* USB_CTRL_USB30_CTL1_USB3_IOC_MASK */
		0, /* USB_CTRL_USB30_CTL1_USB3_IPP_MASK */
		0, /* USB_CTRL_USB_DEVICE_CTL1_PORT_MODE_MASK */
		0, /* USB_CTRL_USB_PM_SOFT_RESET_MASK */
		0, /* USB_CTRL_SETUP_CC_DRD_MODE_ENABLE_MASK */
		0, /* USB_CTRL_SETUP_STRAP_CC_DRD_MODE_ENABLE_SEL_MASK */
		0, /* USB_CTRL_USB_PM_USB20_HC_RESETB_MASK */
		ENDIAN_SETTINGS, /* USB_CTRL_SETUP ENDIAN bits */
	},
};

static inline u32 brcmusb_readl(void __iomem *addr)
{
	/*
	 * MIPS endianness is configured by boot strap, which also reverses all
	 * bus endianness (i.e., big-endian CPU + big endian bus ==> native
	 * endian I/O).
	 *
	 * Other architectures (e.g., ARM) either do not support big endian, or
	 * else leave I/O in little endian mode.
	 */
	if (IS_ENABLED(CONFIG_MIPS) && IS_ENABLED(__BIG_ENDIAN))
		return __raw_readl(addr);
	else
		return readl_relaxed(addr);
}

static inline void brcmusb_writel(u32 val, void __iomem *addr)
{
	/* See brcmnand_readl() comments */
	if (IS_ENABLED(CONFIG_MIPS) && IS_ENABLED(__BIG_ENDIAN))
		__raw_writel(val, addr);
	else
		writel_relaxed(val, addr);
}

static inline void usb_ctrl_unset(void __iomem *reg, u32 mask)
{
	brcmusb_writel(brcmusb_readl(reg) & ~(mask), reg);
};

static inline void usb_ctrl_set(void __iomem *reg, u32 mask)
{
	brcmusb_writel(brcmusb_readl(reg) | (mask), reg);
};

static inline
void usb_ctrl_unset_family(struct brcm_usb_init_params *params,
			u32 reg, u32 field)
{
	u32 mask;

	mask = params->usb_reg_bits_map[field];
	usb_ctrl_unset(params->ctrl_regs + reg, mask);
};

static inline
void usb_ctrl_set_family(struct brcm_usb_init_params *params,
			u32 reg, u32 field)
{
	u32 mask;

	mask = params->usb_reg_bits_map[field];
	usb_ctrl_set(params->ctrl_regs + reg, mask);
};


static u32 usb_mdio_read(void __iomem *ctrl_base, u32 reg, int mode)
{
	u32 data;

	data = (reg << 16) | mode;
	brcmusb_writel(data, USB_CTRL_REG(ctrl_base, MDIO));
	data |= (1 << 24);
	brcmusb_writel(data, USB_CTRL_REG(ctrl_base, MDIO));
	data &= ~(1 << 24);
	udelay(10);
	brcmusb_writel(data, USB_CTRL_REG(ctrl_base, MDIO));
	udelay(10);

	return brcmusb_readl(USB_CTRL_REG(ctrl_base, MDIO2)) & 0xffff;
}

static void usb_mdio_write(void __iomem *ctrl_base, u32 reg,
			u32 val, int mode)
{
	u32 data;

	data = (reg << 16) | val | mode;
	brcmusb_writel(data, USB_CTRL_REG(ctrl_base, MDIO));
	data |= (1 << 25);
	brcmusb_writel(data, USB_CTRL_REG(ctrl_base, MDIO));
	data &= ~(1 << 25);
	udelay(10);
	brcmusb_writel(data, USB_CTRL_REG(ctrl_base, MDIO));
}


static void usb_phy_ldo_fix(void __iomem *ctrl_base)
{
	/* first disable FSM but also leave it that way */
	/* to allow normal suspend/resume */
	USB_CTRL_UNSET(ctrl_base, UTMI_CTL_1, POWER_UP_FSM_EN);
	USB_CTRL_UNSET(ctrl_base, UTMI_CTL_1, POWER_UP_FSM_EN_P1);

	/* reset USB 2.0 PLL */
	USB_CTRL_UNSET(ctrl_base, PLL_CTL, PLL_RESETB);
	msleep(1);
	USB_CTRL_SET(ctrl_base, PLL_CTL, PLL_RESETB);
	msleep(10);

}


static void usb2_eye_fix(void __iomem *ctrl_base)
{
	/* Increase USB 2.0 TX level to meet spec requirement */
	usb_mdio_write(ctrl_base, 0x1f, 0x80a0, MDIO_USB2);
	usb_mdio_write(ctrl_base, 0x0a, 0xc6a0, MDIO_USB2);
}


static void usb3_pll_fix(void __iomem *ctrl_base)
{
	/* Set correct window for PLL lock detect */
	usb_mdio_write(ctrl_base, 0x1f, 0x8000, MDIO_USB3);
	usb_mdio_write(ctrl_base, 0x07, 0x1503, MDIO_USB3);
}


static void usb3_enable_pipe_reset(void __iomem *ctrl_base)
{
	u32 val;

	/* Re-enable USB 3.0 pipe reset */
	usb_mdio_write(ctrl_base, 0x1f, 0x8000, MDIO_USB3);
	val = usb_mdio_read(ctrl_base, 0x0f, MDIO_USB3) | 0x200;
	usb_mdio_write(ctrl_base, 0x0f, val, MDIO_USB3);
}


static void usb3_enable_sigdet(void __iomem *ctrl_base)
{
	u32 val, ofs;
	int ii;

	ofs = 0;
	for (ii = 0; ii < 2; ++ii) {
		/* Set correct default for sigdet */
		usb_mdio_write(ctrl_base, 0x1f, (0x8080 + ofs), MDIO_USB3);
		val = usb_mdio_read(ctrl_base, 0x05, MDIO_USB3);
		val = (val & ~0x800f) | 0x800d;
		usb_mdio_write(ctrl_base, 0x05, val, MDIO_USB3);
		ofs = 0x1000;
	}
}


static void usb3_enable_skip_align(void __iomem *ctrl_base)
{
	u32 val, ofs;
	int ii;

	ofs = 0;
	for (ii = 0; ii < 2; ++ii) {
		/* Set correct default for SKIP align */
		usb_mdio_write(ctrl_base, 0x1f, (0x8060 + ofs), MDIO_USB3);
		val = usb_mdio_read(ctrl_base, 0x01, MDIO_USB3) | 0x200;
		usb_mdio_write(ctrl_base, 0x01, val, MDIO_USB3);
		ofs = 0x1000;
	}
}


static void usb3_unfreeze_aeq(void __iomem *ctrl_base)
{
	u32 val, ofs;
	int ii;

	ofs = 0;
	for (ii = 0; ii < 2; ++ii) {
		/* Let EQ freeze after TSEQ */
		usb_mdio_write(ctrl_base, 0x1f, (0x80e0 + ofs), MDIO_USB3);
		val = usb_mdio_read(ctrl_base, 0x01, MDIO_USB3);
		val &= ~0x0008;
		usb_mdio_write(ctrl_base, 0x01, val, MDIO_USB3);
		ofs = 0x1000;
	}
}


static void usb3_pll_54Mhz(struct brcm_usb_init_params *params)
{
	u32 ofs;
	int ii;
	void __iomem *ctrl_base = params->ctrl_regs;

	/*
	 * On newer B53 based SoC's, the reference clock for the
	 * 3.0 PLL has been changed from 50MHz to 54MHz so the
	 * PLL needs to be reprogrammed.
	 * See SWLINUX-4006.
	 *
	 * On the 7364C0, the reference clock for the
	 * 3.0 PLL has been changed from 50MHz to 54MHz to
	 * work around a MOCA issue.
	 * See SWLINUX-4169.
	 */
	switch (params->selected_family) {
	case BRCM_FAMILY_3390A0:
	case BRCM_FAMILY_7250B0:
	case BRCM_FAMILY_7366C0:
	case BRCM_FAMILY_74371A0:
	case BRCM_FAMILY_7439B0:
	case BRCM_FAMILY_7445D0:
	case BRCM_FAMILY_7260A0:
		return;
	case BRCM_FAMILY_7364A0:
		if (BRCM_REV(params->family_id) < 0x20)
			return;
		break;
	}

	/* set USB 3.0 PLL to accept 54Mhz reference clock */
	USB_CTRL_UNSET(ctrl_base, USB30_CTL1, PHY3_PLL_SEQ_START);

	usb_mdio_write(ctrl_base, 0x1f, 0x8000, MDIO_USB3);
	usb_mdio_write(ctrl_base, 0x10, 0x5784, MDIO_USB3);
	usb_mdio_write(ctrl_base, 0x11, 0x01d0, MDIO_USB3);
	usb_mdio_write(ctrl_base, 0x12, 0x1DE8, MDIO_USB3);
	usb_mdio_write(ctrl_base, 0x13, 0xAA80, MDIO_USB3);
	usb_mdio_write(ctrl_base, 0x14, 0x8826, MDIO_USB3);
	usb_mdio_write(ctrl_base, 0x15, 0x0044, MDIO_USB3);
	usb_mdio_write(ctrl_base, 0x16, 0x8000, MDIO_USB3);
	usb_mdio_write(ctrl_base, 0x17, 0x0851, MDIO_USB3);
	usb_mdio_write(ctrl_base, 0x18, 0x0000, MDIO_USB3);

	/* both ports */
	ofs = 0;
	for (ii = 0; ii < 2; ++ii) {
		usb_mdio_write(ctrl_base, 0x1f, (0x8040 + ofs), MDIO_USB3);
		usb_mdio_write(ctrl_base, 0x03, 0x0090, MDIO_USB3);
		usb_mdio_write(ctrl_base, 0x04, 0x0134, MDIO_USB3);
		usb_mdio_write(ctrl_base, 0x1f, (0x8020 + ofs), MDIO_USB3);
		usb_mdio_write(ctrl_base, 0x01, 0x00e2, MDIO_USB3);
		ofs = 0x1000;
	}

	/* restart PLL sequence */
	USB_CTRL_SET(ctrl_base, USB30_CTL1, PHY3_PLL_SEQ_START);
	msleep(1);
}


static void usb3_ssc_enable(void __iomem *ctrl_base)
{
	u32 val;

	/* Enable USB 3.0 TX spread spectrum */
	usb_mdio_write(ctrl_base, 0x1f, 0x8040, MDIO_USB3);
	val = usb_mdio_read(ctrl_base, 0x01, MDIO_USB3) | 0xf;
	usb_mdio_write(ctrl_base, 0x01, val, MDIO_USB3);

	/* Currently, USB 3.0 SSC is enabled via port 0 MDIO registers,
	 * which should have been adequate. However, due to a bug in the
	 * USB 3.0 PHY, it must be enabled via both ports (HWUSB3DVT-26).
	 */
	usb_mdio_write(ctrl_base, 0x1f, 0x9040, MDIO_USB3);
	val = usb_mdio_read(ctrl_base, 0x01, MDIO_USB3) | 0xf;
	usb_mdio_write(ctrl_base, 0x01, val, MDIO_USB3);
}


static void usb3_phy_workarounds(struct brcm_usb_init_params *params)
{
	void __iomem *ctrl_base = params->ctrl_regs;

	usb3_pll_fix(ctrl_base);
	usb3_pll_54Mhz(params);
	usb3_ssc_enable(ctrl_base);
	usb3_enable_pipe_reset(ctrl_base);
	usb3_enable_sigdet(ctrl_base);
	usb3_enable_skip_align(ctrl_base);
	usb3_unfreeze_aeq(ctrl_base);
}


static void memc_fix(struct brcm_usb_init_params *params)
{
	u32 prid;

	if (params->selected_family != BRCM_FAMILY_7445D0)
		return;
	/*
	 * This is a workaround for HW7445-1869 where a DMA write ends up
	 * doing a read pre-fetch after the end of the DMA buffer. This
	 * causes a problem when the DMA buffer is at the end of physical
	 * memory, causing the pre-fetch read to access non-existent memory,
	 * and the chip bondout has MEMC2 disabled. When the pre-fetch read
	 * tries to use the disabled MEMC2, it hangs the bus. The workaround
	 * is to disable MEMC2 access in the usb controller which avoids
	 * the hang.
	 */

	prid = params->product_id & 0xfffff000;
	switch (prid) {
	case 0x72520000:
	case 0x74480000:
	case 0x74490000:
	case 0x07252000:
	case 0x07448000:
	case 0x07449000:
		USB_CTRL_UNSET_FAMILY(params, SETUP, SCB2_EN);
	}
}

static void usb3_otp_fix(struct brcm_usb_init_params *params)
{
	void __iomem *xhci_ec_base = params->xhci_ec_regs;
	u32 val;

	if ((params->family_id != 0x74371000) || (xhci_ec_base == 0))
		return;
	brcmusb_writel(0xa20c, USB_XHCI_EC_REG(xhci_ec_base, IRAADR));
	val = brcmusb_readl(USB_XHCI_EC_REG(xhci_ec_base, IRADAT));

	/* set cfg_pick_ss_lock */
	val |= (1 << 27);
	brcmusb_writel(val, USB_XHCI_EC_REG(xhci_ec_base, IRADAT));

	/* Reset USB 3.0 PHY for workaround to take effect */
	USB_CTRL_UNSET(params->ctrl_regs, USB30_CTL1, PHY3_RESETB);
	USB_CTRL_SET(params->ctrl_regs,	USB30_CTL1, PHY3_RESETB);
}


static void xhci_soft_reset(struct brcm_usb_init_params *params,
			int on_off)
{
	/* Assert reset */
	if (on_off) {
		if (USB_CTRL_MASK_FAMILY(params, USB_PM, XHC_SOFT_RESETB))
			USB_CTRL_UNSET_FAMILY(params, USB_PM, XHC_SOFT_RESETB);
		else
			USB_CTRL_UNSET_FAMILY(params,
					USB30_CTL1, XHC_SOFT_RESETB);
	}
	/* De-assert reset */
	else {
		if (USB_CTRL_MASK_FAMILY(params, USB_PM, XHC_SOFT_RESETB))
			USB_CTRL_SET_FAMILY(params, USB_PM, XHC_SOFT_RESETB);
		else
			USB_CTRL_SET_FAMILY(params, USB30_CTL1,
					XHC_SOFT_RESETB);
	}
}

/*
 * Return the best map table family. The order is:
 *   - exact match of chip and major rev
 *   - exact match of chip and closest older major rev
 *   - default chip/rev.
 * NOTE: The minor rev is always ignored.
 */
static enum brcm_family_type get_family_type(
	struct brcm_usb_init_params *params,
	struct id_to_type const *table)
{
	int last_type = -1;
	u32 last_family = 0;
	u32 family_no_major;
	unsigned int x;
	u32 family;

	family = params->family_id & 0xfffffff0;
	family_no_major = params->family_id & 0xffffff00;
	for (x = 0; table[x].id; x++) {
		if (family == table[x].id)
			return table[x].type;
		if (family_no_major == (table[x].id & 0xffffff00))
			if ((family > table[x].id) &&
				(last_family < table[x].id)) {
				last_family = table[x].id;
				last_type = table[x].type;
			}
	}

	/* If no match, return the default family */
	if (last_type == -1)
		return table[x].type;
	return last_type;
}

static void usb_init_ipp(struct brcm_usb_init_params *params)
{
	void __iomem *ctrl = params->ctrl_regs;
	u32 reg;
	u32 orig_reg;

	pr_debug("brcm_usb_init_port_power()\n");

	/* Starting with the 7445d0, there are no longer separate 3.0
	 * versions of IOC and IPP.
	 */
	if (USB_CTRL_MASK_FAMILY(params, USB30_CTL1, USB3_IOC)) {
		if (params->ioc)
			USB_CTRL_SET_FAMILY(params, USB30_CTL1, USB3_IOC);
		if (params->ipp == 1)
			USB_CTRL_SET_FAMILY(params, USB30_CTL1, USB3_IPP);
	}

	orig_reg = reg = brcmusb_readl(USB_CTRL_REG(ctrl, SETUP));
	if (USB_CTRL_MASK_FAMILY(params, SETUP, STRAP_CC_DRD_MODE_ENABLE_SEL))
		/* Never use the strap, it's going away. */
		reg &= ~(USB_CTRL_MASK_FAMILY(params,
						SETUP,
						STRAP_CC_DRD_MODE_ENABLE_SEL));
	if (USB_CTRL_MASK_FAMILY(params, SETUP, STRAP_IPP_SEL))
		if (params->ipp != 2)
			/* override ipp strap pin (if it exits) */
			reg &= ~(USB_CTRL_MASK_FAMILY(params, SETUP,
							STRAP_IPP_SEL));

	/* Override the default OC and PP polarity */
	reg &= ~(USB_CTRL_MASK(SETUP, IPP) | USB_CTRL_MASK(SETUP, IOC));
	if (params->ioc)
		reg |= USB_CTRL_MASK(SETUP, IOC);
	if ((params->ipp == 1) &&
		((reg & USB_CTRL_MASK(SETUP, IPP)) == 0))
		reg |= USB_CTRL_MASK(SETUP, IPP);
	brcmusb_writel(reg, USB_CTRL_REG(ctrl, SETUP));

	/*
	 * If we're changing IPP, make sure power is off long enough
	 * to turn off any connected devices.
	 */
	if (reg != orig_reg)
		msleep(50);
}

int brcm_usb_init_get_dual_select(struct brcm_usb_init_params *params)
{
	void __iomem *ctrl = params->ctrl_regs;
	u32 reg = 0;

	if (USB_CTRL_MASK_FAMILY(params, USB_DEVICE_CTL1, PORT_MODE)) {
		reg = brcmusb_readl(USB_CTRL_REG(ctrl, USB_DEVICE_CTL1));
		reg &= USB_CTRL_MASK_FAMILY(params, USB_DEVICE_CTL1,
					PORT_MODE);
	}
	return reg;
}

void brcm_usb_init_set_dual_select(struct brcm_usb_init_params *params,
				int mode)
{
	void __iomem *ctrl = params->ctrl_regs;
	u32 reg;

	if (USB_CTRL_MASK_FAMILY(params, USB_DEVICE_CTL1, PORT_MODE)) {
		reg = brcmusb_readl(USB_CTRL_REG(ctrl, USB_DEVICE_CTL1));
		reg &= ~USB_CTRL_MASK_FAMILY(params, USB_DEVICE_CTL1,
					PORT_MODE);
		reg |= mode;
		brcmusb_writel(reg, USB_CTRL_REG(ctrl, USB_DEVICE_CTL1));
	}
}

static void usb_init_common(struct brcm_usb_init_params *params)
{
	u32 reg;
	void __iomem *ctrl = params->ctrl_regs;

	pr_debug("brcm_usb_init_common()\n");

	/* Take USB out of power down */
	if (USB_CTRL_MASK_FAMILY(params, PLL_CTL, PLL_IDDQ_PWRDN)) {
		USB_CTRL_UNSET_FAMILY(params, PLL_CTL, PLL_IDDQ_PWRDN);
		/* 1 millisecond - for USB clocks to settle down */
		msleep(1);
	}

	if (USB_CTRL_MASK_FAMILY(params, USB_PM, USB_PWRDN)) {
		USB_CTRL_UNSET_FAMILY(params, USB_PM, USB_PWRDN);
		/* 1 millisecond - for USB clocks to settle down */
		msleep(1);
	}

	if ((params->selected_family != BRCM_FAMILY_74371A0) &&
		(BRCM_ID(params->family_id) != 0x7364))
		/*
		 * HW7439-637: 7439a0 and its derivatives do not have large
		 * enough descriptor storage for this.
		 */
		USB_CTRL_SET_FAMILY(params, SETUP, SS_EHCI64BIT_EN);

	/* Block auto PLL suspend by USB2 PHY (Sasi) */
	USB_CTRL_SET(ctrl, PLL_CTL, PLL_SUSPEND_EN);

	reg = brcmusb_readl(USB_CTRL_REG(ctrl, SETUP));
	if (params->selected_family == BRCM_FAMILY_7364A0)
		/* Suppress overcurrent indication from USB30 ports for A0 */
		reg |= USB_CTRL_MASK_FAMILY(params, SETUP, OC3_DISABLE);

	usb_phy_ldo_fix(ctrl);
	usb2_eye_fix(ctrl);

	/*
	 * Make sure the the second and third memory controller
	 * interfaces are enabled if they exist.
	 */
	if (USB_CTRL_MASK_FAMILY(params, SETUP, SCB1_EN))
		reg |= USB_CTRL_MASK_FAMILY(params, SETUP, SCB1_EN);
	if (USB_CTRL_MASK_FAMILY(params, SETUP, SCB2_EN))
		reg |= USB_CTRL_MASK_FAMILY(params, SETUP, SCB2_EN);
	brcmusb_writel(reg, USB_CTRL_REG(ctrl, SETUP));

	memc_fix(params);

	if (USB_CTRL_MASK_FAMILY(params, USB_DEVICE_CTL1, PORT_MODE)) {
		reg = brcmusb_readl(USB_CTRL_REG(ctrl, USB_DEVICE_CTL1));
		reg &= ~USB_CTRL_MASK_FAMILY(params, USB_DEVICE_CTL1,
					PORT_MODE);
		reg |= params->device_mode;
		brcmusb_writel(reg, USB_CTRL_REG(ctrl, USB_DEVICE_CTL1));
	}
	if (USB_CTRL_MASK_FAMILY(params, USB_PM, BDC_SOFT_RESETB)) {
		switch (params->device_mode) {
		case USB_CTLR_DEVICE_OFF:
			USB_CTRL_UNSET_FAMILY(params, USB_PM, BDC_SOFT_RESETB);
			break;
		default:
			USB_CTRL_UNSET_FAMILY(params, USB_PM, BDC_SOFT_RESETB);
			USB_CTRL_SET_FAMILY(params, USB_PM, BDC_SOFT_RESETB);
		break;
		}
	}
	if (USB_CTRL_MASK_FAMILY(params, SETUP, CC_DRD_MODE_ENABLE)) {
		if (params->device_mode == USB_CTLR_DEVICE_TYPEC_PD)
			USB_CTRL_SET_FAMILY(params, SETUP, CC_DRD_MODE_ENABLE);
		else
			USB_CTRL_UNSET_FAMILY(params, SETUP,
					CC_DRD_MODE_ENABLE);
	}
}

static void usb_init_eohci(struct brcm_usb_init_params *params)
{
	u32 reg;
	void __iomem *ctrl = params->ctrl_regs;

	pr_debug("brcm_usb_init_eohci()\n");

	if (USB_CTRL_MASK_FAMILY(params, USB_PM, USB20_HC_RESETB))
		USB_CTRL_SET_FAMILY(params, USB_PM, USB20_HC_RESETB);

	if (params->selected_family == BRCM_FAMILY_7366C0)
		/*
		 * Don't enable this so the memory controller doesn't read
		 * into memory holes. NOTE: This bit is low true on 7366C0.
		 */
		USB_CTRL_SET_FAMILY(params, EBRIDGE, ESTOP_SCB_REQ);

	/* Setup the endian bits */
	reg = brcmusb_readl(USB_CTRL_REG(ctrl, SETUP));
	reg &= ~USB_CTRL_SETUP_ENDIAN_BITS;
	reg |= USB_CTRL_MASK_FAMILY(params, SETUP, ENDIAN);
	brcmusb_writel(reg, USB_CTRL_REG(ctrl, SETUP));

}

static void usb_init_xhci(struct brcm_usb_init_params *params)
{
	void __iomem *ctrl = params->ctrl_regs;

	pr_debug("brcm_usb_init_xhci()\n");

	if (BRCM_ID(params->family_id) == 0x7366) {
		/*
		 * The PHY3_SOFT_RESETB bits default to the wrong state.
		 */
		USB_CTRL_SET(ctrl, USB30_PCTL, PHY3_SOFT_RESETB);
		USB_CTRL_SET(ctrl, USB30_PCTL, PHY3_SOFT_RESETB_P1);
	}

	/*
	 * Kick start USB3 PHY
	 * Make sure it's low to insure a rising edge.
	 */
	USB_CTRL_UNSET(ctrl, USB30_CTL1, PHY3_PLL_SEQ_START);
	USB_CTRL_SET(ctrl, USB30_CTL1, PHY3_PLL_SEQ_START);

	usb3_phy_workarounds(params);
	xhci_soft_reset(params, 0);
	usb3_otp_fix(params);
}

static void usb_uninit_common(struct brcm_usb_init_params *params)
{
	pr_debug("brcm_usb_uninit_common()\n");

	if (USB_CTRL_MASK_FAMILY(params, USB_PM, USB_PWRDN))
		USB_CTRL_SET_FAMILY(params, USB_PM, USB_PWRDN);

	if (USB_CTRL_MASK_FAMILY(params, PLL_CTL, PLL_IDDQ_PWRDN))
		USB_CTRL_SET_FAMILY(params, PLL_CTL, PLL_IDDQ_PWRDN);

}

static void usb_uninit_eohci(struct brcm_usb_init_params *params)
{

	pr_debug("brcm_usb_uninit_eohci()\n");

	if (USB_CTRL_MASK_FAMILY(params, USB_PM, USB20_HC_RESETB))
		USB_CTRL_UNSET_FAMILY(params, USB_PM, USB20_HC_RESETB);
}

static void usb_uninit_xhci(struct brcm_usb_init_params *params)
{

	pr_debug("brcm_usb_uninit_xhci()\n");

	xhci_soft_reset(params, 1);
}

static const struct brcm_usb_init_ops arm_ops = {
	.init_ipp = usb_init_ipp,
	.init_common = usb_init_common,
	.init_eohci = usb_init_eohci,
	.init_xhci = usb_init_xhci,
	.uninit_common = usb_uninit_common,
	.uninit_eohci = usb_uninit_eohci,
	.uninit_xhci = usb_uninit_xhci,
};

static void usb_init_common_mips(struct brcm_usb_init_params *params)
{
	u32 reg;
	void __iomem *ctrl = params->ctrl_regs;

	pr_debug("brcm_usb_init_common_mips()\n");

	reg = brcmusb_readl(USB_CTRL_REG(ctrl, SETUP));
	reg &= ~USB_CTRL_SETUP_ENDIAN_BITS;
	reg |= USB_CTRL_MASK_FAMILY(params, SETUP, ENDIAN);
	brcmusb_writel(reg, USB_CTRL_REG(ctrl, SETUP));
	USB_CTRL_SET(ctrl, PLL_CTL, PLL_SUSPEND_EN);
	if (params->selected_family == BRCM_FAMILY_7425B0)
		USB_CTRL_SET(ctrl, SETUP, SCB_CLIENT_SWAP);
}

static const struct brcm_usb_init_ops bmips_ops = {
	.init_ipp = usb_init_ipp,
	.init_common = usb_init_common_mips,
};

void brcm_usb_set_family_map(struct brcm_usb_init_params *params)
{
	struct id_to_type const *table;
	int fam;

	if (IS_ENABLED(CONFIG_MIPS)) {
		params->ops = &bmips_ops;
		table = id_to_type_table_mips;
	} else {
		params->ops = &arm_ops;
		table = id_to_type_table_arm;
	}
	fam = get_family_type(params, table);
	params->selected_family = fam;
	params->usb_reg_bits_map =
		&usb_reg_bits_map_table[fam][0];
	params->family_name = family_names[fam];

}

