cmd_kernel/sys_ni.o := arm-linux-gnueabihf-gcc -Wp,-MD,kernel/.sys_ni.o.d  -nostdinc -isystem /car/2-lmp-mr1-tv-dev/prebuilts/gcc/linux-x86/arm/stb/stbgcc-4.8-1.2/bin/../lib/gcc/arm-linux-gnueabihf/4.8.4/include -I/car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include -Iarch/arm/include/generated  -Iinclude -I/car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/uapi -Iarch/arm/include/generated/uapi -I/car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/include/uapi -Iinclude/generated/uapi -include /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/include/linux/kconfig.h -D__KERNEL__ -mlittle-endian -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -Werror-implicit-function-declaration -Wno-format-security -fno-delete-null-pointer-checks -O2 -fno-dwarf2-cfi-asm -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -funwind-tables -marm -D__LINUX_ARM_ARCH__=7 -march=armv7-a -msoft-float -Uarm -Wframe-larger-than=1024 -fno-stack-protector -Wno-unused-but-set-variable -fomit-frame-pointer -fno-var-tracking-assignments -g -femit-struct-debug-baseonly -fno-var-tracking -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-overflow -fconserve-stack -Werror=implicit-int -Werror=strict-prototypes -DCC_HAVE_ASM_GOTO    -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(sys_ni)"  -D"KBUILD_MODNAME=KBUILD_STR(sys_ni)" -c -o kernel/.tmp_sys_ni.o kernel/sys_ni.c

source_kernel/sys_ni.o := kernel/sys_ni.c

deps_kernel/sys_ni.o := \
  include/linux/linkage.h \
  include/linux/compiler.h \
    $(wildcard include/config/sparse/rcu/pointer.h) \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
    $(wildcard include/config/kprobes.h) \
  include/linux/compiler-gcc.h \
    $(wildcard include/config/arch/supports/optimized/inlining.h) \
    $(wildcard include/config/optimize/inlining.h) \
  include/linux/compiler-gcc4.h \
    $(wildcard include/config/arch/use/builtin/bswap.h) \
  include/linux/stringify.h \
  include/linux/export.h \
    $(wildcard include/config/have/underscore/symbol/prefix.h) \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/modversions.h) \
    $(wildcard include/config/unused/symbols.h) \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/linkage.h \
  include/linux/errno.h \
  include/uapi/linux/errno.h \
  arch/arm/include/generated/asm/errno.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/include/uapi/asm-generic/errno.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/include/uapi/asm-generic/errno-base.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/unistd.h \
    $(wildcard include/config/aeabi.h) \
    $(wildcard include/config/oabi/compat.h) \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/uapi/asm/unistd.h \

kernel/sys_ni.o: $(deps_kernel/sys_ni.o)

$(deps_kernel/sys_ni.o):
