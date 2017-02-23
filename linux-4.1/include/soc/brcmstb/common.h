/*
 * Copyright © 2014 NVIDIA Corporation
 * Copyright © 2015 Broadcom Corporation
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License version 2 as
 * published by the Free Software Foundation.
 */

#ifndef __SOC_BRCMSTB_COMMON_H__
#define __SOC_BRCMSTB_COMMON_H__

bool soc_is_brcmstb(void);
int brcmstb_dtusave_init(u32 *map_buffer, u32 *config_buffer);
int brcmstb_regsave_init(void);

#endif /* __SOC_BRCMSTB_COMMON_H__ */
