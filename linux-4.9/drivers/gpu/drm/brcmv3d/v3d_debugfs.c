/*
 * Broadcom Proprietary and Confidential. (c)2016 Broadcom.
 * All Rights Reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software")
 * to deal in the software without restriction, including without limitation
 * on the rights to use, copy, modify, merge, publish, distribute, sub
 * license, and/or sell copies of the Software, and to permit persons to whom
 * them Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice (including the next
 * paragraph) shall be included in all copies or substantial portions of the
 * Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTIBILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT.  IN NO EVENT SHALL
 * THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES, OR OTHER LIABILITY, WHETHER
 * IN AN ACTION OF CONTRACT, TORT, OR OTHERWISE, ARISING FROM, OUT OF OR IN
 * CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 *
 */

/*
 * DebugFS support for v3d GEM driver, providing per-open file
 * information on allocated GEM objects and the hardware MMU pagetable
 */
#include <linux/module.h>
#include <linux/debugfs.h>
#include <linux/printk.h>
#include <linux/seq_file.h>
#include <uapi/drm/brcmv3d_drm.h>

#include "v3d_drv.h"

static int v3d_file_client_info(struct seq_file *m, void *data)
{
	struct drm_info_node *node = (struct drm_info_node *)m->private;
	struct drm_device *dev = node->minor->dev;
	struct dentry *root = node->dent->d_parent;
	struct drm_file *file = root->d_fsdata;
	struct v3d_drm_file_private *fp = file->driver_priv;
	struct task_struct *task;
	struct drm_gem_object *obj;
	struct v3d_alloc_block *itr;
	int i, id, ret, num_objs = 0, cma_blocks = 0;
	size_t total_obj_size = 0, shm_size = 0;
	bool obj_size_mb = false, shm_size_mb = false;

	ret = mutex_lock_interruptible(&dev->struct_mutex);
	if (ret)
		return ret;

	spin_lock(&file->table_lock);
	idr_for_each_entry(&file->object_idr, obj, id) {
		struct v3d_drm_gem_object *v3dobj = to_v3d_obj(obj);

		num_objs++;
		total_obj_size += obj->size;
		if (v3dobj->shm_pages)
			shm_size += obj->size;
	}
	spin_unlock(&file->table_lock);

	total_obj_size = total_obj_size / 1024;
	if (total_obj_size > 32 * 1024) {
		total_obj_size = (total_obj_size + 1023) / 1024;
		obj_size_mb = true;
	}

	shm_size = shm_size / 1024;
	if (shm_size > 32 * 1024) {
		shm_size = (shm_size + 1023) / 1024;
		shm_size_mb = true;
	}

	for (i = 0; i < MAX_CMA_AREAS; i++) {
		if (!list_empty(&fp->alloc_blocks[i])) {
			list_for_each_entry(itr, &fp->alloc_blocks[i], node)
				cma_blocks++;
		}
	}
	seq_printf(m,
		   "%19s %18s %7s %10s %10s %10s\n",
		   "command",
		   "pagetable phys",
		   "objects",
		   "Virtual",
		   "SHM pages",
		   "CMA blocks");

	rcu_read_lock(); /* locks pid_task()->comm */
	task = pid_task(file->pid, PIDTYPE_PID);
	seq_printf(m, "%19s %pa %7d %8zd%2s %8zd%2s %8luMB\n",
		   task ? task->comm : "<unknown>",
		   &fp->hw_vmem.pt_phys,
		   num_objs,
		   total_obj_size,
		   obj_size_mb ? "MB" : "KB",
		   shm_size,
		   shm_size_mb ? "MB" : "KB",
		   cma_blocks * V3D_CMA_ALLOC_BLOCK_SIZE / (1024 * 1024));
	rcu_read_unlock();

	mutex_unlock(&dev->struct_mutex);

	return 0;
}

static int v3d_file_rawmem_info(struct seq_file *m, void *data)
{
	struct drm_info_node *node = (struct drm_info_node *)m->private;
	struct drm_device *dev = node->minor->dev;
	struct dentry *root = node->dent->d_parent;
	struct drm_file *file = root->d_fsdata;
	struct v3d_drm_file_private *fp = file->driver_priv;
	struct v3d_alloc_block *itr;
	struct drm_gem_object *obj;
	int cma_blocks = 0, ret, i, id, num_objs = 0;
	size_t total_obj_size = 0, shm_size = 0;

	ret = mutex_lock_interruptible(&dev->struct_mutex);
	if (ret)
		return ret;

	spin_lock(&file->table_lock);
	idr_for_each_entry(&file->object_idr, obj, id) {
		struct v3d_drm_gem_object *v3dobj = to_v3d_obj(obj);

		num_objs++;
		total_obj_size += obj->size;
		if (v3dobj->shm_pages)
			shm_size += obj->size;
	}
	spin_unlock(&file->table_lock);

	total_obj_size = total_obj_size / 1024;
	if (total_obj_size > 32 * 1024) {
		total_obj_size = (total_obj_size + 1023) / 1024;
	} else {
		total_obj_size = 0;
	}

	shm_size = shm_size / 1024;
	if (shm_size > 32 * 1024) {
		shm_size = (shm_size + 1023) / 1024;
	} else {
		shm_size = 0;
	}

	for (i = 0; i < MAX_CMA_AREAS; i++) {
		if (!list_empty(&fp->alloc_blocks[i])) {
			list_for_each_entry(itr, &fp->alloc_blocks[i], node)
				cma_blocks++;
		}
	}

	seq_printf(m, "%lu:%lu:%lu\n",
			total_obj_size,
			shm_size,
		   cma_blocks * V3D_CMA_ALLOC_BLOCK_SIZE / (1024 * 1024));

	mutex_unlock(&dev->struct_mutex);

	return 0;
}

