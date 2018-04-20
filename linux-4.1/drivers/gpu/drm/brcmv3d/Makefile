ccflags-y := -Iinclude/drm
brcmv3d-y := v3d_drv.o v3d_bcma.o
brcmv3d-$(CONFIG_DEBUG_FS) += v3d_debugfs.o
brcmv3d-$(CONFIG_COMPAT) += v3d_ioc32.o

obj-$(CONFIG_DRM_BRCM_V3D)	+= brcmv3d.o
