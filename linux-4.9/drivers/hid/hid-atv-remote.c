/*
 *  HID driver for the Android TV remote
 *  prevents the host from suspending while a remote is connected
 *
 * Copyright (C) 2014 Google, Inc.
 * Copyright (C) 2018 Broadcom
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

#include <linux/device.h>
#include <linux/module.h>
#include <linux/hid.h>
#include <linux/hiddev.h>

#include "hid-ids.h"

MODULE_LICENSE("GPL v2");

static int num_remotes;

static int atvr_probe(struct hid_device *hdev, const struct hid_device_id *id)
{
	int ret;

	pr_info("%s: Found target remote %s\n", __func__, hdev->name);

	ret = hid_parse(hdev);
	if (ret) {
		hid_err(hdev, "hid parse failed\n");
		goto err_parse;
	}

	ret = hid_hw_start(hdev, HID_CONNECT_DEFAULT);
	if (ret) {
		hid_err(hdev, "hw start failed\n");
		goto err_start;
	}

	pr_info("%s: num_remotes %d->%d\n", __func__, num_remotes,
		num_remotes + 1);
	num_remotes++;

	/* Prevent system from suspending while remote is connected */
	device_init_wakeup(&hdev->dev, 1);
	pm_stay_awake(&hdev->dev);

	return 0;
err_stop:
	hid_hw_stop(hdev);
err_start:
err_parse:
err_match:
	return ret;
}

static void atvr_remove(struct hid_device *hdev)
{
	pr_info("%s: hdev->name = %s removed, num %d->%d\n",
		__func__, hdev->name, num_remotes, num_remotes - 1);
	num_remotes--;
	hid_hw_stop(hdev);

	pm_relax(&hdev->dev);
	device_init_wakeup(&hdev->dev, 0);
}

static const struct hid_device_id atvr_devices[] = {
	{HID_BLUETOOTH_DEVICE(USB_VENDOR_ID_NORDIC,
			      USB_DEVICE_ID_NORDIC_SMART_S)},
	{}
};

MODULE_DEVICE_TABLE(hid, atvr_devices);

static struct hid_driver atvr_driver = {
	.name = "AndroidTV remote",
	.id_table = atvr_devices,
	.probe = atvr_probe,
	.remove = atvr_remove,
};

static int atvr_init(void)
{
	int ret;

	ret = hid_register_driver(&atvr_driver);
	if (ret)
		pr_err("%s: can't register AndroidTV Remote driver\n",
		       __func__);

	return ret;
}

static void atvr_exit(void)
{
	hid_unregister_driver(&atvr_driver);
}

module_init(atvr_init);
module_exit(atvr_exit);
MODULE_LICENSE("GPL");
