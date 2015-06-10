cmd_scripts/mod/empty.o := arm-linux-gnueabihf-gcc -Wp,-MD,scripts/mod/.empty.o.d  -nostdinc -isystem /car/2-lmp-mr1-tv-dev/prebuilts/gcc/linux-x86/arm/stb/stbgcc-4.8-1.2/bin/../lib/gcc/arm-linux-gnueabihf/4.8.4/include -I/car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include -Iarch/arm/include/generated  -Iinclude -I/car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/uapi -Iarch/arm/include/generated/uapi -I/car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/include/uapi -Iinclude/generated/uapi -include /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/include/linux/kconfig.h -D__KERNEL__ -mlittle-endian -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -Werror-implicit-function-declaration -Wno-format-security -fno-delete-null-pointer-checks -O2 -fno-dwarf2-cfi-asm -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -funwind-tables -marm -D__LINUX_ARM_ARCH__=7 -march=armv7-a -msoft-float -Uarm -Wframe-larger-than=1024 -fno-stack-protector -Wno-unused-but-set-variable -fomit-frame-pointer -fno-var-tracking-assignments -g -femit-struct-debug-baseonly -fno-var-tracking -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-overflow -fconserve-stack -Werror=implicit-int -Werror=strict-prototypes -DCC_HAVE_ASM_GOTO    -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(empty)"  -D"KBUILD_MODNAME=KBUILD_STR(empty)" -c -o scripts/mod/.tmp_empty.o scripts/mod/empty.c

source_scripts/mod/empty.o := scripts/mod/empty.c

deps_scripts/mod/empty.o := \

scripts/mod/empty.o: $(deps_scripts/mod/empty.o)

$(deps_scripts/mod/empty.o):
