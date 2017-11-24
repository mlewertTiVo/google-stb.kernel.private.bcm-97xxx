/*
 * Copyright (C) 2017 Broadcom Corporation
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License version 2 as
 * published by the Free Software Foundation.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 */

#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/errno.h>
#include <linux/fs.h>
#include <linux/init.h>
#include <linux/device.h>
#include <linux/miscdevice.h>
#include <linux/uaccess.h>
#include <linux/mm.h>
#include <linux/slab.h>
#include <linux/oom.h>
#include <linux/brcmstb/proc_info_proxy.h>

static long brcmstb_proc_info_ioctl(struct file *file, unsigned int cmd,
		unsigned long arg)
{
	struct proxy_info_oomadj oomadj;

	switch (cmd) {
	case PROC_INFO_IOCTL_PROXY_GET_OOMADJ:
		if (copy_from_user(&oomadj, (void __user *)arg,
			sizeof(struct proxy_info_oomadj)))
			return -EFAULT;
		{
			unsigned long flags;
			struct pid *pid = find_get_pid(oomadj.pid);
			struct task_struct *task = get_pid_task(pid, PIDTYPE_PID);
			int oom_adj = OOM_ADJUST_MIN;
			if (!task) {
				return -ESRCH;
			}
			if (lock_task_sighand(task, &flags)) {
				if (task->signal->oom_score_adj == OOM_SCORE_ADJ_MAX)
					oom_adj = OOM_ADJUST_MAX;
				else
					oom_adj = (task->signal->oom_score_adj * -OOM_DISABLE) /
						OOM_SCORE_ADJ_MAX;
				unlock_task_sighand(task, &flags);
			}
			put_task_struct(task);
			oomadj.score = oom_adj;
		}
		if (copy_to_user((void __user *)arg, &oomadj,
			sizeof(struct proxy_info_oomadj)))
			return -EFAULT;
		break;
	default:
		pr_err("%s: invalid command\n", __func__);
		return -ENOIOCTLCMD;
	};

	return 0;
}

#ifdef CONFIG_COMPAT
static long brcmstb_proc_info_ioctl(struct file *file,
		unsigned int cmd, unsigned long arg)
{
	return brcmstb_proc_info_ioctl(file, cmd,
				(unsigned long)compat_ptr(arg));
}
#endif

static const struct file_operations brcmstb_proc_info_fops = {
	.owner		= THIS_MODULE,
	.unlocked_ioctl = brcmstb_proc_info_ioctl,
#ifdef CONFIG_COMPAT
	.compat_ioctl	= brcmstb_proc_info_compat_ioctl,
#endif
};

static struct miscdevice brcmstb_proc_info_miscdev = {
	.minor	= MISC_DYNAMIC_MINOR,
	.name	= "bcmpip",
	.fops	= &brcmstb_proc_info_fops,
};

static int __init brcmstb_proc_info_init(void)
{
	int ret;

	ret = misc_register(&brcmstb_proc_info_miscdev);
	if (ret) {
		pr_err("%s: misc_register failed\n", __func__);
		return ret;
	}

	pr_info("brcmstb_proc_info successfully registered\n");
	return 0;
}

static void __exit brcmstb_proc_info_exit(void)
{
	misc_deregister(&brcmstb_proc_info_miscdev);
}

module_init(brcmstb_proc_info_init);
module_exit(brcmstb_proc_info_exit);

MODULE_AUTHOR("Broadcom Corporation");
MODULE_LICENSE("GPLv2");