#define BITS_PER_MAP_ENTRY (V3D_CMA_ALLOC_MAP_SIZE / 32)

static void v3d_file_cma_block_map(struct seq_file *m,
				   struct v3d_alloc_block *block)
{
	int i, c = 0;
	char mapbuf[33];

	for (i = 0; i < V3D_CMA_ALLOC_MAP_SIZE; i += BITS_PER_MAP_ENTRY) {
		int nset = 0, b;

		for (b = 0; b < BITS_PER_MAP_ENTRY; b++)
			nset += test_bit(i + b, block->alloc_map);

		switch (nset) {
		case 0:
			 mapbuf[c++] = '-'; break;
		case BITS_PER_MAP_ENTRY:
			 mapbuf[c++] = '*'; break;
		default:
			 mapbuf[c++] = '+'; break;
		}
	}

	mapbuf[32] = '\0';
	seq_printf(m, "%pa: %32s\n", &block->phys_addr, mapbuf);
}

static int v3d_file_cma_info(struct seq_file *m, void *data)
{
	struct drm_info_node *node = (struct drm_info_node *)m->private;
	struct drm_device *dev = node->minor->dev;
	struct dentry *root = node->dent->d_parent;
	struct drm_file *file = root->d_fsdata;
	struct v3d_drm_file_private *fp = file->driver_priv;
	struct v3d_alloc_block *itr;
	int ret, d;

	ret = mutex_lock_interruptible(&dev->struct_mutex);
	if (ret)
		return ret;

	seq_printf(m,
		   "%18s:	 %2dK %s\n",
		   "CMA Block Physcal",
		   (int)PAGE_SIZE / 1024,
		   "Page Allocation Mask");

	seq_puts(m, "====================================================\n");

	for (d = 0; d < MAX_CMA_AREAS; d++) {
		if (!list_empty(&fp->alloc_blocks[d])) {
			list_for_each_entry(itr, &fp->alloc_blocks[d], node)
				v3d_file_cma_block_map(m, itr);
		}
	}

	mutex_unlock(&dev->struct_mutex);
	return 0;
}

static int v3d_file_objs_info(struct seq_file *m, void *data)
{
	struct drm_info_node *node = (struct drm_info_node *)m->private;
	struct drm_device *dev = node->minor->dev;
	struct dentry *root = node->dent->d_parent;
	struct drm_file *file = root->d_fsdata;
	struct drm_gem_object *obj;
	int id, ret;

	ret = mutex_lock_interruptible(&dev->struct_mutex);
	if (ret)
		return ret;

	seq_printf(m,
		   "%10s %10s %10s %5s %5s %5s %28s\n",
		   "handle", "size", "HW Virtual", "RO", "WC", "EXT", "DESC");

	spin_lock(&file->table_lock);
	idr_for_each_entry(&file->object_idr, obj, id) {
		struct v3d_drm_gem_object *v3d_obj = to_v3d_obj(obj);
		bool ro, wc, ext, anon;

		ro = !!(v3d_obj->alloc_flags & V3D_CREATE_HW_READONLY);
		wc = !!(v3d_obj->alloc_flags & V3D_CREATE_CPU_WRITECOMBINE);
		ext = !v3d_obj->cma_pages && !v3d_obj->shm_pages;
		anon = !v3d_obj->desc;
		seq_printf(m, "%10d %10zd 0x%08x %5c %5c %5c %28s\n",
			   id, obj->size, v3d_obj->hw_virt_addr,
			   ro ? 'y' : 'n', wc ? 'y' : 'n',
			   ext ? 'y' : 'n',
			   anon ? "" : v3d_obj->desc);
	}
	spin_unlock(&file->table_lock);

	mutex_unlock(&dev->struct_mutex);

	return 0;
}

