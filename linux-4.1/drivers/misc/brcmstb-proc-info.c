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
#include <linux/mutex.h>
#include <linux/shmem_fs.h>
#include <linux/brcmstb/proc_info_proxy.h>

static struct kmem_cache *area_cachep __read_mostly;
struct area {
	struct list_head list;
	int pid;
	int size;
};
struct state {
	struct mutex lock;
	struct list_head list;
};
static struct state *global;

static long brcmstb_proc_info_ioctl(struct file *file, unsigned int cmd,
		unsigned long arg)
{
	struct area *pib = file->private_data;
	struct proxy_info_oomadj oomadj;
	struct proxy_info_memtrack memtrack;

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
	case PROC_INFO_IOCTL_PROXY_SET_MEMTRACK:
		if (copy_from_user(&memtrack, (void __user *)arg,
			sizeof(struct proxy_info_memtrack)))
			return -EFAULT;
		if (pib->pid == memtrack.pid) {
			if (memtrack.act == 1)
				pib->size += memtrack.size;
			else if (memtrack.act == -1)
				pib->size = (pib->size > memtrack.size) ? pib->size - memtrack.size : 0;
		}
		break;
	case PROC_INFO_IOCTL_PROXY_GET_MEMTRACK:
		if (copy_from_user(&memtrack, (void __user *)arg,
			sizeof(struct proxy_info_memtrack)))
			return -EFAULT;
		memtrack.size = 0;
		pib = NULL;
		mutex_lock(&(global->lock));
		if (!list_empty(&global->list)) {
			list_for_each_entry(pib, &global->list, list) {
				if (pib->pid == memtrack.pid) {
					memtrack.size = pib->size;
				}
			}
		}
		mutex_unlock(&(global->lock));
		if (copy_to_user((void __user *)arg, &memtrack,
			sizeof(struct proxy_info_memtrack)))
			return -EFAULT;
		break;
	default:
		pr_err("%s: invalid command: %x\n", __func__, cmd);
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

static int brcmstb_proc_info_open(struct inode *inode, struct file *file)
{
	struct area *pib;
	int ret;

	ret = generic_file_open(inode, file);
	if (unlikely(ret))
		return ret;

	pib = kmem_cache_zalloc(area_cachep, GFP_KERNEL);
	if (unlikely(!pib))
		return -ENOMEM;

	pib->pid = current->tgid;
	pib->size = 0;
	file->private_data = pib;

	mutex_lock(&(global->lock));
	list_add(&pib->list, &global->list);
	mutex_unlock(&(global->lock));
	return 0;
}

static int brcmstb_proc_info_release(struct inode *ignored, struct file *file)
{
	struct area *pib = file->private_data;

	mutex_lock(&(global->lock));
	list_del(&pib->list);
	mutex_unlock(&(global->lock));

	kmem_cache_free(area_cachep, pib);

	return 0;
}

static const struct file_operations brcmstb_proc_info_fops = {
	.owner		= THIS_MODULE,
	.open           = brcmstb_proc_info_open,
	.release        = brcmstb_proc_info_release,
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

	area_cachep = KMEM_CACHE(area, 0);
	if (unlikely(!area_cachep)) {
		pr_err("failed to create slab cache\n");
		return -ENOMEM;
	}

	global = kzalloc(sizeof(struct state), GFP_KERNEL);
	if (unlikely(!global)) {
		pr_err("failed to create global state\n");
		kmem_cache_destroy(area_cachep);
		return -ENOMEM;
	}
	mutex_init(&global->lock);
	INIT_LIST_HEAD(&global->list);

	ret = misc_register(&brcmstb_proc_info_miscdev);
	if (ret) {
		pr_err("%s: misc_register failed\n", __func__);
		kmem_cache_destroy(area_cachep);
		kfree(global);
		return ret;
	}

	pr_info("brcmstb_proc_info successfully registered\n");
	return 0;
}

static void __exit brcmstb_proc_info_exit(void)
{
	misc_deregister(&brcmstb_proc_info_miscdev);

	kmem_cache_destroy(area_cachep);
	mutex_destroy(&(global->lock));
	kfree(global);
}

module_init(brcmstb_proc_info_init);
module_exit(brcmstb_proc_info_exit);

MODULE_AUTHOR("Broadcom Corporation");
MODULE_LICENSE("GPLv2");
