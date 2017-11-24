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

#ifndef __PROC_INFO_PROXY_H__
#define __PROC_INFO_PROXY_H__

#define PROC_INFO_PROXY 'z'
#define PROC_INFO_PROXY_GET_OOMADJ 0x100

struct proxy_info_oomadj {
	__u32 pid;
	__s32 score;
};

#define PROC_INFO_IOCTL_PROXY_GET_OOMADJ \
	_IOW(PROC_INFO_PROXY, PROC_INFO_PROXY_GET_OOMADJ, struct proxy_info_oomadj)

#endif /* __PROC_INFO_PROXY_H__ */