static int v3d_file_pagetable_raw_info(struct seq_file *m, void *data)
{
	struct drm_info_node *node = (struct drm_info_node *)m->private;
	struct drm_device *dev = node->minor->dev;
	struct dentry *root = node->dent->d_parent;
	struct drm_file *file = root->d_fsdata;
	struct v3d_drm_file_private *fp = file->driver_priv;
	int ret;

	if (!fp->hw_vmem.pt_kaddr)
		return 0;

	ret = mutex_lock_interruptible(&dev->struct_mutex);
	if (ret)
		return ret;

	seq_hex_dump(m, "0x", DUMP_PREFIX_OFFSET, 16, 4,
		     fp->hw_vmem.pt_kaddr, V3D_HW_PAGE_TABLE_SIZE, false);

	mutex_unlock(&dev->struct_mutex);
	return 0;
}

static int v3d_file_pagetable_cooked_info(struct seq_file *m, void *data)
{
	struct drm_info_node *node = (struct drm_info_node *)m->private;
	struct drm_device *dev = node->minor->dev;
	struct dentry *root = node->dent->d_parent;
	struct drm_file *file = root->d_fsdata;
	struct v3d_drm_file_private *fp = file->driver_priv;
	int i, ret;

	if (!fp->hw_vmem.pt_kaddr)
		return 0;

	ret = mutex_lock_interruptible(&dev->struct_mutex);
	if (ret)
		return ret;

	seq_printf(m,
		   "%10s %10s %5s %5s %10s\n",
		   "Offset",
		   "HW Virtual",
		   "Valid",
		   "Perm",
		   "Physical");

	for (i = 0; i < V3D_HW_PAGE_TABLE_ENTRIES; i++) {
		u32 entry = fp->hw_vmem.pt_kaddr[i];
		bool valid = entry & V3D_PAGE_FLAG_VALID;
		bool write = entry & V3D_PAGE_FLAG_WRITE;
		phys_addr_t phys = (phys_addr_t)(entry & ~V3D_PAGE_FLAG_MASK);

		phys = phys << PAGE_SHIFT;
		seq_printf(m,
			   "0x%.8x 0x%.8x %5c %5s %pa\n",
			   i * V3D_HW_PAGE_TABLE_ENTRY_SIZE,
			   i << PAGE_SHIFT,
			   valid ? 'y' : 'n',
			   valid ? (write ? "rw" : "ro") : "--",
			   &phys);
	}

	mutex_unlock(&dev->struct_mutex);
	return 0;
}

static const struct drm_info_list v3d_debugfs_list[] = {
	{"client", v3d_file_client_info, 0},
	{"objs", v3d_file_objs_info, 0},
	{"cma", v3d_file_cma_info, 0},
	{"pagetable_raw", v3d_file_pagetable_raw_info, 0},
	{"pagetable_cooked", v3d_file_pagetable_cooked_info, 0},
	{"rawmem", v3d_file_rawmem_info, 0},
};

void v3d_debugfs_create_file_entries(struct drm_file *file)
{
	struct drm_minor *minor = file->minor;
	struct v3d_drm_file_private *fp = file->driver_priv;
	char name[64];
	struct task_struct *task = get_pid_task(file->pid, PIDTYPE_PID);

	sprintf(name, "%d", task->tgid);
	fp->debugfs_root = debugfs_create_dir(name, minor->debugfs_root);
	if (!fp->debugfs_root) {
		DRM_ERROR("Cannot create /sys/kernel/debug/dri/%d/%s\n",
			  minor->index, name);
		return;
	}

	/*
	 * It appears safe to use the d_fsdata field to store this as debugfs
	 * only appears to use it itself for the mount point of the virtual
	 * debugfs filesystem.
	 */
	fp->debugfs_root->d_fsdata = file;

	drm_debugfs_create_files(v3d_debugfs_list, ARRAY_SIZE(v3d_debugfs_list),
				 fp->debugfs_root, minor);
}

void v3d_debugfs_cleanup_file_entries(struct drm_file *file)
{
	struct drm_minor *minor = file->minor;
	struct v3d_drm_file_private *fp = file->driver_priv;

	mutex_lock(&minor->debugfs_lock);
	if (fp->debugfs_root) {
		struct list_head *pos, *q;
		struct drm_info_node *tmp;

		/* We have to be a bit more careful removing entries because
		 * we have added the same entries for multiple opens off
		 * different parent nodes we cannot just use
		 * drm_debugfs_remove_files.
		 */
		list_for_each_safe(pos, q, &minor->debugfs_list) {
			tmp = list_entry(pos, struct drm_info_node, list);
			if (tmp->dent->d_parent == fp->debugfs_root) {
				debugfs_remove(tmp->dent);
				list_del(pos);
				kfree(tmp);
			}
		}

		debugfs_remove(fp->debugfs_root);
		fp->debugfs_root = NULL;
	}
	mutex_unlock(&minor->debugfs_lock);
}
