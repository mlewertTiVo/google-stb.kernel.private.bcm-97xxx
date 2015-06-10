cmd_arch/arm/mach-bcm/brcmstb.o := arm-linux-gnueabihf-gcc -Wp,-MD,arch/arm/mach-bcm/.brcmstb.o.d  -nostdinc -isystem /car/2-lmp-mr1-tv-dev/prebuilts/gcc/linux-x86/arm/stb/stbgcc-4.8-1.2/bin/../lib/gcc/arm-linux-gnueabihf/4.8.4/include -I/car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include -Iarch/arm/include/generated  -Iinclude -I/car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/uapi -Iarch/arm/include/generated/uapi -I/car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/include/uapi -Iinclude/generated/uapi -include /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/include/linux/kconfig.h -D__KERNEL__ -mlittle-endian -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -Werror-implicit-function-declaration -Wno-format-security -fno-delete-null-pointer-checks -O2 -fno-dwarf2-cfi-asm -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -funwind-tables -marm -D__LINUX_ARM_ARCH__=7 -march=armv7-a -msoft-float -Uarm -Wframe-larger-than=1024 -fno-stack-protector -Wno-unused-but-set-variable -fomit-frame-pointer -fno-var-tracking-assignments -g -femit-struct-debug-baseonly -fno-var-tracking -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-overflow -fconserve-stack -Werror=implicit-int -Werror=strict-prototypes -DCC_HAVE_ASM_GOTO    -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(brcmstb)"  -D"KBUILD_MODNAME=KBUILD_STR(brcmstb)" -c -o arch/arm/mach-bcm/.tmp_brcmstb.o arch/arm/mach-bcm/brcmstb.c

source_arch/arm/mach-bcm/brcmstb.o := arch/arm/mach-bcm/brcmstb.c

deps_arch/arm/mach-bcm/brcmstb.o := \
    $(wildcard include/config/brcmstb.h) \
    $(wildcard include/config/fixed/phy.h) \
    $(wildcard include/config/pm/sleep.h) \
  include/linux/clk-provider.h \
    $(wildcard include/config/common/clk.h) \
    $(wildcard include/config/of.h) \
    $(wildcard include/config/ppc.h) \
  include/linux/clk.h \
    $(wildcard include/config/have/clk/prepare.h) \
    $(wildcard include/config/have/clk.h) \
  include/linux/err.h \
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
  arch/arm/include/generated/asm/errno.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/include/uapi/asm-generic/errno.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/include/uapi/asm-generic/errno-base.h \
  include/linux/kernel.h \
    $(wildcard include/config/lbdaf.h) \
    $(wildcard include/config/preempt/voluntary.h) \
    $(wildcard include/config/debug/atomic/sleep.h) \
    $(wildcard include/config/mmu.h) \
    $(wildcard include/config/prove/locking.h) \
    $(wildcard include/config/panic/timeout.h) \
    $(wildcard include/config/ring/buffer.h) \
    $(wildcard include/config/tracing.h) \
    $(wildcard include/config/ftrace/mcount/record.h) \
  /car/2-lmp-mr1-tv-dev/prebuilts/gcc/linux-x86/arm/stb/stbgcc-4.8-1.2/lib/gcc/arm-linux-gnueabihf/4.8.4/include/stdarg.h \
  include/linux/linkage.h \
  include/linux/stringify.h \
  include/linux/export.h \
    $(wildcard include/config/have/underscore/symbol/prefix.h) \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/modversions.h) \
    $(wildcard include/config/unused/symbols.h) \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/linkage.h \
  include/linux/stddef.h \
  include/uapi/linux/stddef.h \
  include/linux/types.h \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/arch/dma/addr/t/64bit.h) \
    $(wildcard include/config/phys/addr/t/64bit.h) \
    $(wildcard include/config/64bit.h) \
  include/uapi/linux/types.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/types.h \
  include/asm-generic/int-ll64.h \
  include/uapi/asm-generic/int-ll64.h \
  arch/arm/include/generated/asm/bitsperlong.h \
  include/asm-generic/bitsperlong.h \
  include/uapi/asm-generic/bitsperlong.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/include/uapi/linux/posix_types.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/uapi/asm/posix_types.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/include/uapi/asm-generic/posix_types.h \
  include/linux/bitops.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/bitops.h \
    $(wildcard include/config/smp.h) \
  include/linux/irqflags.h \
    $(wildcard include/config/trace/irqflags.h) \
    $(wildcard include/config/irqsoff/tracer.h) \
    $(wildcard include/config/preempt/tracer.h) \
    $(wildcard include/config/trace/irqflags/support.h) \
  include/linux/typecheck.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/irqflags.h \
    $(wildcard include/config/cpu/v7m.h) \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/ptrace.h \
    $(wildcard include/config/arm/thumb.h) \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/uapi/asm/ptrace.h \
    $(wildcard include/config/cpu/endian/be8.h) \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/hwcap.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/uapi/asm/hwcap.h \
  include/asm-generic/bitops/non-atomic.h \
  include/asm-generic/bitops/fls64.h \
  include/asm-generic/bitops/sched.h \
  include/asm-generic/bitops/hweight.h \
  include/asm-generic/bitops/arch_hweight.h \
  include/asm-generic/bitops/const_hweight.h \
  include/asm-generic/bitops/lock.h \
  include/asm-generic/bitops/le.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/uapi/asm/byteorder.h \
  include/linux/byteorder/little_endian.h \
  include/uapi/linux/byteorder/little_endian.h \
  include/linux/swab.h \
  include/uapi/linux/swab.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/swab.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/uapi/asm/swab.h \
  include/linux/byteorder/generic.h \
  include/asm-generic/bitops/ext2-atomic-setbit.h \
  include/linux/log2.h \
    $(wildcard include/config/arch/has/ilog2/u32.h) \
    $(wildcard include/config/arch/has/ilog2/u64.h) \
  include/linux/printk.h \
    $(wildcard include/config/early/printk.h) \
    $(wildcard include/config/printk.h) \
    $(wildcard include/config/dynamic/debug.h) \
  include/linux/init.h \
    $(wildcard include/config/broken/rodata.h) \
  include/linux/kern_levels.h \
  include/linux/cache.h \
    $(wildcard include/config/arch/has/cache/line/size.h) \
  include/uapi/linux/kernel.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/include/uapi/linux/sysinfo.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/cache.h \
    $(wildcard include/config/arm/l1/cache/shift.h) \
    $(wildcard include/config/aeabi.h) \
  include/linux/dynamic_debug.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/div64.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/compiler.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/bug.h \
    $(wildcard include/config/thumb2/kernel.h) \
    $(wildcard include/config/debug/bugverbose.h) \
    $(wildcard include/config/arm/lpae.h) \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/opcodes.h \
    $(wildcard include/config/cpu/endian/be32.h) \
  include/asm-generic/bug.h \
    $(wildcard include/config/generic/bug.h) \
    $(wildcard include/config/bug.h) \
    $(wildcard include/config/generic/bug/relative/pointers.h) \
  include/linux/notifier.h \
  include/linux/errno.h \
  include/uapi/linux/errno.h \
  include/linux/mutex.h \
    $(wildcard include/config/debug/mutexes.h) \
    $(wildcard include/config/mutex/spin/on/owner.h) \
    $(wildcard include/config/debug/lock/alloc.h) \
  arch/arm/include/generated/asm/current.h \
  include/asm-generic/current.h \
  include/linux/thread_info.h \
    $(wildcard include/config/compat.h) \
    $(wildcard include/config/debug/stack/usage.h) \
  include/linux/bug.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/thread_info.h \
    $(wildcard include/config/crunch.h) \
    $(wildcard include/config/arm/thumbee.h) \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/fpstate.h \
    $(wildcard include/config/vfpv3.h) \
    $(wildcard include/config/iwmmxt.h) \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/domain.h \
    $(wildcard include/config/io/36.h) \
    $(wildcard include/config/cpu/use/domains.h) \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/barrier.h \
    $(wildcard include/config/cpu/32v6k.h) \
    $(wildcard include/config/cpu/xsc3.h) \
    $(wildcard include/config/cpu/fa526.h) \
    $(wildcard include/config/arch/has/barriers.h) \
    $(wildcard include/config/arm/dma/mem/bufferable.h) \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/outercache.h \
    $(wildcard include/config/outer/cache/sync.h) \
    $(wildcard include/config/outer/cache.h) \
  include/linux/list.h \
    $(wildcard include/config/debug/list.h) \
  include/linux/poison.h \
    $(wildcard include/config/illegal/pointer/value.h) \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/include/uapi/linux/const.h \
  include/linux/spinlock_types.h \
    $(wildcard include/config/generic/lockbreak.h) \
    $(wildcard include/config/debug/spinlock.h) \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/spinlock_types.h \
  include/linux/lockdep.h \
    $(wildcard include/config/lockdep.h) \
    $(wildcard include/config/lock/stat.h) \
    $(wildcard include/config/prove/rcu.h) \
  include/linux/rwlock_types.h \
  include/linux/atomic.h \
    $(wildcard include/config/arch/has/atomic/or.h) \
    $(wildcard include/config/generic/atomic64.h) \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/atomic.h \
  include/linux/prefetch.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/processor.h \
    $(wildcard include/config/have/hw/breakpoint.h) \
    $(wildcard include/config/arm/errata/754327.h) \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/hw_breakpoint.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/unified.h \
    $(wildcard include/config/arm/asm/unified.h) \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/cmpxchg.h \
    $(wildcard include/config/cpu/sa1100.h) \
    $(wildcard include/config/cpu/sa110.h) \
    $(wildcard include/config/cpu/v6.h) \
  include/asm-generic/cmpxchg-local.h \
  include/asm-generic/atomic-long.h \
  include/linux/rwsem.h \
    $(wildcard include/config/rwsem/generic/spinlock.h) \
  include/linux/spinlock.h \
    $(wildcard include/config/preempt.h) \
  include/linux/preempt.h \
    $(wildcard include/config/debug/preempt.h) \
    $(wildcard include/config/preempt/count.h) \
    $(wildcard include/config/context/tracking.h) \
    $(wildcard include/config/preempt/notifiers.h) \
  arch/arm/include/generated/asm/preempt.h \
  include/asm-generic/preempt.h \
  include/linux/bottom_half.h \
  include/linux/preempt_mask.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/spinlock.h \
  include/linux/rwlock.h \
  include/linux/spinlock_api_smp.h \
    $(wildcard include/config/inline/spin/lock.h) \
    $(wildcard include/config/inline/spin/lock/bh.h) \
    $(wildcard include/config/inline/spin/lock/irq.h) \
    $(wildcard include/config/inline/spin/lock/irqsave.h) \
    $(wildcard include/config/inline/spin/trylock.h) \
    $(wildcard include/config/inline/spin/trylock/bh.h) \
    $(wildcard include/config/uninline/spin/unlock.h) \
    $(wildcard include/config/inline/spin/unlock/bh.h) \
    $(wildcard include/config/inline/spin/unlock/irq.h) \
    $(wildcard include/config/inline/spin/unlock/irqrestore.h) \
  include/linux/rwlock_api_smp.h \
    $(wildcard include/config/inline/read/lock.h) \
    $(wildcard include/config/inline/write/lock.h) \
    $(wildcard include/config/inline/read/lock/bh.h) \
    $(wildcard include/config/inline/write/lock/bh.h) \
    $(wildcard include/config/inline/read/lock/irq.h) \
    $(wildcard include/config/inline/write/lock/irq.h) \
    $(wildcard include/config/inline/read/lock/irqsave.h) \
    $(wildcard include/config/inline/write/lock/irqsave.h) \
    $(wildcard include/config/inline/read/trylock.h) \
    $(wildcard include/config/inline/write/trylock.h) \
    $(wildcard include/config/inline/read/unlock.h) \
    $(wildcard include/config/inline/write/unlock.h) \
    $(wildcard include/config/inline/read/unlock/bh.h) \
    $(wildcard include/config/inline/write/unlock/bh.h) \
    $(wildcard include/config/inline/read/unlock/irq.h) \
    $(wildcard include/config/inline/write/unlock/irq.h) \
    $(wildcard include/config/inline/read/unlock/irqrestore.h) \
    $(wildcard include/config/inline/write/unlock/irqrestore.h) \
  include/linux/rwsem-spinlock.h \
  include/linux/srcu.h \
  include/linux/rcupdate.h \
    $(wildcard include/config/rcu/torture/test.h) \
    $(wildcard include/config/tree/rcu.h) \
    $(wildcard include/config/tree/preempt/rcu.h) \
    $(wildcard include/config/rcu/trace.h) \
    $(wildcard include/config/preempt/rcu.h) \
    $(wildcard include/config/rcu/user/qs.h) \
    $(wildcard include/config/tiny/rcu.h) \
    $(wildcard include/config/debug/objects/rcu/head.h) \
    $(wildcard include/config/hotplug/cpu.h) \
    $(wildcard include/config/rcu/nocb/cpu.h) \
    $(wildcard include/config/no/hz/full/sysidle.h) \
  include/linux/threads.h \
    $(wildcard include/config/nr/cpus.h) \
    $(wildcard include/config/base/small.h) \
  include/linux/cpumask.h \
    $(wildcard include/config/cpumask/offstack.h) \
    $(wildcard include/config/debug/per/cpu/maps.h) \
    $(wildcard include/config/disable/obsolete/cpumask/functions.h) \
  include/linux/bitmap.h \
  include/linux/string.h \
    $(wildcard include/config/binary/printf.h) \
  include/uapi/linux/string.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/string.h \
  include/linux/seqlock.h \
  include/linux/completion.h \
  include/linux/wait.h \
  include/uapi/linux/wait.h \
  include/linux/debugobjects.h \
    $(wildcard include/config/debug/objects.h) \
    $(wildcard include/config/debug/objects/free.h) \
  include/linux/rcutree.h \
  include/linux/workqueue.h \
    $(wildcard include/config/debug/objects/work.h) \
    $(wildcard include/config/freezer.h) \
    $(wildcard include/config/sysfs.h) \
  include/linux/timer.h \
    $(wildcard include/config/timer/stats.h) \
    $(wildcard include/config/debug/objects/timers.h) \
  include/linux/ktime.h \
    $(wildcard include/config/ktime/scalar.h) \
  include/linux/time.h \
    $(wildcard include/config/arch/uses/gettimeoffset.h) \
  include/linux/math64.h \
    $(wildcard include/config/arch/supports/int128.h) \
  include/uapi/linux/time.h \
  include/linux/jiffies.h \
  include/linux/timex.h \
  include/uapi/linux/timex.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/include/uapi/linux/param.h \
  arch/arm/include/generated/asm/param.h \
  include/asm-generic/param.h \
    $(wildcard include/config/hz.h) \
  include/uapi/asm-generic/param.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/timex.h \
    $(wildcard include/config/arch/multiplatform.h) \
  include/linux/io.h \
    $(wildcard include/config/has/ioport.h) \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/io.h \
    $(wildcard include/config/need/mach/io/h.h) \
    $(wildcard include/config/pci.h) \
    $(wildcard include/config/pcmcia/soc/common.h) \
    $(wildcard include/config/isa.h) \
    $(wildcard include/config/pccard.h) \
  include/linux/blk_types.h \
    $(wildcard include/config/block.h) \
    $(wildcard include/config/blk/cgroup.h) \
    $(wildcard include/config/blk/dev/integrity.h) \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/memory.h \
    $(wildcard include/config/need/mach/memory/h.h) \
    $(wildcard include/config/page/offset.h) \
    $(wildcard include/config/highmem.h) \
    $(wildcard include/config/dram/size.h) \
    $(wildcard include/config/dram/base.h) \
    $(wildcard include/config/have/tcm.h) \
    $(wildcard include/config/phys/offset.h) \
    $(wildcard include/config/arm/patch/phys/virt.h) \
    $(wildcard include/config/virt/to/bus.h) \
  include/linux/sizes.h \
  include/asm-generic/memory_model.h \
    $(wildcard include/config/flatmem.h) \
    $(wildcard include/config/discontigmem.h) \
    $(wildcard include/config/sparsemem/vmemmap.h) \
    $(wildcard include/config/sparsemem.h) \
  include/asm-generic/pci_iomap.h \
    $(wildcard include/config/no/generic/pci/ioport/map.h) \
    $(wildcard include/config/generic/pci/iomap.h) \
  include/xen/xen.h \
    $(wildcard include/config/xen.h) \
    $(wildcard include/config/xen/dom0.h) \
    $(wildcard include/config/xen/pvh.h) \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/page.h \
    $(wildcard include/config/cpu/copy/v4wt.h) \
    $(wildcard include/config/cpu/copy/v4wb.h) \
    $(wildcard include/config/cpu/copy/feroceon.h) \
    $(wildcard include/config/cpu/copy/fa.h) \
    $(wildcard include/config/cpu/xscale.h) \
    $(wildcard include/config/cpu/copy/v6.h) \
    $(wildcard include/config/kuser/helpers.h) \
    $(wildcard include/config/have/arch/pfn/valid.h) \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/glue.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/pgtable-3level-types.h \
  include/asm-generic/getorder.h \
  include/linux/console.h \
    $(wildcard include/config/hw/console.h) \
    $(wildcard include/config/tty.h) \
    $(wildcard include/config/vga/console.h) \
  include/linux/clocksource.h \
    $(wildcard include/config/arch/clocksource/data.h) \
    $(wildcard include/config/clocksource/watchdog.h) \
    $(wildcard include/config/clksrc/of.h) \
  include/linux/delay.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/delay.h \
  include/linux/device.h \
    $(wildcard include/config/debug/devres.h) \
    $(wildcard include/config/acpi.h) \
    $(wildcard include/config/pinctrl.h) \
    $(wildcard include/config/numa.h) \
    $(wildcard include/config/dma/cma.h) \
    $(wildcard include/config/devtmpfs.h) \
    $(wildcard include/config/sysfs/deprecated.h) \
  include/linux/ioport.h \
    $(wildcard include/config/memory/hotremove.h) \
  include/linux/kobject.h \
    $(wildcard include/config/debug/kobject/release.h) \
  include/linux/sysfs.h \
  include/linux/kernfs.h \
  include/linux/idr.h \
  include/linux/rbtree.h \
  include/linux/kobject_ns.h \
  include/linux/stat.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/uapi/asm/stat.h \
  include/uapi/linux/stat.h \
  include/linux/uidgid.h \
    $(wildcard include/config/user/ns.h) \
  include/linux/highuid.h \
  include/linux/kref.h \
  include/linux/klist.h \
  include/linux/pinctrl/devinfo.h \
    $(wildcard include/config/pm.h) \
  include/linux/pm.h \
    $(wildcard include/config/vt/console/sleep.h) \
    $(wildcard include/config/pm/runtime.h) \
    $(wildcard include/config/pm/clk.h) \
    $(wildcard include/config/pm/generic/domains.h) \
  include/linux/ratelimit.h \
  include/linux/gfp.h \
    $(wildcard include/config/zone/dma.h) \
    $(wildcard include/config/zone/dma32.h) \
    $(wildcard include/config/cma.h) \
  include/linux/mmdebug.h \
    $(wildcard include/config/debug/vm.h) \
    $(wildcard include/config/debug/virtual.h) \
  include/linux/mmzone.h \
    $(wildcard include/config/force/max/zoneorder.h) \
    $(wildcard include/config/memory/isolation.h) \
    $(wildcard include/config/memcg.h) \
    $(wildcard include/config/compaction.h) \
    $(wildcard include/config/memory/hotplug.h) \
    $(wildcard include/config/have/memblock/node/map.h) \
    $(wildcard include/config/flat/node/mem/map.h) \
    $(wildcard include/config/no/bootmem.h) \
    $(wildcard include/config/numa/balancing.h) \
    $(wildcard include/config/have/memory/present.h) \
    $(wildcard include/config/have/memoryless/nodes.h) \
    $(wildcard include/config/need/node/memmap/size.h) \
    $(wildcard include/config/need/multiple/nodes.h) \
    $(wildcard include/config/have/arch/early/pfn/to/nid.h) \
    $(wildcard include/config/sparsemem/extreme.h) \
    $(wildcard include/config/nodes/span/other/nodes.h) \
    $(wildcard include/config/holes/in/zone.h) \
    $(wildcard include/config/arch/has/holes/memorymodel.h) \
  include/linux/numa.h \
    $(wildcard include/config/nodes/shift.h) \
  include/linux/nodemask.h \
    $(wildcard include/config/movable/node.h) \
  include/linux/pageblock-flags.h \
    $(wildcard include/config/hugetlb/page.h) \
    $(wildcard include/config/hugetlb/page/size/variable.h) \
  include/linux/page-flags-layout.h \
  include/generated/bounds.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/sparsemem.h \
  include/linux/memory_hotplug.h \
    $(wildcard include/config/have/arch/nodedata/extension.h) \
    $(wildcard include/config/have/bootmem/info/node.h) \
  include/linux/topology.h \
    $(wildcard include/config/sched/smt.h) \
    $(wildcard include/config/sched/mc.h) \
    $(wildcard include/config/sched/book.h) \
    $(wildcard include/config/use/percpu/numa/node/id.h) \
  include/linux/smp.h \
  include/linux/llist.h \
    $(wildcard include/config/arch/have/nmi/safe/cmpxchg.h) \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/smp.h \
  include/linux/percpu.h \
    $(wildcard include/config/need/per/cpu/embed/first/chunk.h) \
    $(wildcard include/config/need/per/cpu/page/first/chunk.h) \
    $(wildcard include/config/have/setup/per/cpu/area.h) \
  include/linux/pfn.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/percpu.h \
  include/asm-generic/percpu.h \
  include/linux/percpu-defs.h \
    $(wildcard include/config/debug/force/weak/per/cpu.h) \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/topology.h \
    $(wildcard include/config/arm/cpu/topology.h) \
  include/asm-generic/topology.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/device.h \
    $(wildcard include/config/dmabounce.h) \
    $(wildcard include/config/iommu/api.h) \
    $(wildcard include/config/arm/dma/use/iommu.h) \
    $(wildcard include/config/arch/omap.h) \
  include/linux/pm_wakeup.h \
  include/linux/dma-contiguous.h \
  include/linux/of_address.h \
    $(wildcard include/config/of/address.h) \
  include/linux/of.h \
    $(wildcard include/config/sparc.h) \
    $(wildcard include/config/of/dynamic.h) \
    $(wildcard include/config/attach/node.h) \
    $(wildcard include/config/detach/node.h) \
    $(wildcard include/config/add/property.h) \
    $(wildcard include/config/remove/property.h) \
    $(wildcard include/config/update/property.h) \
    $(wildcard include/config/proc/fs.h) \
    $(wildcard include/config/proc/devicetree.h) \
  include/linux/mod_devicetable.h \
  include/linux/uuid.h \
  include/uapi/linux/uuid.h \
  include/linux/of_irq.h \
    $(wildcard include/config/ppc32.h) \
    $(wildcard include/config/ppc/pmac.h) \
    $(wildcard include/config/of/irq.h) \
  include/linux/irq.h \
    $(wildcard include/config/generic/pending/irq.h) \
    $(wildcard include/config/hardirqs/sw/resend.h) \
  include/linux/irqreturn.h \
  include/linux/irqnr.h \
  include/uapi/linux/irqnr.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/irq.h \
    $(wildcard include/config/sparse/irq.h) \
    $(wildcard include/config/multi/irq/handler.h) \
  arch/arm/include/generated/asm/irq_regs.h \
  include/asm-generic/irq_regs.h \
  include/linux/irqdesc.h \
    $(wildcard include/config/irq/preflow/fasteoi.h) \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/hw_irq.h \
  include/linux/irqdomain.h \
    $(wildcard include/config/irq/domain.h) \
  include/linux/radix-tree.h \
  include/linux/of_platform.h \
  include/linux/of_device.h \
  include/linux/cpu.h \
    $(wildcard include/config/arch/has/cpu/autoprobe.h) \
    $(wildcard include/config/pm/sleep/smp.h) \
  include/linux/node.h \
    $(wildcard include/config/memory/hotplug/sparse.h) \
    $(wildcard include/config/hugetlbfs.h) \
  include/linux/platform_device.h \
    $(wildcard include/config/suspend.h) \
    $(wildcard include/config/hibernate/callbacks.h) \
  include/linux/brcmstb/brcmstb.h \
    $(wildcard include/config/mips.h) \
    $(wildcard include/config/bcm3390a0.h) \
    $(wildcard include/config/bcm7145a0.h) \
    $(wildcard include/config/bcm7145b0.h) \
    $(wildcard include/config/bcm7250b0.h) \
    $(wildcard include/config/bcm7364a0.h) \
    $(wildcard include/config/bcm7366b0.h) \
    $(wildcard include/config/bcm7366c0.h) \
    $(wildcard include/config/bcm74371a0.h) \
    $(wildcard include/config/bcm7439a0.h) \
    $(wildcard include/config/bcm7439b0.h) \
    $(wildcard include/config/bcm7445d0.h) \
  include/linux/brcmstb/7439b0/bchp_aon_ctrl.h \
  include/linux/brcmstb/7439b0/bchp_aon_pin_ctrl.h \
  include/linux/brcmstb/7439b0/bchp_aon_pm_l2.h \
  include/linux/brcmstb/7439b0/bchp_bspi.h \
  include/linux/brcmstb/7439b0/bchp_bspi_raf.h \
  include/linux/brcmstb/7439b0/bchp_clkgen.h \
  include/linux/brcmstb/7439b0/bchp_common.h \
    $(wildcard include/config/reg/start.h) \
    $(wildcard include/config/reg/end.h) \
    $(wildcard include/config/registers/reg/start.h) \
    $(wildcard include/config/registers/reg/end.h) \
  include/linux/brcmstb/7439b0/bchp_ddr34_phy_byte_lane_0_0.h \
    $(wildcard include/config/reserved0/mask.h) \
    $(wildcard include/config/reserved0/shift.h) \
    $(wildcard include/config/ck/ldo/pwrdown/mask.h) \
    $(wildcard include/config/ck/ldo/pwrdown/shift.h) \
    $(wildcard include/config/ck/ldo/pwrdown/default.h) \
    $(wildcard include/config/ck/ldo/ref/sel/mask.h) \
    $(wildcard include/config/ck/ldo/ref/sel/shift.h) \
    $(wildcard include/config/ck/ldo/ref/sel/default.h) \
    $(wildcard include/config/ck/ldo/ref/ctrl/mask.h) \
    $(wildcard include/config/ck/ldo/ref/ctrl/shift.h) \
    $(wildcard include/config/ck/ldo/ref/ctrl/default.h) \
    $(wildcard include/config/ck/ldo/bias/mask.h) \
    $(wildcard include/config/ck/ldo/bias/shift.h) \
    $(wildcard include/config/ck/ldo/bias/default.h) \
  include/linux/brcmstb/7439b0/bchp_ddr34_phy_byte_lane_1_0.h \
  include/linux/brcmstb/7439b0/bchp_ddr34_phy_byte_lane_2_0.h \
  include/linux/brcmstb/7439b0/bchp_ddr34_phy_byte_lane_3_0.h \
  include/linux/brcmstb/7439b0/bchp_ddr34_phy_control_regs_0.h \
    $(wildcard include/config/pll/ldo/dvdd1p0v/output/v/mask.h) \
    $(wildcard include/config/pll/ldo/dvdd1p0v/output/v/shift.h) \
    $(wildcard include/config/pll/ldo/dvdd1p0v/output/v/default.h) \
    $(wildcard include/config/pll/ldo/avdd1p0v/output/v/mask.h) \
    $(wildcard include/config/pll/ldo/avdd1p0v/output/v/shift.h) \
    $(wildcard include/config/pll/ldo/avdd1p0v/output/v/default.h) \
    $(wildcard include/config/pll/ldo/dvdd1p0v/bleeding/i/mask.h) \
    $(wildcard include/config/pll/ldo/dvdd1p0v/bleeding/i/shift.h) \
    $(wildcard include/config/pll/ldo/dvdd1p0v/bleeding/i/default.h) \
    $(wildcard include/config/pll/ldo/avdd1p0v/bleeding/i/mask.h) \
    $(wildcard include/config/pll/ldo/avdd1p0v/bleeding/i/shift.h) \
    $(wildcard include/config/pll/ldo/avdd1p0v/bleeding/i/default.h) \
    $(wildcard include/config/ck/ldo/bias20/mask.h) \
    $(wildcard include/config/ck/ldo/bias20/shift.h) \
    $(wildcard include/config/ck/ldo/bias20/default.h) \
    $(wildcard include/config/pll/ldo/pwrdown/mask.h) \
    $(wildcard include/config/pll/ldo/pwrdown/shift.h) \
    $(wildcard include/config/pll/ldo/pwrdown/default.h) \
    $(wildcard include/config/hold/mask.h) \
    $(wildcard include/config/hold/shift.h) \
    $(wildcard include/config/hold/default.h) \
    $(wildcard include/config/enable/mask.h) \
    $(wildcard include/config/enable/shift.h) \
    $(wildcard include/config/enable/default.h) \
    $(wildcard include/config/fb/offset/mask.h) \
    $(wildcard include/config/fb/offset/shift.h) \
    $(wildcard include/config/fb/offset/default.h) \
    $(wildcard include/config/reserved1/mask.h) \
    $(wildcard include/config/reserved1/shift.h) \
    $(wildcard include/config/enable/ext/ctrl/mask.h) \
    $(wildcard include/config/enable/ext/ctrl/shift.h) \
    $(wildcard include/config/enable/ext/ctrl/default.h) \
    $(wildcard include/config/reset/post/div/mask.h) \
    $(wildcard include/config/reset/post/div/shift.h) \
    $(wildcard include/config/reset/post/div/default.h) \
    $(wildcard include/config/iso/out/mask.h) \
    $(wildcard include/config/iso/out/shift.h) \
    $(wildcard include/config/iso/out/default.h) \
    $(wildcard include/config/iso/in/mask.h) \
    $(wildcard include/config/iso/in/shift.h) \
    $(wildcard include/config/iso/in/default.h) \
    $(wildcard include/config/reset/mask.h) \
    $(wildcard include/config/reset/shift.h) \
    $(wildcard include/config/reset/default.h) \
    $(wildcard include/config/pwrdn/mask.h) \
    $(wildcard include/config/pwrdn/shift.h) \
    $(wildcard include/config/pwrdn/default.h) \
    $(wildcard include/config/init/mode/mask.h) \
    $(wildcard include/config/init/mode/shift.h) \
    $(wildcard include/config/init/mode/default.h) \
    $(wildcard include/config/ecc/enabled/mask.h) \
    $(wildcard include/config/ecc/enabled/shift.h) \
    $(wildcard include/config/ecc/enabled/default.h) \
    $(wildcard include/config/split/dq/bus/mask.h) \
    $(wildcard include/config/split/dq/bus/shift.h) \
    $(wildcard include/config/split/dq/bus/default.h) \
    $(wildcard include/config/bus16/mask.h) \
    $(wildcard include/config/bus16/shift.h) \
    $(wildcard include/config/bus16/default.h) \
    $(wildcard include/config/bus8/mask.h) \
    $(wildcard include/config/bus8/shift.h) \
    $(wildcard include/config/bus8/default.h) \
    $(wildcard include/config/crc/enabled/mask.h) \
    $(wildcard include/config/crc/enabled/shift.h) \
    $(wildcard include/config/crc/enabled/default.h) \
    $(wildcard include/config/ddr4/geardown/enable/mask.h) \
    $(wildcard include/config/ddr4/geardown/enable/shift.h) \
    $(wildcard include/config/ddr4/geardown/enable/default.h) \
    $(wildcard include/config/edc/mode/mask.h) \
    $(wildcard include/config/edc/mode/shift.h) \
    $(wildcard include/config/edc/mode/default.h) \
    $(wildcard include/config/rdqs/mode/mask.h) \
    $(wildcard include/config/rdqs/mode/shift.h) \
    $(wildcard include/config/rdqs/mode/default.h) \
    $(wildcard include/config/group/bits/mask.h) \
    $(wildcard include/config/group/bits/shift.h) \
    $(wildcard include/config/group/bits/default.h) \
    $(wildcard include/config/bank/bits/mask.h) \
    $(wildcard include/config/bank/bits/shift.h) \
    $(wildcard include/config/bank/bits/default.h) \
    $(wildcard include/config/col/bits/mask.h) \
    $(wildcard include/config/col/bits/shift.h) \
    $(wildcard include/config/col/bits/default.h) \
    $(wildcard include/config/row/bits/mask.h) \
    $(wildcard include/config/row/bits/shift.h) \
    $(wildcard include/config/row/bits/default.h) \
    $(wildcard include/config/dram/type/mask.h) \
    $(wildcard include/config/dram/type/shift.h) \
    $(wildcard include/config/dram/type/default.h) \
  include/linux/brcmstb/7439b0/bchp_ebi.h \
    $(wildcard include/config/0.h) \
    $(wildcard include/config/1.h) \
    $(wildcard include/config/2.h) \
    $(wildcard include/config/3.h) \
    $(wildcard include/config/4.h) \
    $(wildcard include/config/5.h) \
    $(wildcard include/config/6.h) \
    $(wildcard include/config/0/mem/io/mask.h) \
    $(wildcard include/config/0/mem/io/shift.h) \
    $(wildcard include/config/0/mem/io/default.h) \
    $(wildcard include/config/0/ta/wait/mask.h) \
    $(wildcard include/config/0/ta/wait/shift.h) \
    $(wildcard include/config/0/ta/wait/default.h) \
    $(wildcard include/config/0/wp/mask.h) \
    $(wildcard include/config/0/wp/shift.h) \
    $(wildcard include/config/0/wp/default.h) \
    $(wildcard include/config/0/wait/count/mask.h) \
    $(wildcard include/config/0/wait/count/shift.h) \
    $(wildcard include/config/0/wait/count/default.h) \
    $(wildcard include/config/0/t/hold/mask.h) \
    $(wildcard include/config/0/t/hold/shift.h) \
    $(wildcard include/config/0/t/hold/default.h) \
    $(wildcard include/config/0/t/setup/mask.h) \
    $(wildcard include/config/0/t/setup/shift.h) \
    $(wildcard include/config/0/t/setup/default.h) \
    $(wildcard include/config/0/cs/hold/mask.h) \
    $(wildcard include/config/0/cs/hold/shift.h) \
    $(wildcard include/config/0/cs/hold/default.h) \
    $(wildcard include/config/0/split/cs/mask.h) \
    $(wildcard include/config/0/split/cs/shift.h) \
    $(wildcard include/config/0/split/cs/default.h) \
    $(wildcard include/config/0/mask/en/mask.h) \
    $(wildcard include/config/0/mask/en/shift.h) \
    $(wildcard include/config/0/mask/en/default.h) \
    $(wildcard include/config/0/ne/sample/mask.h) \
    $(wildcard include/config/0/ne/sample/shift.h) \
    $(wildcard include/config/0/ne/sample/default.h) \
    $(wildcard include/config/0/m68k/mask.h) \
    $(wildcard include/config/0/m68k/shift.h) \
    $(wildcard include/config/0/m68k/default.h) \
    $(wildcard include/config/0/le/mask.h) \
    $(wildcard include/config/0/le/shift.h) \
    $(wildcard include/config/0/fast/read/mask.h) \
    $(wildcard include/config/0/fast/read/shift.h) \
    $(wildcard include/config/0/fast/read/default.h) \
    $(wildcard include/config/0/fast/read/normal.h) \
    $(wildcard include/config/0/fast/read/fast/read/enable.h) \
    $(wildcard include/config/0/size/sel/mask.h) \
    $(wildcard include/config/0/size/sel/shift.h) \
    $(wildcard include/config/0/size/sel/default.h) \
    $(wildcard include/config/0/sync/mask.h) \
    $(wildcard include/config/0/sync/shift.h) \
    $(wildcard include/config/0/sync/default.h) \
    $(wildcard include/config/0/polarity/mask.h) \
    $(wildcard include/config/0/polarity/shift.h) \
    $(wildcard include/config/0/polarity/default.h) \
    $(wildcard include/config/0/we/ctl/mask.h) \
    $(wildcard include/config/0/we/ctl/shift.h) \
    $(wildcard include/config/0/we/ctl/default.h) \
    $(wildcard include/config/0/dest/size/mask.h) \
    $(wildcard include/config/0/dest/size/shift.h) \
    $(wildcard include/config/0/ms/inh/mask.h) \
    $(wildcard include/config/0/ms/inh/shift.h) \
    $(wildcard include/config/0/ms/inh/default.h) \
    $(wildcard include/config/0/ls/inh/mask.h) \
    $(wildcard include/config/0/ls/inh/shift.h) \
    $(wildcard include/config/0/ls/inh/default.h) \
    $(wildcard include/config/0/bcachen/mask.h) \
    $(wildcard include/config/0/bcachen/shift.h) \
    $(wildcard include/config/0/bcachen/default.h) \
    $(wildcard include/config/0/enable/mask.h) \
    $(wildcard include/config/0/enable/shift.h) \
    $(wildcard include/config/0/enable/default.h) \
    $(wildcard include/config/1/mem/io/mask.h) \
    $(wildcard include/config/1/mem/io/shift.h) \
    $(wildcard include/config/1/mem/io/default.h) \
    $(wildcard include/config/1/ta/wait/mask.h) \
    $(wildcard include/config/1/ta/wait/shift.h) \
    $(wildcard include/config/1/ta/wait/default.h) \
    $(wildcard include/config/1/wp/mask.h) \
    $(wildcard include/config/1/wp/shift.h) \
    $(wildcard include/config/1/wp/default.h) \
    $(wildcard include/config/1/wait/count/mask.h) \
    $(wildcard include/config/1/wait/count/shift.h) \
    $(wildcard include/config/1/wait/count/default.h) \
    $(wildcard include/config/1/t/hold/mask.h) \
    $(wildcard include/config/1/t/hold/shift.h) \
    $(wildcard include/config/1/t/hold/default.h) \
    $(wildcard include/config/1/t/setup/mask.h) \
    $(wildcard include/config/1/t/setup/shift.h) \
    $(wildcard include/config/1/t/setup/default.h) \
    $(wildcard include/config/1/cs/hold/mask.h) \
    $(wildcard include/config/1/cs/hold/shift.h) \
    $(wildcard include/config/1/cs/hold/default.h) \
    $(wildcard include/config/1/split/cs/mask.h) \
    $(wildcard include/config/1/split/cs/shift.h) \
    $(wildcard include/config/1/split/cs/default.h) \
    $(wildcard include/config/1/mask/en/mask.h) \
    $(wildcard include/config/1/mask/en/shift.h) \
    $(wildcard include/config/1/mask/en/default.h) \
    $(wildcard include/config/1/ne/sample/mask.h) \
    $(wildcard include/config/1/ne/sample/shift.h) \
    $(wildcard include/config/1/ne/sample/default.h) \
    $(wildcard include/config/1/m68k/mask.h) \
    $(wildcard include/config/1/m68k/shift.h) \
    $(wildcard include/config/1/m68k/default.h) \
    $(wildcard include/config/1/le/mask.h) \
    $(wildcard include/config/1/le/shift.h) \
    $(wildcard include/config/1/le/default.h) \
    $(wildcard include/config/1/fast/read/mask.h) \
    $(wildcard include/config/1/fast/read/shift.h) \
    $(wildcard include/config/1/fast/read/default.h) \
    $(wildcard include/config/1/fast/read/normal.h) \
    $(wildcard include/config/1/fast/read/fast/read/enable.h) \
    $(wildcard include/config/1/size/sel/mask.h) \
    $(wildcard include/config/1/size/sel/shift.h) \
    $(wildcard include/config/1/size/sel/default.h) \
    $(wildcard include/config/1/sync/mask.h) \
    $(wildcard include/config/1/sync/shift.h) \
    $(wildcard include/config/1/sync/default.h) \
    $(wildcard include/config/1/polarity/mask.h) \
    $(wildcard include/config/1/polarity/shift.h) \
    $(wildcard include/config/1/polarity/default.h) \
    $(wildcard include/config/1/we/ctl/mask.h) \
    $(wildcard include/config/1/we/ctl/shift.h) \
    $(wildcard include/config/1/we/ctl/default.h) \
    $(wildcard include/config/1/dest/size/mask.h) \
    $(wildcard include/config/1/dest/size/shift.h) \
    $(wildcard include/config/1/dest/size/default.h) \
    $(wildcard include/config/1/ms/inh/mask.h) \
    $(wildcard include/config/1/ms/inh/shift.h) \
    $(wildcard include/config/1/ms/inh/default.h) \
    $(wildcard include/config/1/ls/inh/mask.h) \
    $(wildcard include/config/1/ls/inh/shift.h) \
    $(wildcard include/config/1/ls/inh/default.h) \
    $(wildcard include/config/1/bcachen/mask.h) \
    $(wildcard include/config/1/bcachen/shift.h) \
    $(wildcard include/config/1/bcachen/default.h) \
    $(wildcard include/config/1/enable/mask.h) \
    $(wildcard include/config/1/enable/shift.h) \
    $(wildcard include/config/1/enable/default.h) \
    $(wildcard include/config/2/mem/io/mask.h) \
    $(wildcard include/config/2/mem/io/shift.h) \
    $(wildcard include/config/2/mem/io/default.h) \
    $(wildcard include/config/2/ta/wait/mask.h) \
    $(wildcard include/config/2/ta/wait/shift.h) \
    $(wildcard include/config/2/ta/wait/default.h) \
    $(wildcard include/config/2/wp/mask.h) \
    $(wildcard include/config/2/wp/shift.h) \
    $(wildcard include/config/2/wp/default.h) \
    $(wildcard include/config/2/wait/count/mask.h) \
    $(wildcard include/config/2/wait/count/shift.h) \
    $(wildcard include/config/2/wait/count/default.h) \
    $(wildcard include/config/2/t/hold/mask.h) \
    $(wildcard include/config/2/t/hold/shift.h) \
    $(wildcard include/config/2/t/hold/default.h) \
    $(wildcard include/config/2/t/setup/mask.h) \
    $(wildcard include/config/2/t/setup/shift.h) \
    $(wildcard include/config/2/t/setup/default.h) \
    $(wildcard include/config/2/cs/hold/mask.h) \
    $(wildcard include/config/2/cs/hold/shift.h) \
    $(wildcard include/config/2/cs/hold/default.h) \
    $(wildcard include/config/2/split/cs/mask.h) \
    $(wildcard include/config/2/split/cs/shift.h) \
    $(wildcard include/config/2/split/cs/default.h) \
    $(wildcard include/config/2/mask/en/mask.h) \
    $(wildcard include/config/2/mask/en/shift.h) \
    $(wildcard include/config/2/mask/en/default.h) \
    $(wildcard include/config/2/ne/sample/mask.h) \
    $(wildcard include/config/2/ne/sample/shift.h) \
    $(wildcard include/config/2/ne/sample/default.h) \
    $(wildcard include/config/2/m68k/mask.h) \
    $(wildcard include/config/2/m68k/shift.h) \
    $(wildcard include/config/2/m68k/default.h) \
    $(wildcard include/config/2/le/mask.h) \
    $(wildcard include/config/2/le/shift.h) \
    $(wildcard include/config/2/le/default.h) \
    $(wildcard include/config/2/fast/read/mask.h) \
    $(wildcard include/config/2/fast/read/shift.h) \
    $(wildcard include/config/2/fast/read/default.h) \
    $(wildcard include/config/2/fast/read/normal.h) \
    $(wildcard include/config/2/fast/read/fast/read/enable.h) \
    $(wildcard include/config/2/size/sel/mask.h) \
    $(wildcard include/config/2/size/sel/shift.h) \
    $(wildcard include/config/2/size/sel/default.h) \
    $(wildcard include/config/2/sync/mask.h) \
    $(wildcard include/config/2/sync/shift.h) \
    $(wildcard include/config/2/sync/default.h) \
    $(wildcard include/config/2/polarity/mask.h) \
    $(wildcard include/config/2/polarity/shift.h) \
    $(wildcard include/config/2/polarity/default.h) \
    $(wildcard include/config/2/we/ctl/mask.h) \
    $(wildcard include/config/2/we/ctl/shift.h) \
    $(wildcard include/config/2/we/ctl/default.h) \
    $(wildcard include/config/2/dest/size/mask.h) \
    $(wildcard include/config/2/dest/size/shift.h) \
    $(wildcard include/config/2/dest/size/default.h) \
    $(wildcard include/config/2/ms/inh/mask.h) \
    $(wildcard include/config/2/ms/inh/shift.h) \
    $(wildcard include/config/2/ms/inh/default.h) \
    $(wildcard include/config/2/ls/inh/mask.h) \
    $(wildcard include/config/2/ls/inh/shift.h) \
    $(wildcard include/config/2/ls/inh/default.h) \
    $(wildcard include/config/2/bcachen/mask.h) \
    $(wildcard include/config/2/bcachen/shift.h) \
    $(wildcard include/config/2/bcachen/default.h) \
    $(wildcard include/config/2/enable/mask.h) \
    $(wildcard include/config/2/enable/shift.h) \
    $(wildcard include/config/2/enable/default.h) \
    $(wildcard include/config/3/mem/io/mask.h) \
    $(wildcard include/config/3/mem/io/shift.h) \
    $(wildcard include/config/3/mem/io/default.h) \
    $(wildcard include/config/3/ta/wait/mask.h) \
    $(wildcard include/config/3/ta/wait/shift.h) \
    $(wildcard include/config/3/ta/wait/default.h) \
    $(wildcard include/config/3/wp/mask.h) \
    $(wildcard include/config/3/wp/shift.h) \
    $(wildcard include/config/3/wp/default.h) \
    $(wildcard include/config/3/wait/count/mask.h) \
    $(wildcard include/config/3/wait/count/shift.h) \
    $(wildcard include/config/3/wait/count/default.h) \
    $(wildcard include/config/3/t/hold/mask.h) \
    $(wildcard include/config/3/t/hold/shift.h) \
    $(wildcard include/config/3/t/hold/default.h) \
    $(wildcard include/config/3/t/setup/mask.h) \
    $(wildcard include/config/3/t/setup/shift.h) \
    $(wildcard include/config/3/t/setup/default.h) \
    $(wildcard include/config/3/cs/hold/mask.h) \
    $(wildcard include/config/3/cs/hold/shift.h) \
    $(wildcard include/config/3/cs/hold/default.h) \
    $(wildcard include/config/3/split/cs/mask.h) \
    $(wildcard include/config/3/split/cs/shift.h) \
    $(wildcard include/config/3/split/cs/default.h) \
    $(wildcard include/config/3/mask/en/mask.h) \
    $(wildcard include/config/3/mask/en/shift.h) \
    $(wildcard include/config/3/mask/en/default.h) \
    $(wildcard include/config/3/ne/sample/mask.h) \
    $(wildcard include/config/3/ne/sample/shift.h) \
    $(wildcard include/config/3/ne/sample/default.h) \
    $(wildcard include/config/3/m68k/mask.h) \
    $(wildcard include/config/3/m68k/shift.h) \
    $(wildcard include/config/3/m68k/default.h) \
    $(wildcard include/config/3/le/mask.h) \
    $(wildcard include/config/3/le/shift.h) \
    $(wildcard include/config/3/le/default.h) \
    $(wildcard include/config/3/fast/read/mask.h) \
    $(wildcard include/config/3/fast/read/shift.h) \
    $(wildcard include/config/3/fast/read/default.h) \
    $(wildcard include/config/3/fast/read/normal.h) \
    $(wildcard include/config/3/fast/read/fast/read/enable.h) \
    $(wildcard include/config/3/size/sel/mask.h) \
    $(wildcard include/config/3/size/sel/shift.h) \
    $(wildcard include/config/3/size/sel/default.h) \
    $(wildcard include/config/3/sync/mask.h) \
    $(wildcard include/config/3/sync/shift.h) \
    $(wildcard include/config/3/sync/default.h) \
    $(wildcard include/config/3/polarity/mask.h) \
    $(wildcard include/config/3/polarity/shift.h) \
    $(wildcard include/config/3/polarity/default.h) \
    $(wildcard include/config/3/we/ctl/mask.h) \
    $(wildcard include/config/3/we/ctl/shift.h) \
    $(wildcard include/config/3/we/ctl/default.h) \
    $(wildcard include/config/3/dest/size/mask.h) \
    $(wildcard include/config/3/dest/size/shift.h) \
    $(wildcard include/config/3/dest/size/default.h) \
    $(wildcard include/config/3/ms/inh/mask.h) \
    $(wildcard include/config/3/ms/inh/shift.h) \
    $(wildcard include/config/3/ms/inh/default.h) \
    $(wildcard include/config/3/ls/inh/mask.h) \
    $(wildcard include/config/3/ls/inh/shift.h) \
    $(wildcard include/config/3/ls/inh/default.h) \
    $(wildcard include/config/3/bcachen/mask.h) \
    $(wildcard include/config/3/bcachen/shift.h) \
    $(wildcard include/config/3/bcachen/default.h) \
    $(wildcard include/config/3/enable/mask.h) \
    $(wildcard include/config/3/enable/shift.h) \
    $(wildcard include/config/3/enable/default.h) \
    $(wildcard include/config/4/mem/io/mask.h) \
    $(wildcard include/config/4/mem/io/shift.h) \
    $(wildcard include/config/4/mem/io/default.h) \
    $(wildcard include/config/4/ta/wait/mask.h) \
    $(wildcard include/config/4/ta/wait/shift.h) \
    $(wildcard include/config/4/ta/wait/default.h) \
    $(wildcard include/config/4/wp/mask.h) \
    $(wildcard include/config/4/wp/shift.h) \
    $(wildcard include/config/4/wp/default.h) \
    $(wildcard include/config/4/wait/count/mask.h) \
    $(wildcard include/config/4/wait/count/shift.h) \
    $(wildcard include/config/4/wait/count/default.h) \
    $(wildcard include/config/4/t/hold/mask.h) \
    $(wildcard include/config/4/t/hold/shift.h) \
    $(wildcard include/config/4/t/hold/default.h) \
    $(wildcard include/config/4/t/setup/mask.h) \
    $(wildcard include/config/4/t/setup/shift.h) \
    $(wildcard include/config/4/t/setup/default.h) \
    $(wildcard include/config/4/cs/hold/mask.h) \
    $(wildcard include/config/4/cs/hold/shift.h) \
    $(wildcard include/config/4/cs/hold/default.h) \
    $(wildcard include/config/4/split/cs/mask.h) \
    $(wildcard include/config/4/split/cs/shift.h) \
    $(wildcard include/config/4/split/cs/default.h) \
    $(wildcard include/config/4/mask/en/mask.h) \
    $(wildcard include/config/4/mask/en/shift.h) \
    $(wildcard include/config/4/mask/en/default.h) \
    $(wildcard include/config/4/ne/sample/mask.h) \
    $(wildcard include/config/4/ne/sample/shift.h) \
    $(wildcard include/config/4/ne/sample/default.h) \
    $(wildcard include/config/4/m68k/mask.h) \
    $(wildcard include/config/4/m68k/shift.h) \
    $(wildcard include/config/4/m68k/default.h) \
    $(wildcard include/config/4/le/mask.h) \
    $(wildcard include/config/4/le/shift.h) \
    $(wildcard include/config/4/le/default.h) \
    $(wildcard include/config/4/fast/read/mask.h) \
    $(wildcard include/config/4/fast/read/shift.h) \
    $(wildcard include/config/4/fast/read/default.h) \
    $(wildcard include/config/4/fast/read/normal.h) \
    $(wildcard include/config/4/fast/read/fast/read/enable.h) \
    $(wildcard include/config/4/size/sel/mask.h) \
    $(wildcard include/config/4/size/sel/shift.h) \
    $(wildcard include/config/4/size/sel/default.h) \
    $(wildcard include/config/4/sync/mask.h) \
    $(wildcard include/config/4/sync/shift.h) \
    $(wildcard include/config/4/sync/default.h) \
    $(wildcard include/config/4/polarity/mask.h) \
    $(wildcard include/config/4/polarity/shift.h) \
    $(wildcard include/config/4/polarity/default.h) \
    $(wildcard include/config/4/we/ctl/mask.h) \
    $(wildcard include/config/4/we/ctl/shift.h) \
    $(wildcard include/config/4/we/ctl/default.h) \
    $(wildcard include/config/4/dest/size/mask.h) \
    $(wildcard include/config/4/dest/size/shift.h) \
    $(wildcard include/config/4/dest/size/default.h) \
    $(wildcard include/config/4/ms/inh/mask.h) \
    $(wildcard include/config/4/ms/inh/shift.h) \
    $(wildcard include/config/4/ms/inh/default.h) \
    $(wildcard include/config/4/ls/inh/mask.h) \
    $(wildcard include/config/4/ls/inh/shift.h) \
    $(wildcard include/config/4/ls/inh/default.h) \
    $(wildcard include/config/4/bcachen/mask.h) \
    $(wildcard include/config/4/bcachen/shift.h) \
    $(wildcard include/config/4/bcachen/default.h) \
    $(wildcard include/config/4/enable/mask.h) \
    $(wildcard include/config/4/enable/shift.h) \
    $(wildcard include/config/4/enable/default.h) \
    $(wildcard include/config/5/mem/io/mask.h) \
    $(wildcard include/config/5/mem/io/shift.h) \
    $(wildcard include/config/5/mem/io/default.h) \
    $(wildcard include/config/5/ta/wait/mask.h) \
    $(wildcard include/config/5/ta/wait/shift.h) \
    $(wildcard include/config/5/ta/wait/default.h) \
    $(wildcard include/config/5/wp/mask.h) \
    $(wildcard include/config/5/wp/shift.h) \
    $(wildcard include/config/5/wp/default.h) \
    $(wildcard include/config/5/wait/count/mask.h) \
    $(wildcard include/config/5/wait/count/shift.h) \
    $(wildcard include/config/5/wait/count/default.h) \
    $(wildcard include/config/5/t/hold/mask.h) \
    $(wildcard include/config/5/t/hold/shift.h) \
    $(wildcard include/config/5/t/hold/default.h) \
    $(wildcard include/config/5/t/setup/mask.h) \
    $(wildcard include/config/5/t/setup/shift.h) \
    $(wildcard include/config/5/t/setup/default.h) \
    $(wildcard include/config/5/cs/hold/mask.h) \
    $(wildcard include/config/5/cs/hold/shift.h) \
    $(wildcard include/config/5/cs/hold/default.h) \
    $(wildcard include/config/5/split/cs/mask.h) \
    $(wildcard include/config/5/split/cs/shift.h) \
    $(wildcard include/config/5/split/cs/default.h) \
    $(wildcard include/config/5/mask/en/mask.h) \
    $(wildcard include/config/5/mask/en/shift.h) \
    $(wildcard include/config/5/mask/en/default.h) \
    $(wildcard include/config/5/ne/sample/mask.h) \
    $(wildcard include/config/5/ne/sample/shift.h) \
    $(wildcard include/config/5/ne/sample/default.h) \
    $(wildcard include/config/5/m68k/mask.h) \
    $(wildcard include/config/5/m68k/shift.h) \
    $(wildcard include/config/5/m68k/default.h) \
    $(wildcard include/config/5/le/mask.h) \
    $(wildcard include/config/5/le/shift.h) \
    $(wildcard include/config/5/le/default.h) \
    $(wildcard include/config/5/fast/read/mask.h) \
    $(wildcard include/config/5/fast/read/shift.h) \
    $(wildcard include/config/5/fast/read/default.h) \
    $(wildcard include/config/5/fast/read/normal.h) \
    $(wildcard include/config/5/fast/read/fast/read/enable.h) \
    $(wildcard include/config/5/size/sel/mask.h) \
    $(wildcard include/config/5/size/sel/shift.h) \
    $(wildcard include/config/5/size/sel/default.h) \
    $(wildcard include/config/5/sync/mask.h) \
    $(wildcard include/config/5/sync/shift.h) \
    $(wildcard include/config/5/sync/default.h) \
    $(wildcard include/config/5/polarity/mask.h) \
    $(wildcard include/config/5/polarity/shift.h) \
    $(wildcard include/config/5/polarity/default.h) \
    $(wildcard include/config/5/we/ctl/mask.h) \
    $(wildcard include/config/5/we/ctl/shift.h) \
    $(wildcard include/config/5/we/ctl/default.h) \
    $(wildcard include/config/5/dest/size/mask.h) \
    $(wildcard include/config/5/dest/size/shift.h) \
    $(wildcard include/config/5/dest/size/default.h) \
    $(wildcard include/config/5/ms/inh/mask.h) \
    $(wildcard include/config/5/ms/inh/shift.h) \
    $(wildcard include/config/5/ms/inh/default.h) \
    $(wildcard include/config/5/ls/inh/mask.h) \
    $(wildcard include/config/5/ls/inh/shift.h) \
    $(wildcard include/config/5/ls/inh/default.h) \
    $(wildcard include/config/5/bcachen/mask.h) \
    $(wildcard include/config/5/bcachen/shift.h) \
    $(wildcard include/config/5/bcachen/default.h) \
    $(wildcard include/config/5/enable/mask.h) \
    $(wildcard include/config/5/enable/shift.h) \
    $(wildcard include/config/5/enable/default.h) \
    $(wildcard include/config/6/mem/io/mask.h) \
    $(wildcard include/config/6/mem/io/shift.h) \
    $(wildcard include/config/6/mem/io/default.h) \
    $(wildcard include/config/6/ta/wait/mask.h) \
    $(wildcard include/config/6/ta/wait/shift.h) \
    $(wildcard include/config/6/ta/wait/default.h) \
    $(wildcard include/config/6/wp/mask.h) \
    $(wildcard include/config/6/wp/shift.h) \
    $(wildcard include/config/6/wp/default.h) \
    $(wildcard include/config/6/wait/count/mask.h) \
    $(wildcard include/config/6/wait/count/shift.h) \
    $(wildcard include/config/6/wait/count/default.h) \
    $(wildcard include/config/6/t/hold/mask.h) \
    $(wildcard include/config/6/t/hold/shift.h) \
    $(wildcard include/config/6/t/hold/default.h) \
    $(wildcard include/config/6/t/setup/mask.h) \
    $(wildcard include/config/6/t/setup/shift.h) \
    $(wildcard include/config/6/t/setup/default.h) \
    $(wildcard include/config/6/cs/hold/mask.h) \
    $(wildcard include/config/6/cs/hold/shift.h) \
    $(wildcard include/config/6/cs/hold/default.h) \
    $(wildcard include/config/6/split/cs/mask.h) \
    $(wildcard include/config/6/split/cs/shift.h) \
    $(wildcard include/config/6/split/cs/default.h) \
    $(wildcard include/config/6/mask/en/mask.h) \
    $(wildcard include/config/6/mask/en/shift.h) \
    $(wildcard include/config/6/mask/en/default.h) \
    $(wildcard include/config/6/ne/sample/mask.h) \
    $(wildcard include/config/6/ne/sample/shift.h) \
    $(wildcard include/config/6/ne/sample/default.h) \
    $(wildcard include/config/6/m68k/mask.h) \
    $(wildcard include/config/6/m68k/shift.h) \
    $(wildcard include/config/6/m68k/default.h) \
    $(wildcard include/config/6/le/mask.h) \
    $(wildcard include/config/6/le/shift.h) \
    $(wildcard include/config/6/le/default.h) \
    $(wildcard include/config/6/fast/read/mask.h) \
    $(wildcard include/config/6/fast/read/shift.h) \
    $(wildcard include/config/6/fast/read/default.h) \
    $(wildcard include/config/6/fast/read/normal.h) \
    $(wildcard include/config/6/fast/read/fast/read/enable.h) \
    $(wildcard include/config/6/size/sel/mask.h) \
    $(wildcard include/config/6/size/sel/shift.h) \
    $(wildcard include/config/6/size/sel/default.h) \
    $(wildcard include/config/6/sync/mask.h) \
    $(wildcard include/config/6/sync/shift.h) \
    $(wildcard include/config/6/sync/default.h) \
    $(wildcard include/config/6/polarity/mask.h) \
    $(wildcard include/config/6/polarity/shift.h) \
    $(wildcard include/config/6/polarity/default.h) \
    $(wildcard include/config/6/we/ctl/mask.h) \
    $(wildcard include/config/6/we/ctl/shift.h) \
    $(wildcard include/config/6/we/ctl/default.h) \
    $(wildcard include/config/6/dest/size/mask.h) \
    $(wildcard include/config/6/dest/size/shift.h) \
    $(wildcard include/config/6/dest/size/default.h) \
    $(wildcard include/config/6/ms/inh/mask.h) \
    $(wildcard include/config/6/ms/inh/shift.h) \
    $(wildcard include/config/6/ms/inh/default.h) \
    $(wildcard include/config/6/ls/inh/mask.h) \
    $(wildcard include/config/6/ls/inh/shift.h) \
    $(wildcard include/config/6/ls/inh/default.h) \
    $(wildcard include/config/6/bcachen/mask.h) \
    $(wildcard include/config/6/bcachen/shift.h) \
    $(wildcard include/config/6/bcachen/default.h) \
    $(wildcard include/config/6/enable/mask.h) \
    $(wildcard include/config/6/enable/shift.h) \
    $(wildcard include/config/6/enable/default.h) \
  include/linux/brcmstb/7439b0/bchp_gio.h \
  include/linux/brcmstb/7439b0/bchp_gio_aon.h \
  include/linux/brcmstb/7439b0/bchp_hif_continuation.h \
  include/linux/brcmstb/7439b0/bchp_hif_cpubiuctrl.h \
    $(wildcard include/config/reg.h) \
    $(wildcard include/config/reg/reserved0/mask.h) \
    $(wildcard include/config/reg/reserved0/shift.h) \
    $(wildcard include/config/reg/cpu3/bpcm/init/on/mask.h) \
    $(wildcard include/config/reg/cpu3/bpcm/init/on/shift.h) \
    $(wildcard include/config/reg/cpu3/bpcm/init/on/default.h) \
    $(wildcard include/config/reg/cpu2/bpcm/init/on/mask.h) \
    $(wildcard include/config/reg/cpu2/bpcm/init/on/shift.h) \
    $(wildcard include/config/reg/cpu2/bpcm/init/on/default.h) \
    $(wildcard include/config/reg/cpu1/bpcm/init/on/mask.h) \
    $(wildcard include/config/reg/cpu1/bpcm/init/on/shift.h) \
    $(wildcard include/config/reg/cpu1/bpcm/init/on/default.h) \
    $(wildcard include/config/reg/cpu0/bpcm/init/on/mask.h) \
    $(wildcard include/config/reg/cpu0/bpcm/init/on/shift.h) \
    $(wildcard include/config/reg/cpu0/bpcm/init/on/default.h) \
    $(wildcard include/config/reg/cpu3/bpcm/dis/mask.h) \
    $(wildcard include/config/reg/cpu3/bpcm/dis/shift.h) \
    $(wildcard include/config/reg/cpu3/bpcm/dis/default.h) \
    $(wildcard include/config/reg/cpu2/bpcm/dis/mask.h) \
    $(wildcard include/config/reg/cpu2/bpcm/dis/shift.h) \
    $(wildcard include/config/reg/cpu2/bpcm/dis/default.h) \
    $(wildcard include/config/reg/cpu1/bpcm/dis/mask.h) \
    $(wildcard include/config/reg/cpu1/bpcm/dis/shift.h) \
    $(wildcard include/config/reg/cpu1/bpcm/dis/default.h) \
    $(wildcard include/config/reg/cpu0/bpcm/dis/mask.h) \
    $(wildcard include/config/reg/cpu0/bpcm/dis/shift.h) \
    $(wildcard include/config/reg/cpu0/bpcm/dis/default.h) \
    $(wildcard include/config/reg/cpu3/reset/mask.h) \
    $(wildcard include/config/reg/cpu3/reset/shift.h) \
    $(wildcard include/config/reg/cpu3/reset/default.h) \
    $(wildcard include/config/reg/cpu2/reset/mask.h) \
    $(wildcard include/config/reg/cpu2/reset/shift.h) \
    $(wildcard include/config/reg/cpu2/reset/default.h) \
    $(wildcard include/config/reg/cpu1/reset/mask.h) \
    $(wildcard include/config/reg/cpu1/reset/shift.h) \
    $(wildcard include/config/reg/cpu1/reset/default.h) \
    $(wildcard include/config/reg/cpu0/reset/mask.h) \
    $(wildcard include/config/reg/cpu0/reset/shift.h) \
    $(wildcard include/config/reg/cpu0/reset/default.h) \
    $(wildcard include/config/reg/gic/clk/ratio/mask.h) \
    $(wildcard include/config/reg/gic/clk/ratio/shift.h) \
    $(wildcard include/config/reg/gic/clk/ratio/default.h) \
    $(wildcard include/config/reg/reserved1/mask.h) \
    $(wildcard include/config/reg/reserved1/shift.h) \
    $(wildcard include/config/reg/ubus/clk/en/mask.h) \
    $(wildcard include/config/reg/ubus/clk/en/shift.h) \
    $(wildcard include/config/reg/ubus/clk/en/default.h) \
    $(wildcard include/config/reg/safe/clk/mode/mask.h) \
    $(wildcard include/config/reg/safe/clk/mode/shift.h) \
    $(wildcard include/config/reg/safe/clk/mode/default.h) \
    $(wildcard include/config/reg/clk/ratio/mask.h) \
    $(wildcard include/config/reg/clk/ratio/shift.h) \
    $(wildcard include/config/reg/clk/ratio/default.h) \
    $(wildcard include/config/reg/misccommands/mask.h) \
    $(wildcard include/config/reg/misccommands/shift.h) \
    $(wildcard include/config/reg/misccommands/default.h) \
    $(wildcard include/config/reg/enable/pmuirq/mask.h) \
    $(wildcard include/config/reg/enable/pmuirq/shift.h) \
    $(wildcard include/config/reg/enable/pmuirq/default.h) \
    $(wildcard include/config/reg/vinithi/mask.h) \
    $(wildcard include/config/reg/vinithi/shift.h) \
    $(wildcard include/config/reg/vinithi/default.h) \
    $(wildcard include/config/reg/thermctl/mask.h) \
    $(wildcard include/config/reg/thermctl/shift.h) \
    $(wildcard include/config/reg/thermctl/default.h) \
    $(wildcard include/config/reg/irq/enable/low/mask.h) \
    $(wildcard include/config/reg/irq/enable/low/shift.h) \
    $(wildcard include/config/reg/irq/enable/low/default.h) \
    $(wildcard include/config/reg/irq/enable/high/mask.h) \
    $(wildcard include/config/reg/irq/enable/high/shift.h) \
    $(wildcard include/config/reg/irq/enable/high/default.h) \
    $(wildcard include/config/reg/temp/threshold/low/mask.h) \
    $(wildcard include/config/reg/temp/threshold/low/shift.h) \
    $(wildcard include/config/reg/temp/threshold/low/default.h) \
    $(wildcard include/config/reg/temp/threshold/high/mask.h) \
    $(wildcard include/config/reg/temp/threshold/high/shift.h) \
    $(wildcard include/config/reg/temp/threshold/high/default.h) \
    $(wildcard include/config/reg/broadcastinner/mask.h) \
    $(wildcard include/config/reg/broadcastinner/shift.h) \
    $(wildcard include/config/reg/broadcastinner/default.h) \
    $(wildcard include/config/reg/broadcastouter/mask.h) \
    $(wildcard include/config/reg/broadcastouter/shift.h) \
    $(wildcard include/config/reg/broadcastouter/default.h) \
    $(wildcard include/config/reg/broadcastcachemaint/mask.h) \
    $(wildcard include/config/reg/broadcastcachemaint/shift.h) \
    $(wildcard include/config/reg/broadcastcachemaint/default.h) \
    $(wildcard include/config/reg/sysbardisable/mask.h) \
    $(wildcard include/config/reg/sysbardisable/shift.h) \
    $(wildcard include/config/reg/sysbardisable/default.h) \
    $(wildcard include/config/uniq/pid/enable/mask.h) \
    $(wildcard include/config/uniq/pid/enable/shift.h) \
    $(wildcard include/config/uniq/pid/enable/default.h) \
    $(wildcard include/config/ubus/dev/fast/wr/mask.h) \
    $(wildcard include/config/ubus/dev/fast/wr/shift.h) \
    $(wildcard include/config/ubus/dev/fast/wr/default.h) \
    $(wildcard include/config/ubus/dev/fast/rd/mask.h) \
    $(wildcard include/config/ubus/dev/fast/rd/shift.h) \
    $(wildcard include/config/ubus/dev/fast/rd/default.h) \
    $(wildcard include/config/wr/with/ack/enable/mask.h) \
    $(wildcard include/config/wr/with/ack/enable/shift.h) \
    $(wildcard include/config/wr/with/ack/enable/default.h) \
    $(wildcard include/config/cd/ctrl/mask.h) \
    $(wildcard include/config/cd/ctrl/shift.h) \
    $(wildcard include/config/cd/ctrl/default.h) \
  include/linux/brcmstb/7439b0/bchp_hif_intr2.h \
  include/linux/brcmstb/7439b0/bchp_hif_mspi.h \
  include/linux/brcmstb/7439b0/bchp_hif_spi_intr2.h \
  include/linux/brcmstb/7439b0/bchp_hif_top_ctrl.h \
  include/linux/brcmstb/7439b0/bchp_irq0.h \
  include/linux/brcmstb/7439b0/bchp_irq1.h \
  include/linux/brcmstb/7439b0/bchp_memc_ddr_0.h \
    $(wildcard include/config/status.h) \
    $(wildcard include/config/groupage/enable/mask.h) \
    $(wildcard include/config/groupage/enable/shift.h) \
    $(wildcard include/config/groupage/enable/default.h) \
    $(wildcard include/config/modify/raster/addr/mask.h) \
    $(wildcard include/config/modify/raster/addr/shift.h) \
    $(wildcard include/config/modify/raster/addr/default.h) \
    $(wildcard include/config/dram/commands/2t/mask.h) \
    $(wildcard include/config/dram/commands/2t/shift.h) \
    $(wildcard include/config/dram/commands/2t/default.h) \
    $(wildcard include/config/dram/total/width/mask.h) \
    $(wildcard include/config/dram/total/width/shift.h) \
    $(wildcard include/config/dram/total/width/default.h) \
    $(wildcard include/config/dram/total/width/reserved/x8.h) \
    $(wildcard include/config/dram/total/width/x16.h) \
    $(wildcard include/config/dram/total/width/x32.h) \
    $(wildcard include/config/dram/total/width/reserved/x64.h) \
    $(wildcard include/config/dram/device/width/mask.h) \
    $(wildcard include/config/dram/device/width/shift.h) \
    $(wildcard include/config/dram/device/width/default.h) \
    $(wildcard include/config/dram/device/width/x8.h) \
    $(wildcard include/config/dram/device/width/x16.h) \
    $(wildcard include/config/dram/device/width/reserved/2.h) \
    $(wildcard include/config/dram/device/width/reserved/3.h) \
    $(wildcard include/config/dram/device/size/mask.h) \
    $(wildcard include/config/dram/device/size/shift.h) \
    $(wildcard include/config/dram/device/size/default.h) \
    $(wildcard include/config/dram/device/size/reserved/256/mb.h) \
    $(wildcard include/config/dram/device/size/512/mb.h) \
    $(wildcard include/config/dram/device/size/1/gb.h) \
    $(wildcard include/config/dram/device/size/2/gb.h) \
    $(wildcard include/config/dram/device/size/4/gb.h) \
    $(wildcard include/config/dram/device/size/8/gb.h) \
    $(wildcard include/config/dram/device/size/16/gb.h) \
    $(wildcard include/config/dram/device/size/reserved/7.h) \
    $(wildcard include/config/dram/device/size/reserved/8.h) \
    $(wildcard include/config/dram/device/size/reserved/9.h) \
    $(wildcard include/config/dram/device/size/reserved/10.h) \
    $(wildcard include/config/dram/device/size/reserved/11.h) \
    $(wildcard include/config/dram/device/size/reserved/12.h) \
    $(wildcard include/config/dram/device/size/reserved/13.h) \
    $(wildcard include/config/dram/device/size/reserved/14.h) \
    $(wildcard include/config/dram/device/size/reserved/15.h) \
    $(wildcard include/config/dram/device/type/mask.h) \
    $(wildcard include/config/dram/device/type/shift.h) \
    $(wildcard include/config/dram/device/type/default.h) \
    $(wildcard include/config/dram/device/type/reserved/ddr2.h) \
    $(wildcard include/config/dram/device/type/ddr3.h) \
    $(wildcard include/config/dram/device/type/ddr4.h) \
    $(wildcard include/config/dram/device/type/reserved/5.h) \
    $(wildcard include/config/dram/device/type/reserved/6.h) \
    $(wildcard include/config/dram/device/type/reserved/7.h) \
    $(wildcard include/config/dram/device/type/reserved/8.h) \
    $(wildcard include/config/dram/device/type/reserved/9.h) \
    $(wildcard include/config/dram/device/type/reserved/10.h) \
    $(wildcard include/config/dram/device/type/reserved/11.h) \
    $(wildcard include/config/dram/device/type/reserved/12.h) \
    $(wildcard include/config/dram/device/type/reserved/13.h) \
    $(wildcard include/config/dram/device/type/reserved/14.h) \
    $(wildcard include/config/dram/device/type/reserved/15.h) \
    $(wildcard include/config/status/reserved0/mask.h) \
    $(wildcard include/config/status/reserved0/shift.h) \
    $(wildcard include/config/status/groupage/enable/mask.h) \
    $(wildcard include/config/status/groupage/enable/shift.h) \
    $(wildcard include/config/status/groupage/enable/default.h) \
    $(wildcard include/config/status/modify/raster/addr/mask.h) \
    $(wildcard include/config/status/modify/raster/addr/shift.h) \
    $(wildcard include/config/status/modify/raster/addr/default.h) \
    $(wildcard include/config/status/dram/commands/2t/mask.h) \
    $(wildcard include/config/status/dram/commands/2t/shift.h) \
    $(wildcard include/config/status/dram/commands/2t/default.h) \
    $(wildcard include/config/status/dram/total/width/mask.h) \
    $(wildcard include/config/status/dram/total/width/shift.h) \
    $(wildcard include/config/status/dram/total/width/default.h) \
    $(wildcard include/config/status/dram/total/width/reserved/x8.h) \
    $(wildcard include/config/status/dram/total/width/x16.h) \
    $(wildcard include/config/status/dram/total/width/x32.h) \
    $(wildcard include/config/status/dram/total/width/reserved/x64.h) \
    $(wildcard include/config/status/dram/device/width/mask.h) \
    $(wildcard include/config/status/dram/device/width/shift.h) \
    $(wildcard include/config/status/dram/device/width/default.h) \
    $(wildcard include/config/status/dram/device/width/x8.h) \
    $(wildcard include/config/status/dram/device/width/x16.h) \
    $(wildcard include/config/status/dram/device/width/reserved/2.h) \
    $(wildcard include/config/status/dram/device/width/reserved/3.h) \
    $(wildcard include/config/status/dram/device/size/mask.h) \
    $(wildcard include/config/status/dram/device/size/shift.h) \
    $(wildcard include/config/status/dram/device/size/default.h) \
    $(wildcard include/config/status/dram/device/size/reserved/256/mb.h) \
    $(wildcard include/config/status/dram/device/size/512/mb.h) \
    $(wildcard include/config/status/dram/device/size/1/gb.h) \
    $(wildcard include/config/status/dram/device/size/2/gb.h) \
    $(wildcard include/config/status/dram/device/size/4/gb.h) \
    $(wildcard include/config/status/dram/device/size/8/gb.h) \
    $(wildcard include/config/status/dram/device/size/16/gb.h) \
    $(wildcard include/config/status/dram/device/size/reserved/7.h) \
    $(wildcard include/config/status/dram/device/size/reserved/8.h) \
    $(wildcard include/config/status/dram/device/size/reserved/9.h) \
    $(wildcard include/config/status/dram/device/size/reserved/10.h) \
    $(wildcard include/config/status/dram/device/size/reserved/11.h) \
    $(wildcard include/config/status/dram/device/size/reserved/12.h) \
    $(wildcard include/config/status/dram/device/size/reserved/13.h) \
    $(wildcard include/config/status/dram/device/size/reserved/14.h) \
    $(wildcard include/config/status/dram/device/size/reserved/15.h) \
    $(wildcard include/config/status/dram/device/type/mask.h) \
    $(wildcard include/config/status/dram/device/type/shift.h) \
    $(wildcard include/config/status/dram/device/type/default.h) \
    $(wildcard include/config/status/dram/device/type/reserved/ddr2.h) \
    $(wildcard include/config/status/dram/device/type/ddr3.h) \
    $(wildcard include/config/status/dram/device/type/ddr4.h) \
    $(wildcard include/config/status/dram/device/type/reserved/5.h) \
    $(wildcard include/config/status/dram/device/type/reserved/6.h) \
    $(wildcard include/config/status/dram/device/type/reserved/7.h) \
    $(wildcard include/config/status/dram/device/type/reserved/8.h) \
    $(wildcard include/config/status/dram/device/type/reserved/9.h) \
    $(wildcard include/config/status/dram/device/type/reserved/10.h) \
    $(wildcard include/config/status/dram/device/type/reserved/11.h) \
    $(wildcard include/config/status/dram/device/type/reserved/12.h) \
    $(wildcard include/config/status/dram/device/type/reserved/13.h) \
    $(wildcard include/config/status/dram/device/type/reserved/14.h) \
    $(wildcard include/config/status/dram/device/type/reserved/15.h) \
    $(wildcard include/config/force/ppd/exit/mask.h) \
    $(wildcard include/config/force/ppd/exit/shift.h) \
    $(wildcard include/config/force/ppd/exit/default.h) \
    $(wildcard include/config/ppd/force/mask.h) \
    $(wildcard include/config/ppd/force/shift.h) \
    $(wildcard include/config/ppd/force/default.h) \
    $(wildcard include/config/ppd/en/mask.h) \
    $(wildcard include/config/ppd/en/shift.h) \
    $(wildcard include/config/ppd/en/default.h) \
    $(wildcard include/config/inact/count/mask.h) \
    $(wildcard include/config/inact/count/shift.h) \
    $(wildcard include/config/inact/count/default.h) \
    $(wildcard include/config/force/srpd/exit/mask.h) \
    $(wildcard include/config/force/srpd/exit/shift.h) \
    $(wildcard include/config/force/srpd/exit/default.h) \
    $(wildcard include/config/srpd/en/mask.h) \
    $(wildcard include/config/srpd/en/shift.h) \
    $(wildcard include/config/srpd/en/default.h) \
  include/linux/brcmstb/7439b0/bchp_moca_hostmisc.h \
  include/linux/brcmstb/7439b0/bchp_nand.h \
    $(wildcard include/config/ext/cs0.h) \
    $(wildcard include/config/cs0.h) \
    $(wildcard include/config/ext/cs1.h) \
    $(wildcard include/config/cs1.h) \
    $(wildcard include/config/ext/cs2.h) \
    $(wildcard include/config/cs2.h) \
    $(wildcard include/config/ext/cs3.h) \
    $(wildcard include/config/cs3.h) \
    $(wildcard include/config/ext/cs4.h) \
    $(wildcard include/config/cs4.h) \
    $(wildcard include/config/ext/cs5.h) \
    $(wildcard include/config/cs5.h) \
    $(wildcard include/config/ext/cs6.h) \
    $(wildcard include/config/cs6.h) \
    $(wildcard include/config/mask.h) \
    $(wildcard include/config/shift.h) \
    $(wildcard include/config/ext/cs0/reserved0/mask.h) \
    $(wildcard include/config/ext/cs0/reserved0/shift.h) \
    $(wildcard include/config/ext/cs0/block/size/mask.h) \
    $(wildcard include/config/ext/cs0/block/size/shift.h) \
    $(wildcard include/config/ext/cs0/block/size/bk/size/8kb.h) \
    $(wildcard include/config/ext/cs0/block/size/bk/size/16kb.h) \
    $(wildcard include/config/ext/cs0/block/size/bk/size/32kb.h) \
    $(wildcard include/config/ext/cs0/block/size/bk/size/64kb.h) \
    $(wildcard include/config/ext/cs0/block/size/bk/size/128kb.h) \
    $(wildcard include/config/ext/cs0/block/size/bk/size/256kb.h) \
    $(wildcard include/config/ext/cs0/block/size/bk/size/512kb.h) \
    $(wildcard include/config/ext/cs0/block/size/bk/size/1024kb.h) \
    $(wildcard include/config/ext/cs0/block/size/bk/size/2048kb.h) \
    $(wildcard include/config/ext/cs0/block/size/bk/size/4096kb.h) \
    $(wildcard include/config/ext/cs0/block/size/bk/size/8192kb.h) \
    $(wildcard include/config/ext/cs0/page/size/mask.h) \
    $(wildcard include/config/ext/cs0/page/size/shift.h) \
    $(wildcard include/config/ext/cs0/page/size/pg/size/512.h) \
    $(wildcard include/config/ext/cs0/page/size/pg/size/1kb.h) \
    $(wildcard include/config/ext/cs0/page/size/pg/size/2kb.h) \
    $(wildcard include/config/ext/cs0/page/size/pg/size/4kb.h) \
    $(wildcard include/config/ext/cs0/page/size/pg/size/8kb.h) \
    $(wildcard include/config/ext/cs0/page/size/pg/size/16kb.h) \
    $(wildcard include/config/lock.h) \
    $(wildcard include/config/cs0/config/lock/mask.h) \
    $(wildcard include/config/lock/mask.h) \
    $(wildcard include/config/cs0/config/lock/shift.h) \
    $(wildcard include/config/lock/shift.h) \
    $(wildcard include/config/cs0/config/lock/default.h) \
    $(wildcard include/config/lock/default.h) \
    $(wildcard include/config/cs0/reserved0/mask.h) \
    $(wildcard include/config/cs0/reserved0/shift.h) \
    $(wildcard include/config/cs0/device/size/mask.h) \
    $(wildcard include/config/cs0/device/size/shift.h) \
    $(wildcard include/config/cs0/device/size/dvc/size/4mb.h) \
    $(wildcard include/config/cs0/device/size/dvc/size/8mb.h) \
    $(wildcard include/config/cs0/device/size/dvc/size/16mb.h) \
    $(wildcard include/config/cs0/device/size/dvc/size/32mb.h) \
    $(wildcard include/config/cs0/device/size/dvc/size/64mb.h) \
    $(wildcard include/config/cs0/device/size/dvc/size/128mb.h) \
    $(wildcard include/config/cs0/device/size/dvc/size/256mb.h) \
    $(wildcard include/config/cs0/device/size/dvc/size/512mb.h) \
    $(wildcard include/config/cs0/device/size/dvc/size/1gb.h) \
    $(wildcard include/config/cs0/device/size/dvc/size/2gb.h) \
    $(wildcard include/config/cs0/device/size/dvc/size/4gb.h) \
    $(wildcard include/config/cs0/device/size/dvc/size/8gb.h) \
    $(wildcard include/config/cs0/device/size/dvc/size/16gb.h) \
    $(wildcard include/config/cs0/device/size/dvc/size/32gb.h) \
    $(wildcard include/config/cs0/device/size/dvc/size/64gb.h) \
    $(wildcard include/config/cs0/device/size/dvc/size/128gb.h) \
    $(wildcard include/config/cs0/device/width/mask.h) \
    $(wildcard include/config/cs0/device/width/shift.h) \
    $(wildcard include/config/cs0/device/width/dvc/width/8.h) \
    $(wildcard include/config/cs0/device/width/dvc/width/16.h) \
    $(wildcard include/config/cs0/reserved1/mask.h) \
    $(wildcard include/config/cs0/reserved1/shift.h) \
    $(wildcard include/config/cs0/ful/adr/bytes/mask.h) \
    $(wildcard include/config/cs0/ful/adr/bytes/shift.h) \
    $(wildcard include/config/cs0/reserved2/mask.h) \
    $(wildcard include/config/cs0/reserved2/shift.h) \
    $(wildcard include/config/cs0/col/adr/bytes/mask.h) \
    $(wildcard include/config/cs0/col/adr/bytes/shift.h) \
    $(wildcard include/config/cs0/reserved3/mask.h) \
    $(wildcard include/config/cs0/reserved3/shift.h) \
    $(wildcard include/config/cs0/blk/adr/bytes/mask.h) \
    $(wildcard include/config/cs0/blk/adr/bytes/shift.h) \
    $(wildcard include/config/cs0/reserved4/mask.h) \
    $(wildcard include/config/cs0/reserved4/shift.h) \
    $(wildcard include/config/ext/cs1/reserved0/mask.h) \
    $(wildcard include/config/ext/cs1/reserved0/shift.h) \
    $(wildcard include/config/ext/cs1/block/size/mask.h) \
    $(wildcard include/config/ext/cs1/block/size/shift.h) \
    $(wildcard include/config/ext/cs1/block/size/bk/size/8kb.h) \
    $(wildcard include/config/ext/cs1/block/size/bk/size/16kb.h) \
    $(wildcard include/config/ext/cs1/block/size/bk/size/32kb.h) \
    $(wildcard include/config/ext/cs1/block/size/bk/size/64kb.h) \
    $(wildcard include/config/ext/cs1/block/size/bk/size/128kb.h) \
    $(wildcard include/config/ext/cs1/block/size/bk/size/256kb.h) \
    $(wildcard include/config/ext/cs1/block/size/bk/size/512kb.h) \
    $(wildcard include/config/ext/cs1/block/size/bk/size/1024kb.h) \
    $(wildcard include/config/ext/cs1/block/size/bk/size/2048kb.h) \
    $(wildcard include/config/ext/cs1/block/size/bk/size/4096kb.h) \
    $(wildcard include/config/ext/cs1/block/size/bk/size/8192kb.h) \
    $(wildcard include/config/ext/cs1/page/size/mask.h) \
    $(wildcard include/config/ext/cs1/page/size/shift.h) \
    $(wildcard include/config/ext/cs1/page/size/pg/size/512.h) \
    $(wildcard include/config/ext/cs1/page/size/pg/size/1kb.h) \
    $(wildcard include/config/ext/cs1/page/size/pg/size/2kb.h) \
    $(wildcard include/config/ext/cs1/page/size/pg/size/4kb.h) \
    $(wildcard include/config/ext/cs1/page/size/pg/size/8kb.h) \
    $(wildcard include/config/ext/cs1/page/size/pg/size/16kb.h) \
    $(wildcard include/config/cs1/config/lock/mask.h) \
    $(wildcard include/config/cs1/config/lock/shift.h) \
    $(wildcard include/config/cs1/config/lock/default.h) \
    $(wildcard include/config/cs1/reserved0/mask.h) \
    $(wildcard include/config/cs1/reserved0/shift.h) \
    $(wildcard include/config/cs1/device/size/mask.h) \
    $(wildcard include/config/cs1/device/size/shift.h) \
    $(wildcard include/config/cs1/device/size/dvc/size/4mb.h) \
    $(wildcard include/config/cs1/device/size/dvc/size/8mb.h) \
    $(wildcard include/config/cs1/device/size/dvc/size/16mb.h) \
    $(wildcard include/config/cs1/device/size/dvc/size/32mb.h) \
    $(wildcard include/config/cs1/device/size/dvc/size/64mb.h) \
    $(wildcard include/config/cs1/device/size/dvc/size/128mb.h) \
    $(wildcard include/config/cs1/device/size/dvc/size/256mb.h) \
    $(wildcard include/config/cs1/device/size/dvc/size/512mb.h) \
    $(wildcard include/config/cs1/device/size/dvc/size/1gb.h) \
    $(wildcard include/config/cs1/device/size/dvc/size/2gb.h) \
    $(wildcard include/config/cs1/device/size/dvc/size/4gb.h) \
    $(wildcard include/config/cs1/device/size/dvc/size/8gb.h) \
    $(wildcard include/config/cs1/device/size/dvc/size/16gb.h) \
    $(wildcard include/config/cs1/device/size/dvc/size/32gb.h) \
    $(wildcard include/config/cs1/device/size/dvc/size/64gb.h) \
    $(wildcard include/config/cs1/device/size/dvc/size/128gb.h) \
    $(wildcard include/config/cs1/device/width/mask.h) \
    $(wildcard include/config/cs1/device/width/shift.h) \
    $(wildcard include/config/cs1/device/width/dvc/width/8.h) \
    $(wildcard include/config/cs1/device/width/dvc/width/16.h) \
    $(wildcard include/config/cs1/reserved1/mask.h) \
    $(wildcard include/config/cs1/reserved1/shift.h) \
    $(wildcard include/config/cs1/ful/adr/bytes/mask.h) \
    $(wildcard include/config/cs1/ful/adr/bytes/shift.h) \
    $(wildcard include/config/cs1/reserved2/mask.h) \
    $(wildcard include/config/cs1/reserved2/shift.h) \
    $(wildcard include/config/cs1/col/adr/bytes/mask.h) \
    $(wildcard include/config/cs1/col/adr/bytes/shift.h) \
    $(wildcard include/config/cs1/reserved3/mask.h) \
    $(wildcard include/config/cs1/reserved3/shift.h) \
    $(wildcard include/config/cs1/blk/adr/bytes/mask.h) \
    $(wildcard include/config/cs1/blk/adr/bytes/shift.h) \
    $(wildcard include/config/cs1/reserved4/mask.h) \
    $(wildcard include/config/cs1/reserved4/shift.h) \
    $(wildcard include/config/ext/cs2/reserved0/mask.h) \
    $(wildcard include/config/ext/cs2/reserved0/shift.h) \
    $(wildcard include/config/ext/cs2/block/size/mask.h) \
    $(wildcard include/config/ext/cs2/block/size/shift.h) \
    $(wildcard include/config/ext/cs2/block/size/bk/size/8kb.h) \
    $(wildcard include/config/ext/cs2/block/size/bk/size/16kb.h) \
    $(wildcard include/config/ext/cs2/block/size/bk/size/32kb.h) \
    $(wildcard include/config/ext/cs2/block/size/bk/size/64kb.h) \
    $(wildcard include/config/ext/cs2/block/size/bk/size/128kb.h) \
    $(wildcard include/config/ext/cs2/block/size/bk/size/256kb.h) \
    $(wildcard include/config/ext/cs2/block/size/bk/size/512kb.h) \
    $(wildcard include/config/ext/cs2/block/size/bk/size/1024kb.h) \
    $(wildcard include/config/ext/cs2/block/size/bk/size/2048kb.h) \
    $(wildcard include/config/ext/cs2/block/size/bk/size/4096kb.h) \
    $(wildcard include/config/ext/cs2/block/size/bk/size/8192kb.h) \
    $(wildcard include/config/ext/cs2/page/size/mask.h) \
    $(wildcard include/config/ext/cs2/page/size/shift.h) \
    $(wildcard include/config/ext/cs2/page/size/pg/size/512.h) \
    $(wildcard include/config/ext/cs2/page/size/pg/size/1kb.h) \
    $(wildcard include/config/ext/cs2/page/size/pg/size/2kb.h) \
    $(wildcard include/config/ext/cs2/page/size/pg/size/4kb.h) \
    $(wildcard include/config/ext/cs2/page/size/pg/size/8kb.h) \
    $(wildcard include/config/ext/cs2/page/size/pg/size/16kb.h) \
    $(wildcard include/config/cs2/config/lock/mask.h) \
    $(wildcard include/config/cs2/config/lock/shift.h) \
    $(wildcard include/config/cs2/config/lock/default.h) \
    $(wildcard include/config/cs2/reserved0/mask.h) \
    $(wildcard include/config/cs2/reserved0/shift.h) \
    $(wildcard include/config/cs2/device/size/mask.h) \
    $(wildcard include/config/cs2/device/size/shift.h) \
    $(wildcard include/config/cs2/device/size/dvc/size/4mb.h) \
    $(wildcard include/config/cs2/device/size/dvc/size/8mb.h) \
    $(wildcard include/config/cs2/device/size/dvc/size/16mb.h) \
    $(wildcard include/config/cs2/device/size/dvc/size/32mb.h) \
    $(wildcard include/config/cs2/device/size/dvc/size/64mb.h) \
    $(wildcard include/config/cs2/device/size/dvc/size/128mb.h) \
    $(wildcard include/config/cs2/device/size/dvc/size/256mb.h) \
    $(wildcard include/config/cs2/device/size/dvc/size/512mb.h) \
    $(wildcard include/config/cs2/device/size/dvc/size/1gb.h) \
    $(wildcard include/config/cs2/device/size/dvc/size/2gb.h) \
    $(wildcard include/config/cs2/device/size/dvc/size/4gb.h) \
    $(wildcard include/config/cs2/device/size/dvc/size/8gb.h) \
    $(wildcard include/config/cs2/device/size/dvc/size/16gb.h) \
    $(wildcard include/config/cs2/device/size/dvc/size/32gb.h) \
    $(wildcard include/config/cs2/device/size/dvc/size/64gb.h) \
    $(wildcard include/config/cs2/device/size/dvc/size/128gb.h) \
    $(wildcard include/config/cs2/device/width/mask.h) \
    $(wildcard include/config/cs2/device/width/shift.h) \
    $(wildcard include/config/cs2/device/width/dvc/width/8.h) \
    $(wildcard include/config/cs2/device/width/dvc/width/16.h) \
    $(wildcard include/config/cs2/reserved1/mask.h) \
    $(wildcard include/config/cs2/reserved1/shift.h) \
    $(wildcard include/config/cs2/ful/adr/bytes/mask.h) \
    $(wildcard include/config/cs2/ful/adr/bytes/shift.h) \
    $(wildcard include/config/cs2/reserved2/mask.h) \
    $(wildcard include/config/cs2/reserved2/shift.h) \
    $(wildcard include/config/cs2/col/adr/bytes/mask.h) \
    $(wildcard include/config/cs2/col/adr/bytes/shift.h) \
    $(wildcard include/config/cs2/reserved3/mask.h) \
    $(wildcard include/config/cs2/reserved3/shift.h) \
    $(wildcard include/config/cs2/blk/adr/bytes/mask.h) \
    $(wildcard include/config/cs2/blk/adr/bytes/shift.h) \
    $(wildcard include/config/cs2/reserved4/mask.h) \
    $(wildcard include/config/cs2/reserved4/shift.h) \
    $(wildcard include/config/ext/cs3/reserved0/mask.h) \
    $(wildcard include/config/ext/cs3/reserved0/shift.h) \
    $(wildcard include/config/ext/cs3/block/size/mask.h) \
    $(wildcard include/config/ext/cs3/block/size/shift.h) \
    $(wildcard include/config/ext/cs3/block/size/bk/size/8kb.h) \
    $(wildcard include/config/ext/cs3/block/size/bk/size/16kb.h) \
    $(wildcard include/config/ext/cs3/block/size/bk/size/32kb.h) \
    $(wildcard include/config/ext/cs3/block/size/bk/size/64kb.h) \
    $(wildcard include/config/ext/cs3/block/size/bk/size/128kb.h) \
    $(wildcard include/config/ext/cs3/block/size/bk/size/256kb.h) \
    $(wildcard include/config/ext/cs3/block/size/bk/size/512kb.h) \
    $(wildcard include/config/ext/cs3/block/size/bk/size/1024kb.h) \
    $(wildcard include/config/ext/cs3/block/size/bk/size/2048kb.h) \
    $(wildcard include/config/ext/cs3/block/size/bk/size/4096kb.h) \
    $(wildcard include/config/ext/cs3/block/size/bk/size/8192kb.h) \
    $(wildcard include/config/ext/cs3/page/size/mask.h) \
    $(wildcard include/config/ext/cs3/page/size/shift.h) \
    $(wildcard include/config/ext/cs3/page/size/pg/size/512.h) \
    $(wildcard include/config/ext/cs3/page/size/pg/size/1kb.h) \
    $(wildcard include/config/ext/cs3/page/size/pg/size/2kb.h) \
    $(wildcard include/config/ext/cs3/page/size/pg/size/4kb.h) \
    $(wildcard include/config/ext/cs3/page/size/pg/size/8kb.h) \
    $(wildcard include/config/ext/cs3/page/size/pg/size/16kb.h) \
    $(wildcard include/config/cs3/config/lock/mask.h) \
    $(wildcard include/config/cs3/config/lock/shift.h) \
    $(wildcard include/config/cs3/config/lock/default.h) \
    $(wildcard include/config/cs3/reserved0/mask.h) \
    $(wildcard include/config/cs3/reserved0/shift.h) \
    $(wildcard include/config/cs3/device/size/mask.h) \
    $(wildcard include/config/cs3/device/size/shift.h) \
    $(wildcard include/config/cs3/device/size/dvc/size/4mb.h) \
    $(wildcard include/config/cs3/device/size/dvc/size/8mb.h) \
    $(wildcard include/config/cs3/device/size/dvc/size/16mb.h) \
    $(wildcard include/config/cs3/device/size/dvc/size/32mb.h) \
    $(wildcard include/config/cs3/device/size/dvc/size/64mb.h) \
    $(wildcard include/config/cs3/device/size/dvc/size/128mb.h) \
    $(wildcard include/config/cs3/device/size/dvc/size/256mb.h) \
    $(wildcard include/config/cs3/device/size/dvc/size/512mb.h) \
    $(wildcard include/config/cs3/device/size/dvc/size/1gb.h) \
    $(wildcard include/config/cs3/device/size/dvc/size/2gb.h) \
    $(wildcard include/config/cs3/device/size/dvc/size/4gb.h) \
    $(wildcard include/config/cs3/device/size/dvc/size/8gb.h) \
    $(wildcard include/config/cs3/device/size/dvc/size/16gb.h) \
    $(wildcard include/config/cs3/device/size/dvc/size/32gb.h) \
    $(wildcard include/config/cs3/device/size/dvc/size/64gb.h) \
    $(wildcard include/config/cs3/device/size/dvc/size/128gb.h) \
    $(wildcard include/config/cs3/device/width/mask.h) \
    $(wildcard include/config/cs3/device/width/shift.h) \
    $(wildcard include/config/cs3/device/width/dvc/width/8.h) \
    $(wildcard include/config/cs3/device/width/dvc/width/16.h) \
    $(wildcard include/config/cs3/reserved1/mask.h) \
    $(wildcard include/config/cs3/reserved1/shift.h) \
    $(wildcard include/config/cs3/ful/adr/bytes/mask.h) \
    $(wildcard include/config/cs3/ful/adr/bytes/shift.h) \
    $(wildcard include/config/cs3/reserved2/mask.h) \
    $(wildcard include/config/cs3/reserved2/shift.h) \
    $(wildcard include/config/cs3/col/adr/bytes/mask.h) \
    $(wildcard include/config/cs3/col/adr/bytes/shift.h) \
    $(wildcard include/config/cs3/reserved3/mask.h) \
    $(wildcard include/config/cs3/reserved3/shift.h) \
    $(wildcard include/config/cs3/blk/adr/bytes/mask.h) \
    $(wildcard include/config/cs3/blk/adr/bytes/shift.h) \
    $(wildcard include/config/cs3/reserved4/mask.h) \
    $(wildcard include/config/cs3/reserved4/shift.h) \
    $(wildcard include/config/ext/cs4/reserved0/mask.h) \
    $(wildcard include/config/ext/cs4/reserved0/shift.h) \
    $(wildcard include/config/ext/cs4/block/size/mask.h) \
    $(wildcard include/config/ext/cs4/block/size/shift.h) \
    $(wildcard include/config/ext/cs4/block/size/bk/size/8kb.h) \
    $(wildcard include/config/ext/cs4/block/size/bk/size/16kb.h) \
    $(wildcard include/config/ext/cs4/block/size/bk/size/32kb.h) \
    $(wildcard include/config/ext/cs4/block/size/bk/size/64kb.h) \
    $(wildcard include/config/ext/cs4/block/size/bk/size/128kb.h) \
    $(wildcard include/config/ext/cs4/block/size/bk/size/256kb.h) \
    $(wildcard include/config/ext/cs4/block/size/bk/size/512kb.h) \
    $(wildcard include/config/ext/cs4/block/size/bk/size/1024kb.h) \
    $(wildcard include/config/ext/cs4/block/size/bk/size/2048kb.h) \
    $(wildcard include/config/ext/cs4/block/size/bk/size/4096kb.h) \
    $(wildcard include/config/ext/cs4/block/size/bk/size/8192kb.h) \
    $(wildcard include/config/ext/cs4/page/size/mask.h) \
    $(wildcard include/config/ext/cs4/page/size/shift.h) \
    $(wildcard include/config/ext/cs4/page/size/pg/size/512.h) \
    $(wildcard include/config/ext/cs4/page/size/pg/size/1kb.h) \
    $(wildcard include/config/ext/cs4/page/size/pg/size/2kb.h) \
    $(wildcard include/config/ext/cs4/page/size/pg/size/4kb.h) \
    $(wildcard include/config/ext/cs4/page/size/pg/size/8kb.h) \
    $(wildcard include/config/ext/cs4/page/size/pg/size/16kb.h) \
    $(wildcard include/config/cs4/config/lock/mask.h) \
    $(wildcard include/config/cs4/config/lock/shift.h) \
    $(wildcard include/config/cs4/config/lock/default.h) \
    $(wildcard include/config/cs4/reserved0/mask.h) \
    $(wildcard include/config/cs4/reserved0/shift.h) \
    $(wildcard include/config/cs4/device/size/mask.h) \
    $(wildcard include/config/cs4/device/size/shift.h) \
    $(wildcard include/config/cs4/device/size/dvc/size/4mb.h) \
    $(wildcard include/config/cs4/device/size/dvc/size/8mb.h) \
    $(wildcard include/config/cs4/device/size/dvc/size/16mb.h) \
    $(wildcard include/config/cs4/device/size/dvc/size/32mb.h) \
    $(wildcard include/config/cs4/device/size/dvc/size/64mb.h) \
    $(wildcard include/config/cs4/device/size/dvc/size/128mb.h) \
    $(wildcard include/config/cs4/device/size/dvc/size/256mb.h) \
    $(wildcard include/config/cs4/device/size/dvc/size/512mb.h) \
    $(wildcard include/config/cs4/device/size/dvc/size/1gb.h) \
    $(wildcard include/config/cs4/device/size/dvc/size/2gb.h) \
    $(wildcard include/config/cs4/device/size/dvc/size/4gb.h) \
    $(wildcard include/config/cs4/device/size/dvc/size/8gb.h) \
    $(wildcard include/config/cs4/device/size/dvc/size/16gb.h) \
    $(wildcard include/config/cs4/device/size/dvc/size/32gb.h) \
    $(wildcard include/config/cs4/device/size/dvc/size/64gb.h) \
    $(wildcard include/config/cs4/device/size/dvc/size/128gb.h) \
    $(wildcard include/config/cs4/device/width/mask.h) \
    $(wildcard include/config/cs4/device/width/shift.h) \
    $(wildcard include/config/cs4/device/width/dvc/width/8.h) \
    $(wildcard include/config/cs4/device/width/dvc/width/16.h) \
    $(wildcard include/config/cs4/reserved1/mask.h) \
    $(wildcard include/config/cs4/reserved1/shift.h) \
    $(wildcard include/config/cs4/ful/adr/bytes/mask.h) \
    $(wildcard include/config/cs4/ful/adr/bytes/shift.h) \
    $(wildcard include/config/cs4/reserved2/mask.h) \
    $(wildcard include/config/cs4/reserved2/shift.h) \
    $(wildcard include/config/cs4/col/adr/bytes/mask.h) \
    $(wildcard include/config/cs4/col/adr/bytes/shift.h) \
    $(wildcard include/config/cs4/reserved3/mask.h) \
    $(wildcard include/config/cs4/reserved3/shift.h) \
    $(wildcard include/config/cs4/blk/adr/bytes/mask.h) \
    $(wildcard include/config/cs4/blk/adr/bytes/shift.h) \
    $(wildcard include/config/cs4/reserved4/mask.h) \
    $(wildcard include/config/cs4/reserved4/shift.h) \
    $(wildcard include/config/ext/cs5/reserved0/mask.h) \
    $(wildcard include/config/ext/cs5/reserved0/shift.h) \
    $(wildcard include/config/ext/cs5/block/size/mask.h) \
    $(wildcard include/config/ext/cs5/block/size/shift.h) \
    $(wildcard include/config/ext/cs5/block/size/bk/size/8kb.h) \
    $(wildcard include/config/ext/cs5/block/size/bk/size/16kb.h) \
    $(wildcard include/config/ext/cs5/block/size/bk/size/32kb.h) \
    $(wildcard include/config/ext/cs5/block/size/bk/size/64kb.h) \
    $(wildcard include/config/ext/cs5/block/size/bk/size/128kb.h) \
    $(wildcard include/config/ext/cs5/block/size/bk/size/256kb.h) \
    $(wildcard include/config/ext/cs5/block/size/bk/size/512kb.h) \
    $(wildcard include/config/ext/cs5/block/size/bk/size/1024kb.h) \
    $(wildcard include/config/ext/cs5/block/size/bk/size/2048kb.h) \
    $(wildcard include/config/ext/cs5/block/size/bk/size/4096kb.h) \
    $(wildcard include/config/ext/cs5/block/size/bk/size/8192kb.h) \
    $(wildcard include/config/ext/cs5/page/size/mask.h) \
    $(wildcard include/config/ext/cs5/page/size/shift.h) \
    $(wildcard include/config/ext/cs5/page/size/pg/size/512.h) \
    $(wildcard include/config/ext/cs5/page/size/pg/size/1kb.h) \
    $(wildcard include/config/ext/cs5/page/size/pg/size/2kb.h) \
    $(wildcard include/config/ext/cs5/page/size/pg/size/4kb.h) \
    $(wildcard include/config/ext/cs5/page/size/pg/size/8kb.h) \
    $(wildcard include/config/ext/cs5/page/size/pg/size/16kb.h) \
    $(wildcard include/config/cs5/config/lock/mask.h) \
    $(wildcard include/config/cs5/config/lock/shift.h) \
    $(wildcard include/config/cs5/config/lock/default.h) \
    $(wildcard include/config/cs5/reserved0/mask.h) \
    $(wildcard include/config/cs5/reserved0/shift.h) \
    $(wildcard include/config/cs5/device/size/mask.h) \
    $(wildcard include/config/cs5/device/size/shift.h) \
    $(wildcard include/config/cs5/device/size/dvc/size/4mb.h) \
    $(wildcard include/config/cs5/device/size/dvc/size/8mb.h) \
    $(wildcard include/config/cs5/device/size/dvc/size/16mb.h) \
    $(wildcard include/config/cs5/device/size/dvc/size/32mb.h) \
    $(wildcard include/config/cs5/device/size/dvc/size/64mb.h) \
    $(wildcard include/config/cs5/device/size/dvc/size/128mb.h) \
    $(wildcard include/config/cs5/device/size/dvc/size/256mb.h) \
    $(wildcard include/config/cs5/device/size/dvc/size/512mb.h) \
    $(wildcard include/config/cs5/device/size/dvc/size/1gb.h) \
    $(wildcard include/config/cs5/device/size/dvc/size/2gb.h) \
    $(wildcard include/config/cs5/device/size/dvc/size/4gb.h) \
    $(wildcard include/config/cs5/device/size/dvc/size/8gb.h) \
    $(wildcard include/config/cs5/device/size/dvc/size/16gb.h) \
    $(wildcard include/config/cs5/device/size/dvc/size/32gb.h) \
    $(wildcard include/config/cs5/device/size/dvc/size/64gb.h) \
    $(wildcard include/config/cs5/device/size/dvc/size/128gb.h) \
    $(wildcard include/config/cs5/device/width/mask.h) \
    $(wildcard include/config/cs5/device/width/shift.h) \
    $(wildcard include/config/cs5/device/width/dvc/width/8.h) \
    $(wildcard include/config/cs5/device/width/dvc/width/16.h) \
    $(wildcard include/config/cs5/reserved1/mask.h) \
    $(wildcard include/config/cs5/reserved1/shift.h) \
    $(wildcard include/config/cs5/ful/adr/bytes/mask.h) \
    $(wildcard include/config/cs5/ful/adr/bytes/shift.h) \
    $(wildcard include/config/cs5/reserved2/mask.h) \
    $(wildcard include/config/cs5/reserved2/shift.h) \
    $(wildcard include/config/cs5/col/adr/bytes/mask.h) \
    $(wildcard include/config/cs5/col/adr/bytes/shift.h) \
    $(wildcard include/config/cs5/reserved3/mask.h) \
    $(wildcard include/config/cs5/reserved3/shift.h) \
    $(wildcard include/config/cs5/blk/adr/bytes/mask.h) \
    $(wildcard include/config/cs5/blk/adr/bytes/shift.h) \
    $(wildcard include/config/cs5/reserved4/mask.h) \
    $(wildcard include/config/cs5/reserved4/shift.h) \
    $(wildcard include/config/ext/cs6/reserved0/mask.h) \
    $(wildcard include/config/ext/cs6/reserved0/shift.h) \
    $(wildcard include/config/ext/cs6/block/size/mask.h) \
    $(wildcard include/config/ext/cs6/block/size/shift.h) \
    $(wildcard include/config/ext/cs6/block/size/bk/size/8kb.h) \
    $(wildcard include/config/ext/cs6/block/size/bk/size/16kb.h) \
    $(wildcard include/config/ext/cs6/block/size/bk/size/32kb.h) \
    $(wildcard include/config/ext/cs6/block/size/bk/size/64kb.h) \
    $(wildcard include/config/ext/cs6/block/size/bk/size/128kb.h) \
    $(wildcard include/config/ext/cs6/block/size/bk/size/256kb.h) \
    $(wildcard include/config/ext/cs6/block/size/bk/size/512kb.h) \
    $(wildcard include/config/ext/cs6/block/size/bk/size/1024kb.h) \
    $(wildcard include/config/ext/cs6/block/size/bk/size/2048kb.h) \
    $(wildcard include/config/ext/cs6/block/size/bk/size/4096kb.h) \
    $(wildcard include/config/ext/cs6/block/size/bk/size/8192kb.h) \
    $(wildcard include/config/ext/cs6/page/size/mask.h) \
    $(wildcard include/config/ext/cs6/page/size/shift.h) \
    $(wildcard include/config/ext/cs6/page/size/pg/size/512.h) \
    $(wildcard include/config/ext/cs6/page/size/pg/size/1kb.h) \
    $(wildcard include/config/ext/cs6/page/size/pg/size/2kb.h) \
    $(wildcard include/config/ext/cs6/page/size/pg/size/4kb.h) \
    $(wildcard include/config/ext/cs6/page/size/pg/size/8kb.h) \
    $(wildcard include/config/ext/cs6/page/size/pg/size/16kb.h) \
    $(wildcard include/config/cs6/config/lock/mask.h) \
    $(wildcard include/config/cs6/config/lock/shift.h) \
    $(wildcard include/config/cs6/config/lock/default.h) \
    $(wildcard include/config/cs6/reserved0/mask.h) \
    $(wildcard include/config/cs6/reserved0/shift.h) \
    $(wildcard include/config/cs6/device/size/mask.h) \
    $(wildcard include/config/cs6/device/size/shift.h) \
    $(wildcard include/config/cs6/device/size/dvc/size/4mb.h) \
    $(wildcard include/config/cs6/device/size/dvc/size/8mb.h) \
    $(wildcard include/config/cs6/device/size/dvc/size/16mb.h) \
    $(wildcard include/config/cs6/device/size/dvc/size/32mb.h) \
    $(wildcard include/config/cs6/device/size/dvc/size/64mb.h) \
    $(wildcard include/config/cs6/device/size/dvc/size/128mb.h) \
    $(wildcard include/config/cs6/device/size/dvc/size/256mb.h) \
    $(wildcard include/config/cs6/device/size/dvc/size/512mb.h) \
    $(wildcard include/config/cs6/device/size/dvc/size/1gb.h) \
    $(wildcard include/config/cs6/device/size/dvc/size/2gb.h) \
    $(wildcard include/config/cs6/device/size/dvc/size/4gb.h) \
    $(wildcard include/config/cs6/device/size/dvc/size/8gb.h) \
    $(wildcard include/config/cs6/device/size/dvc/size/16gb.h) \
    $(wildcard include/config/cs6/device/size/dvc/size/32gb.h) \
    $(wildcard include/config/cs6/device/size/dvc/size/64gb.h) \
    $(wildcard include/config/cs6/device/size/dvc/size/128gb.h) \
    $(wildcard include/config/cs6/device/width/mask.h) \
    $(wildcard include/config/cs6/device/width/shift.h) \
    $(wildcard include/config/cs6/device/width/dvc/width/8.h) \
    $(wildcard include/config/cs6/device/width/dvc/width/16.h) \
    $(wildcard include/config/cs6/reserved1/mask.h) \
    $(wildcard include/config/cs6/reserved1/shift.h) \
    $(wildcard include/config/cs6/ful/adr/bytes/mask.h) \
    $(wildcard include/config/cs6/ful/adr/bytes/shift.h) \
    $(wildcard include/config/cs6/reserved2/mask.h) \
    $(wildcard include/config/cs6/reserved2/shift.h) \
    $(wildcard include/config/cs6/col/adr/bytes/mask.h) \
    $(wildcard include/config/cs6/col/adr/bytes/shift.h) \
    $(wildcard include/config/cs6/reserved3/mask.h) \
    $(wildcard include/config/cs6/reserved3/shift.h) \
    $(wildcard include/config/cs6/blk/adr/bytes/mask.h) \
    $(wildcard include/config/cs6/blk/adr/bytes/shift.h) \
    $(wildcard include/config/cs6/reserved4/mask.h) \
    $(wildcard include/config/cs6/reserved4/shift.h) \
  include/linux/brcmstb/7439b0/bchp_pcie_0_dma.h \
  include/linux/brcmstb/7439b0/bchp_pcie_0_ext_cfg.h \
  include/linux/brcmstb/7439b0/bchp_pcie_0_intr2.h \
  include/linux/brcmstb/7439b0/bchp_pcie_0_misc.h \
    $(wildcard include/config/lo.h) \
    $(wildcard include/config/hi.h) \
    $(wildcard include/config/retry/timeout.h) \
    $(wildcard include/config/remap.h) \
    $(wildcard include/config/remap/hi.h) \
    $(wildcard include/config/lo/match/address/mask.h) \
    $(wildcard include/config/lo/match/address/shift.h) \
    $(wildcard include/config/lo/match/address/default.h) \
    $(wildcard include/config/lo/reserved0/mask.h) \
    $(wildcard include/config/lo/reserved0/shift.h) \
    $(wildcard include/config/lo/size/mask.h) \
    $(wildcard include/config/lo/size/shift.h) \
    $(wildcard include/config/lo/size/default.h) \
    $(wildcard include/config/hi/match/address/mask.h) \
    $(wildcard include/config/hi/match/address/shift.h) \
    $(wildcard include/config/hi/match/address/default.h) \
    $(wildcard include/config/lo/enable/mask.h) \
    $(wildcard include/config/lo/enable/shift.h) \
    $(wildcard include/config/lo/enable/default.h) \
    $(wildcard include/config/mask/mask.h) \
    $(wildcard include/config/mask/shift.h) \
    $(wildcard include/config/mask/default.h) \
    $(wildcard include/config/data/mask.h) \
    $(wildcard include/config/data/shift.h) \
    $(wildcard include/config/data/default.h) \
    $(wildcard include/config/retry/timeout/timer/value/mask.h) \
    $(wildcard include/config/retry/timeout/timer/value/shift.h) \
    $(wildcard include/config/retry/timeout/timer/value/default.h) \
    $(wildcard include/config/remap/offset/mask.h) \
    $(wildcard include/config/remap/offset/shift.h) \
    $(wildcard include/config/remap/offset/default.h) \
    $(wildcard include/config/remap/reserved0/mask.h) \
    $(wildcard include/config/remap/reserved0/shift.h) \
    $(wildcard include/config/remap/unused/3/2/mask.h) \
    $(wildcard include/config/remap/unused/3/2/shift.h) \
    $(wildcard include/config/remap/unused/3/2/default.h) \
    $(wildcard include/config/remap/wr/combine/mask.h) \
    $(wildcard include/config/remap/wr/combine/shift.h) \
    $(wildcard include/config/remap/wr/combine/default.h) \
    $(wildcard include/config/remap/access/en/mask.h) \
    $(wildcard include/config/remap/access/en/shift.h) \
    $(wildcard include/config/remap/access/en/default.h) \
    $(wildcard include/config/remap/hi/reserved0/mask.h) \
    $(wildcard include/config/remap/hi/reserved0/shift.h) \
    $(wildcard include/config/remap/hi/offset/mask.h) \
    $(wildcard include/config/remap/hi/offset/shift.h) \
    $(wildcard include/config/remap/hi/offset/default.h) \
  include/linux/brcmstb/7439b0/bchp_pcie_0_misc_perst.h \
  include/linux/brcmstb/7439b0/bchp_pcie_0_rc_cfg_pcie.h \
    $(wildcard include/config/default.h) \
  include/linux/brcmstb/7439b0/bchp_pcie_0_rc_cfg_type1.h \
  include/linux/brcmstb/7439b0/bchp_pcie_0_rc_cfg_vendor.h \
  include/linux/brcmstb/7439b0/bchp_pcie_0_rgr1.h \
  include/linux/brcmstb/7439b0/bchp_sdio_0_cfg.h \
  include/linux/brcmstb/7439b0/bchp_shimphy_addr_cntl_0.h \
    $(wildcard include/config/dfi/clk/disable/mask.h) \
    $(wildcard include/config/dfi/clk/disable/shift.h) \
    $(wildcard include/config/dfi/clk/disable/default.h) \
    $(wildcard include/config/dram/nop/or/dsel/cmd/mask.h) \
    $(wildcard include/config/dram/nop/or/dsel/cmd/shift.h) \
    $(wildcard include/config/dram/nop/or/dsel/cmd/default.h) \
    $(wildcard include/config/last/rd/stretch/mask.h) \
    $(wildcard include/config/last/rd/stretch/shift.h) \
    $(wildcard include/config/last/rd/stretch/default.h) \
    $(wildcard include/config/last/read/latency/mask.h) \
    $(wildcard include/config/last/read/latency/shift.h) \
    $(wildcard include/config/last/read/latency/default.h) \
    $(wildcard include/config/read/latency/mask.h) \
    $(wildcard include/config/read/latency/shift.h) \
    $(wildcard include/config/read/latency/default.h) \
    $(wildcard include/config/write/latency/mask.h) \
    $(wildcard include/config/write/latency/shift.h) \
    $(wildcard include/config/write/latency/default.h) \
  include/linux/brcmstb/7439b0/bchp_sun_top_ctrl.h \
    $(wildcard include/config/sw/init/0/monitor.h) \
    $(wildcard include/config/sw/init/1/monitor.h) \
    $(wildcard include/config/sw/init/0/monitor/rfm/sw/init/mask.h) \
    $(wildcard include/config/sw/init/0/monitor/rfm/sw/init/shift.h) \
    $(wildcard include/config/sw/init/0/monitor/not/used/sw/init/30/mask.h) \
    $(wildcard include/config/sw/init/0/monitor/not/used/sw/init/30/shift.h) \
    $(wildcard include/config/sw/init/0/monitor/sata/sw/init/mask.h) \
    $(wildcard include/config/sw/init/0/monitor/sata/sw/init/shift.h) \
    $(wildcard include/config/sw/init/0/monitor/moca/sw/init/mask.h) \
    $(wildcard include/config/sw/init/0/monitor/moca/sw/init/shift.h) \
    $(wildcard include/config/sw/init/0/monitor/genet1/sw/init/mask.h) \
    $(wildcard include/config/sw/init/0/monitor/genet1/sw/init/shift.h) \
    $(wildcard include/config/sw/init/0/monitor/genet0/sw/init/mask.h) \
    $(wildcard include/config/sw/init/0/monitor/genet0/sw/init/shift.h) \
    $(wildcard include/config/sw/init/0/monitor/not/used/sw/init/25/mask.h) \
    $(wildcard include/config/sw/init/0/monitor/not/used/sw/init/25/shift.h) \
    $(wildcard include/config/sw/init/0/monitor/usb0/sw/init/mask.h) \
    $(wildcard include/config/sw/init/0/monitor/usb0/sw/init/shift.h) \
    $(wildcard include/config/sw/init/0/monitor/not/used/sw/init/23/mask.h) \
    $(wildcard include/config/sw/init/0/monitor/not/used/sw/init/23/shift.h) \
    $(wildcard include/config/sw/init/0/monitor/ddr1/sw/init/mask.h) \
    $(wildcard include/config/sw/init/0/monitor/ddr1/sw/init/shift.h) \
    $(wildcard include/config/sw/init/0/monitor/ddr0/sw/init/mask.h) \
    $(wildcard include/config/sw/init/0/monitor/ddr0/sw/init/shift.h) \
    $(wildcard include/config/sw/init/0/monitor/memc1/sw/init/mask.h) \
    $(wildcard include/config/sw/init/0/monitor/memc1/sw/init/shift.h) \
    $(wildcard include/config/sw/init/0/monitor/memc0/sw/init/mask.h) \
    $(wildcard include/config/sw/init/0/monitor/memc0/sw/init/shift.h) \
    $(wildcard include/config/sw/init/0/monitor/xpt/sw/init/mask.h) \
    $(wildcard include/config/sw/init/0/monitor/xpt/sw/init/shift.h) \
    $(wildcard include/config/sw/init/0/monitor/not/used/sw/init/17/mask.h) \
    $(wildcard include/config/sw/init/0/monitor/not/used/sw/init/17/shift.h) \
    $(wildcard include/config/sw/init/0/monitor/raaga0/sw/init/mask.h) \
    $(wildcard include/config/sw/init/0/monitor/raaga0/sw/init/shift.h) \
    $(wildcard include/config/sw/init/0/monitor/aio/sw/init/mask.h) \
    $(wildcard include/config/sw/init/0/monitor/aio/sw/init/shift.h) \
    $(wildcard include/config/sw/init/0/monitor/gfx/sw/init/mask.h) \
    $(wildcard include/config/sw/init/0/monitor/gfx/sw/init/shift.h) \
    $(wildcard include/config/sw/init/0/monitor/hvd1/sw/init/mask.h) \
    $(wildcard include/config/sw/init/0/monitor/hvd1/sw/init/shift.h) \
    $(wildcard include/config/sw/init/0/monitor/hvd0/sw/init/mask.h) \
    $(wildcard include/config/sw/init/0/monitor/hvd0/sw/init/shift.h) \
    $(wildcard include/config/sw/init/0/monitor/dvp/hr/sw/init/mask.h) \
    $(wildcard include/config/sw/init/0/monitor/dvp/hr/sw/init/shift.h) \
    $(wildcard include/config/sw/init/0/monitor/dvp/ht/sw/init/mask.h) \
    $(wildcard include/config/sw/init/0/monitor/dvp/ht/sw/init/shift.h) \
    $(wildcard include/config/sw/init/0/monitor/vec/sw/init/mask.h) \
    $(wildcard include/config/sw/init/0/monitor/vec/sw/init/shift.h) \
    $(wildcard include/config/sw/init/0/monitor/bvn/sw/init/mask.h) \
    $(wildcard include/config/sw/init/0/monitor/bvn/sw/init/shift.h) \
    $(wildcard include/config/sw/init/0/monitor/pcie1/sw/init/mask.h) \
    $(wildcard include/config/sw/init/0/monitor/pcie1/sw/init/shift.h) \
    $(wildcard include/config/sw/init/0/monitor/ebi/sw/init/mask.h) \
    $(wildcard include/config/sw/init/0/monitor/ebi/sw/init/shift.h) \
    $(wildcard include/config/sw/init/0/monitor/pcie0/sw/init/mask.h) \
    $(wildcard include/config/sw/init/0/monitor/pcie0/sw/init/shift.h) \
    $(wildcard include/config/sw/init/0/monitor/webcpu/start/sw/init/mask.h) \
    $(wildcard include/config/sw/init/0/monitor/webcpu/start/sw/init/shift.h) \
    $(wildcard include/config/sw/init/0/monitor/webcpu/sw/init/mask.h) \
    $(wildcard include/config/sw/init/0/monitor/webcpu/sw/init/shift.h) \
    $(wildcard include/config/sw/init/0/monitor/ext/sys/sw/init/mask.h) \
    $(wildcard include/config/sw/init/0/monitor/ext/sys/sw/init/shift.h) \
    $(wildcard include/config/sw/init/0/monitor/cpu/sw/init/mask.h) \
    $(wildcard include/config/sw/init/0/monitor/cpu/sw/init/shift.h) \
    $(wildcard include/config/sw/init/0/monitor/sys/ctrl/sw/init/mask.h) \
    $(wildcard include/config/sw/init/0/monitor/sys/ctrl/sw/init/shift.h) \
    $(wildcard include/config/sw/init/1/monitor/reserved0/mask.h) \
    $(wildcard include/config/sw/init/1/monitor/reserved0/shift.h) \
    $(wildcard include/config/sw/init/1/monitor/spare1/sw/init/mask.h) \
    $(wildcard include/config/sw/init/1/monitor/spare1/sw/init/shift.h) \
    $(wildcard include/config/sw/init/1/monitor/spare0/sw/init/mask.h) \
    $(wildcard include/config/sw/init/1/monitor/spare0/sw/init/shift.h) \
    $(wildcard include/config/sw/init/1/monitor/genet2/sw/init/mask.h) \
    $(wildcard include/config/sw/init/1/monitor/genet2/sw/init/shift.h) \
    $(wildcard include/config/sw/init/1/monitor/sdio1/sw/init/mask.h) \
    $(wildcard include/config/sw/init/1/monitor/sdio1/sw/init/shift.h) \
    $(wildcard include/config/sw/init/1/monitor/sdio0/sw/init/mask.h) \
    $(wildcard include/config/sw/init/1/monitor/sdio0/sw/init/shift.h) \
    $(wildcard include/config/sw/init/1/monitor/avs/top/sw/init/mask.h) \
    $(wildcard include/config/sw/init/1/monitor/avs/top/sw/init/shift.h) \
    $(wildcard include/config/sw/init/1/monitor/hdmi/aon/sw/init/mask.h) \
    $(wildcard include/config/sw/init/1/monitor/hdmi/aon/sw/init/shift.h) \
    $(wildcard include/config/sw/init/1/monitor/gphy/sw/init/mask.h) \
    $(wildcard include/config/sw/init/1/monitor/gphy/sw/init/shift.h) \
    $(wildcard include/config/sw/init/1/monitor/m2mc1/sw/init/mask.h) \
    $(wildcard include/config/sw/init/1/monitor/m2mc1/sw/init/shift.h) \
    $(wildcard include/config/sw/init/1/monitor/v3d/top/sw/init/mask.h) \
    $(wildcard include/config/sw/init/1/monitor/v3d/top/sw/init/shift.h) \
    $(wildcard include/config/sw/init/1/monitor/vice20/sw/init/mask.h) \
    $(wildcard include/config/sw/init/1/monitor/vice20/sw/init/shift.h) \
    $(wildcard include/config/sw/init/1/monitor/sid/sw/init/mask.h) \
    $(wildcard include/config/sw/init/1/monitor/sid/sw/init/shift.h) \
    $(wildcard include/config/serial/adr/cfg/mask.h) \
    $(wildcard include/config/serial/adr/cfg/shift.h) \
    $(wildcard include/config/serial/adr/cfg/default.h) \
    $(wildcard include/config/probe/mux/sel/mask.h) \
    $(wildcard include/config/probe/mux/sel/shift.h) \
    $(wildcard include/config/probe/mux/sel/default.h) \
    $(wildcard include/config/dly/disable/mask.h) \
    $(wildcard include/config/dly/disable/shift.h) \
    $(wildcard include/config/dly/disable/default.h) \
    $(wildcard include/config/spi/mode/mask.h) \
    $(wildcard include/config/spi/mode/shift.h) \
    $(wildcard include/config/ssp/module/enable/mask.h) \
    $(wildcard include/config/ssp/module/enable/shift.h) \
    $(wildcard include/config/ssp/module/enable/default.h) \
  include/linux/brcmstb/7439b0/bchp_usb_ctrl.h \
  include/linux/brcmstb/7439b0/bchp_xpt_bus_if.h \
  include/linux/brcmstb/7439b0/bchp_xpt_fe.h \
  include/linux/brcmstb/7439b0/bchp_xpt_memdma_mcpb.h \
    $(wildcard include/config/t4.h) \
    $(wildcard include/config/t4/mask.h) \
    $(wildcard include/config/t4/shift.h) \
    $(wildcard include/config/t4/default.h) \
    $(wildcard include/config/t3.h) \
    $(wildcard include/config/t3/mask.h) \
    $(wildcard include/config/t3/shift.h) \
    $(wildcard include/config/t3/default.h) \
    $(wildcard include/config/t2.h) \
    $(wildcard include/config/t2/mask.h) \
    $(wildcard include/config/t2/shift.h) \
    $(wildcard include/config/t2/default.h) \
    $(wildcard include/config/t1.h) \
    $(wildcard include/config/t1/mask.h) \
    $(wildcard include/config/t1/shift.h) \
    $(wildcard include/config/t1/default.h) \
    $(wildcard include/config/t0.h) \
    $(wildcard include/config/t0/mask.h) \
    $(wildcard include/config/t0/shift.h) \
    $(wildcard include/config/t0/default.h) \
  include/linux/brcmstb/7439b0/bchp_xpt_memdma_mcpb_ch0.h \
    $(wildcard include/config/ignore/afid/mask.h) \
    $(wildcard include/config/ignore/afid/shift.h) \
    $(wildcard include/config/ignore/cff/mask.h) \
    $(wildcard include/config/ignore/cff/shift.h) \
    $(wildcard include/config/ignore/rts00/mask.h) \
    $(wildcard include/config/ignore/rts00/shift.h) \
    $(wildcard include/config/ignore/afs/mask.h) \
    $(wildcard include/config/ignore/afs/shift.h) \
    $(wildcard include/config/ignore/cc/mask.h) \
    $(wildcard include/config/ignore/cc/shift.h) \
    $(wildcard include/config/ignore/ocf/mask.h) \
    $(wildcard include/config/ignore/ocf/shift.h) \
    $(wildcard include/config/ignore/scf/mask.h) \
    $(wildcard include/config/ignore/scf/shift.h) \
    $(wildcard include/config/pcr/pacing/pid/mask.h) \
    $(wildcard include/config/pcr/pacing/pid/shift.h) \
    $(wildcard include/config/reserved2/mask.h) \
    $(wildcard include/config/reserved2/shift.h) \
    $(wildcard include/config/input/tei/ignore/mask.h) \
    $(wildcard include/config/input/tei/ignore/shift.h) \
    $(wildcard include/config/reserved3/mask.h) \
    $(wildcard include/config/reserved3/shift.h) \
    $(wildcard include/config/parser/accept/null/pkt/mask.h) \
    $(wildcard include/config/parser/accept/null/pkt/shift.h) \
    $(wildcard include/config/ats/parity/check/dis/mask.h) \
    $(wildcard include/config/ats/parity/check/dis/shift.h) \
    $(wildcard include/config/input/has/ats/mask.h) \
    $(wildcard include/config/input/has/ats/shift.h) \
    $(wildcard include/config/mpeg/ts/auto/sync/detect/mask.h) \
    $(wildcard include/config/mpeg/ts/auto/sync/detect/shift.h) \
    $(wildcard include/config/pktz/sc/mask.h) \
    $(wildcard include/config/pktz/sc/shift.h) \
    $(wildcard include/config/stream/id/ext/en/mask.h) \
    $(wildcard include/config/stream/id/ext/en/shift.h) \
    $(wildcard include/config/sub/stream/id/ext/en/mask.h) \
    $(wildcard include/config/sub/stream/id/ext/en/shift.h) \
    $(wildcard include/config/program/stream/en/mask.h) \
    $(wildcard include/config/program/stream/en/shift.h) \
    $(wildcard include/config/program/stream/mode/mask.h) \
    $(wildcard include/config/program/stream/mode/shift.h) \
    $(wildcard include/config/sync/id/high/mask.h) \
    $(wildcard include/config/sync/id/high/shift.h) \
    $(wildcard include/config/sync/id/low/mask.h) \
    $(wildcard include/config/sync/id/low/shift.h) \
    $(wildcard include/config/asf/payload/space/mask.h) \
    $(wildcard include/config/asf/payload/space/shift.h) \
    $(wildcard include/config/asf/data/packet/length/valid/mask.h) \
    $(wildcard include/config/asf/data/packet/length/valid/shift.h) \
    $(wildcard include/config/asf/adaptive/packet/length/enable/mask.h) \
    $(wildcard include/config/asf/adaptive/packet/length/enable/shift.h) \
    $(wildcard include/config/asf/payload/sc/mask.h) \
    $(wildcard include/config/asf/payload/sc/shift.h) \
    $(wildcard include/config/asf/sub/payload/sc/mask.h) \
    $(wildcard include/config/asf/sub/payload/sc/shift.h) \
    $(wildcard include/config/asf/type/80/gen/en/mask.h) \
    $(wildcard include/config/asf/type/80/gen/en/shift.h) \
    $(wildcard include/config/asf/type/8f/gen/en/mask.h) \
    $(wildcard include/config/asf/type/8f/gen/en/shift.h) \
    $(wildcard include/config/asf/test/halt/mask.h) \
    $(wildcard include/config/asf/test/halt/shift.h) \
    $(wildcard include/config/asf/stream/length/endianess/mask.h) \
    $(wildcard include/config/asf/stream/length/endianess/shift.h) \
  include/linux/brcmstb/7439b0/bchp_xpt_pmu.h \
    $(wildcard include/config/mem/init.h) \
    $(wildcard include/config/mem/init/mask.h) \
    $(wildcard include/config/mem/init/shift.h) \
    $(wildcard include/config/mem/init/default.h) \
  include/linux/brcmstb/7439b0/bchp_xpt_security_ns.h \
  include/linux/brcmstb/7439b0/bchp_xpt_security_ns_intr2_0.h \
  include/linux/brcmstb/cma_driver.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/include/uapi/linux/ioctl.h \
  arch/arm/include/generated/asm/ioctl.h \
  include/asm-generic/ioctl.h \
  include/uapi/asm-generic/ioctl.h \
  include/linux/uaccess.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/uaccess.h \
  include/uapi/linux/brcmstb/cma_driver.h \
  include/linux/clk/clk-brcmstb.h \
  include/linux/phy.h \
  include/linux/ethtool.h \
  include/linux/compat.h \
    $(wildcard include/config/compat/old/sigaction.h) \
    $(wildcard include/config/odd/rt/sigaction.h) \
  include/uapi/linux/ethtool.h \
  include/linux/if_ether.h \
  include/linux/skbuff.h \
    $(wildcard include/config/nf/conntrack.h) \
    $(wildcard include/config/bridge/netfilter.h) \
    $(wildcard include/config/xfrm.h) \
    $(wildcard include/config/net/sched.h) \
    $(wildcard include/config/net/cls/act.h) \
    $(wildcard include/config/ipv6/ndisc/nodetype.h) \
    $(wildcard include/config/net/dma.h) \
    $(wildcard include/config/net/rx/busy/poll.h) \
    $(wildcard include/config/network/secmark.h) \
    $(wildcard include/config/network/phy/timestamping.h) \
    $(wildcard include/config/netfilter/xt/target/trace.h) \
    $(wildcard include/config/nf/tables.h) \
  include/linux/kmemcheck.h \
    $(wildcard include/config/kmemcheck.h) \
  include/linux/mm_types.h \
    $(wildcard include/config/split/ptlock/cpus.h) \
    $(wildcard include/config/arch/enable/split/pmd/ptlock.h) \
    $(wildcard include/config/have/cmpxchg/double.h) \
    $(wildcard include/config/have/aligned/struct/page.h) \
    $(wildcard include/config/transparent/hugepage.h) \
    $(wildcard include/config/want/page/debug/flags.h) \
    $(wildcard include/config/aio.h) \
    $(wildcard include/config/mm/owner.h) \
    $(wildcard include/config/mmu/notifier.h) \
  include/linux/auxvec.h \
  include/uapi/linux/auxvec.h \
  arch/arm/include/generated/asm/auxvec.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/include/uapi/asm-generic/auxvec.h \
  include/linux/page-debug-flags.h \
    $(wildcard include/config/page/poisoning.h) \
    $(wildcard include/config/page/guard.h) \
    $(wildcard include/config/page/debug/something/else.h) \
  include/linux/uprobes.h \
    $(wildcard include/config/uprobes.h) \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/mmu.h \
    $(wildcard include/config/cpu/has/asid.h) \
  include/linux/net.h \
  include/linux/random.h \
    $(wildcard include/config/arch/random.h) \
  include/uapi/linux/random.h \
  include/linux/fcntl.h \
  include/uapi/linux/fcntl.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/uapi/asm/fcntl.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/include/uapi/asm-generic/fcntl.h \
  include/linux/jump_label.h \
    $(wildcard include/config/jump/label.h) \
  include/uapi/linux/net.h \
  include/linux/socket.h \
  arch/arm/include/generated/asm/socket.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/include/uapi/asm-generic/socket.h \
  arch/arm/include/generated/asm/sockios.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/include/uapi/asm-generic/sockios.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/include/uapi/linux/sockios.h \
  include/linux/uio.h \
  include/uapi/linux/uio.h \
  include/uapi/linux/socket.h \
  include/linux/textsearch.h \
  include/linux/slab.h \
    $(wildcard include/config/slab/debug.h) \
    $(wildcard include/config/failslab.h) \
    $(wildcard include/config/slob.h) \
    $(wildcard include/config/slab.h) \
    $(wildcard include/config/slub.h) \
    $(wildcard include/config/debug/slab.h) \
  include/linux/kmemleak.h \
    $(wildcard include/config/debug/kmemleak.h) \
  include/linux/slab_def.h \
    $(wildcard include/config/memcg/kmem.h) \
  include/linux/reciprocal_div.h \
  include/net/checksum.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/checksum.h \
  include/linux/in6.h \
  include/uapi/linux/in6.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/include/uapi/linux/libc-compat.h \
  include/linux/dmaengine.h \
    $(wildcard include/config/async/tx/enable/channel/switch.h) \
    $(wildcard include/config/dma/engine.h) \
    $(wildcard include/config/rapidio/dma/engine.h) \
    $(wildcard include/config/async/tx/dma.h) \
  include/linux/scatterlist.h \
    $(wildcard include/config/debug/sg.h) \
  include/linux/mm.h \
    $(wildcard include/config/sysctl.h) \
    $(wildcard include/config/mem/soft/dirty.h) \
    $(wildcard include/config/x86.h) \
    $(wildcard include/config/parisc.h) \
    $(wildcard include/config/metag.h) \
    $(wildcard include/config/ia64.h) \
    $(wildcard include/config/stack/growsup.h) \
    $(wildcard include/config/ksm.h) \
    $(wildcard include/config/shmem.h) \
    $(wildcard include/config/debug/vm/rb.h) \
    $(wildcard include/config/debug/pagealloc.h) \
    $(wildcard include/config/hibernation.h) \
  include/linux/debug_locks.h \
    $(wildcard include/config/debug/locking/api/selftests.h) \
  include/linux/range.h \
  include/linux/bit_spinlock.h \
  include/linux/shrinker.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/pgtable.h \
    $(wildcard include/config/highpte.h) \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/proc-fns.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/glue-proc.h \
    $(wildcard include/config/cpu/arm7tdmi.h) \
    $(wildcard include/config/cpu/arm720t.h) \
    $(wildcard include/config/cpu/arm740t.h) \
    $(wildcard include/config/cpu/arm9tdmi.h) \
    $(wildcard include/config/cpu/arm920t.h) \
    $(wildcard include/config/cpu/arm922t.h) \
    $(wildcard include/config/cpu/arm925t.h) \
    $(wildcard include/config/cpu/arm926t.h) \
    $(wildcard include/config/cpu/arm940t.h) \
    $(wildcard include/config/cpu/arm946e.h) \
    $(wildcard include/config/cpu/arm1020.h) \
    $(wildcard include/config/cpu/arm1020e.h) \
    $(wildcard include/config/cpu/arm1022.h) \
    $(wildcard include/config/cpu/arm1026.h) \
    $(wildcard include/config/cpu/mohawk.h) \
    $(wildcard include/config/cpu/feroceon.h) \
    $(wildcard include/config/cpu/v6k.h) \
    $(wildcard include/config/cpu/v7.h) \
    $(wildcard include/config/cpu/pj4b.h) \
  include/asm-generic/pgtable-nopud.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/pgtable-hwdef.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/pgtable-3level-hwdef.h \
    $(wildcard include/config/vmsplit/2g.h) \
    $(wildcard include/config/vmsplit/3g.h) \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/tlbflush.h \
    $(wildcard include/config/smp/on/up.h) \
    $(wildcard include/config/cpu/tlb/v4wt.h) \
    $(wildcard include/config/cpu/tlb/fa.h) \
    $(wildcard include/config/cpu/tlb/v4wbi.h) \
    $(wildcard include/config/cpu/tlb/feroceon.h) \
    $(wildcard include/config/cpu/tlb/v4wb.h) \
    $(wildcard include/config/cpu/tlb/v6.h) \
    $(wildcard include/config/cpu/tlb/v7.h) \
    $(wildcard include/config/arm/errata/720789.h) \
    $(wildcard include/config/arm/errata/798181.h) \
  include/linux/sched.h \
    $(wildcard include/config/sched/debug.h) \
    $(wildcard include/config/no/hz/common.h) \
    $(wildcard include/config/lockup/detector.h) \
    $(wildcard include/config/detect/hung/task.h) \
    $(wildcard include/config/core/dump/default/elf/headers.h) \
    $(wildcard include/config/sched/autogroup.h) \
    $(wildcard include/config/virt/cpu/accounting/native.h) \
    $(wildcard include/config/bsd/process/acct.h) \
    $(wildcard include/config/taskstats.h) \
    $(wildcard include/config/audit.h) \
    $(wildcard include/config/cgroups.h) \
    $(wildcard include/config/inotify/user.h) \
    $(wildcard include/config/fanotify.h) \
    $(wildcard include/config/epoll.h) \
    $(wildcard include/config/posix/mqueue.h) \
    $(wildcard include/config/keys.h) \
    $(wildcard include/config/perf/events.h) \
    $(wildcard include/config/schedstats.h) \
    $(wildcard include/config/task/delay/acct.h) \
    $(wildcard include/config/fair/group/sched.h) \
    $(wildcard include/config/rt/group/sched.h) \
    $(wildcard include/config/cgroup/sched.h) \
    $(wildcard include/config/blk/dev/io/trace.h) \
    $(wildcard include/config/rcu/boost.h) \
    $(wildcard include/config/compat/brk.h) \
    $(wildcard include/config/cc/stackprotector.h) \
    $(wildcard include/config/virt/cpu/accounting/gen.h) \
    $(wildcard include/config/sysvipc.h) \
    $(wildcard include/config/auditsyscall.h) \
    $(wildcard include/config/rt/mutexes.h) \
    $(wildcard include/config/task/xacct.h) \
    $(wildcard include/config/cpusets.h) \
    $(wildcard include/config/futex.h) \
    $(wildcard include/config/fault/injection.h) \
    $(wildcard include/config/latencytop.h) \
    $(wildcard include/config/function/graph/tracer.h) \
    $(wildcard include/config/bcache.h) \
    $(wildcard include/config/have/unstable/sched/clock.h) \
    $(wildcard include/config/irq/time/accounting.h) \
    $(wildcard include/config/no/hz/full.h) \
  include/uapi/linux/sched.h \
  include/linux/capability.h \
  include/uapi/linux/capability.h \
  include/linux/plist.h \
    $(wildcard include/config/debug/pi/list.h) \
  arch/arm/include/generated/asm/cputime.h \
  include/asm-generic/cputime.h \
    $(wildcard include/config/virt/cpu/accounting.h) \
  include/asm-generic/cputime_jiffies.h \
  include/linux/sem.h \
  include/uapi/linux/sem.h \
  include/linux/ipc.h \
  include/uapi/linux/ipc.h \
  arch/arm/include/generated/asm/ipcbuf.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/include/uapi/asm-generic/ipcbuf.h \
  arch/arm/include/generated/asm/sembuf.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/include/uapi/asm-generic/sembuf.h \
  include/linux/signal.h \
    $(wildcard include/config/old/sigaction.h) \
  include/uapi/linux/signal.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/signal.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/uapi/asm/signal.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/include/uapi/asm-generic/signal-defs.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/uapi/asm/sigcontext.h \
  arch/arm/include/generated/asm/siginfo.h \
  include/asm-generic/siginfo.h \
  include/uapi/asm-generic/siginfo.h \
  include/linux/pid.h \
  include/linux/proportions.h \
  include/linux/percpu_counter.h \
  include/linux/seccomp.h \
    $(wildcard include/config/seccomp.h) \
    $(wildcard include/config/seccomp/filter.h) \
  include/uapi/linux/seccomp.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/seccomp.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/include/uapi/linux/unistd.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/unistd.h \
    $(wildcard include/config/oabi/compat.h) \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/uapi/asm/unistd.h \
  include/linux/rculist.h \
  include/linux/rtmutex.h \
    $(wildcard include/config/debug/rt/mutexes.h) \
  include/linux/resource.h \
  include/uapi/linux/resource.h \
  arch/arm/include/generated/asm/resource.h \
  include/asm-generic/resource.h \
  include/uapi/asm-generic/resource.h \
  include/linux/hrtimer.h \
    $(wildcard include/config/high/res/timers.h) \
    $(wildcard include/config/timerfd.h) \
  include/linux/timerqueue.h \
  include/linux/task_io_accounting.h \
    $(wildcard include/config/task/io/accounting.h) \
  include/linux/latencytop.h \
  include/linux/cred.h \
    $(wildcard include/config/debug/credentials.h) \
    $(wildcard include/config/security.h) \
  include/linux/key.h \
  include/linux/sysctl.h \
  include/uapi/linux/sysctl.h \
  include/linux/assoc_array.h \
    $(wildcard include/config/associative/array.h) \
  include/linux/selinux.h \
    $(wildcard include/config/security/selinux.h) \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/pgtable-3level.h \
  include/asm-generic/pgtable.h \
    $(wildcard include/config/have/arch/soft/dirty.h) \
    $(wildcard include/config/arch/uses/numa/prot/none.h) \
  include/linux/page-flags.h \
    $(wildcard include/config/pageflags/extended.h) \
    $(wildcard include/config/arch/uses/pg/uncached.h) \
    $(wildcard include/config/memory/failure.h) \
    $(wildcard include/config/swap.h) \
  include/linux/huge_mm.h \
  include/linux/vmstat.h \
    $(wildcard include/config/vm/event/counters.h) \
    $(wildcard include/config/debug/tlbflush.h) \
  include/linux/vm_event_item.h \
    $(wildcard include/config/migration.h) \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/scatterlist.h \
    $(wildcard include/config/arm/has/sg/chain.h) \
  include/asm-generic/scatterlist.h \
    $(wildcard include/config/need/sg/dma/length.h) \
  include/linux/dma-mapping.h \
    $(wildcard include/config/has/dma.h) \
    $(wildcard include/config/arch/has/dma/set/coherent/mask.h) \
    $(wildcard include/config/have/dma/attrs.h) \
    $(wildcard include/config/need/dma/map/state.h) \
  include/linux/dma-attrs.h \
  include/linux/dma-direction.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/dma-mapping.h \
  include/linux/dma-debug.h \
    $(wildcard include/config/dma/api/debug.h) \
  include/asm-generic/dma-coherent.h \
    $(wildcard include/config/have/generic/dma/coherent.h) \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/xen/hypervisor.h \
  include/asm-generic/dma-mapping-common.h \
  include/linux/netdev_features.h \
  include/net/flow_keys.h \
  include/uapi/linux/if_ether.h \
  include/linux/mii.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/include/uapi/linux/if.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/include/uapi/linux/hdlc/ioctl.h \
  include/uapi/linux/mii.h \
  include/linux/phy_fixed.h \
  include/linux/irqchip.h \
    $(wildcard include/config/irqchip.h) \
  include/linux/irqchip/arm-gic.h \
  include/linux/syscore_ops.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/cacheflush.h \
    $(wildcard include/config/cache/b15/rac.h) \
    $(wildcard include/config/arm/errata/411920.h) \
    $(wildcard include/config/cpu/cache/vipt.h) \
    $(wildcard include/config/frame/pointer.h) \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/glue-cache.h \
    $(wildcard include/config/cpu/cache/v4.h) \
    $(wildcard include/config/cpu/cache/v4wb.h) \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/shmparam.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/cachetype.h \
    $(wildcard include/config/cpu/cache/vivt.h) \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/mach-types.h \
  include/generated/mach-types.h \
    $(wildcard include/config/arch/ebsa110.h) \
    $(wildcard include/config/arch/rpc.h) \
    $(wildcard include/config/arch/ebsa285.h) \
    $(wildcard include/config/arch/netwinder.h) \
    $(wildcard include/config/arch/cats.h) \
    $(wildcard include/config/arch/shark.h) \
    $(wildcard include/config/sa1100/brutus.h) \
    $(wildcard include/config/arch/personal/server.h) \
    $(wildcard include/config/arch/l7200.h) \
    $(wildcard include/config/sa1100/pleb.h) \
    $(wildcard include/config/arch/integrator.h) \
    $(wildcard include/config/sa1100/h3600.h) \
    $(wildcard include/config/arch/p720t.h) \
    $(wildcard include/config/sa1100/assabet.h) \
    $(wildcard include/config/sa1100/lart.h) \
    $(wildcard include/config/sa1100/graphicsclient.h) \
    $(wildcard include/config/sa1100/xp860.h) \
    $(wildcard include/config/sa1100/cerf.h) \
    $(wildcard include/config/sa1100/nanoengine.h) \
    $(wildcard include/config/sa1100/jornada720.h) \
    $(wildcard include/config/arch/edb7211.h) \
    $(wildcard include/config/sa1100/pfs168.h) \
    $(wildcard include/config/sa1100/flexanet.h) \
    $(wildcard include/config/sa1100/simpad.h) \
    $(wildcard include/config/arch/lubbock.h) \
    $(wildcard include/config/arch/clep7212.h) \
    $(wildcard include/config/sa1100/shannon.h) \
    $(wildcard include/config/sa1100/consus.h) \
    $(wildcard include/config/arch/aaed2000.h) \
    $(wildcard include/config/arch/cdb89712.h) \
    $(wildcard include/config/sa1100/graphicsmaster.h) \
    $(wildcard include/config/sa1100/adsbitsy.h) \
    $(wildcard include/config/arch/pxa/idp.h) \
    $(wildcard include/config/sa1100/pt/system3.h) \
    $(wildcard include/config/arch/autcpu12.h) \
    $(wildcard include/config/sa1100/h3100.h) \
    $(wildcard include/config/sa1100/collie.h) \
    $(wildcard include/config/sa1100/badge4.h) \
    $(wildcard include/config/arch/fortunet.h) \
    $(wildcard include/config/arch/mx1ads.h) \
    $(wildcard include/config/arch/h7201.h) \
    $(wildcard include/config/arch/h7202.h) \
    $(wildcard include/config/arch/iq80321.h) \
    $(wildcard include/config/arch/ks8695.h) \
    $(wildcard include/config/arch/smdk2410.h) \
    $(wildcard include/config/arch/ceiva.h) \
    $(wildcard include/config/mach/voiceblue.h) \
    $(wildcard include/config/arch/h5400.h) \
    $(wildcard include/config/mach/omap/innovator.h) \
    $(wildcard include/config/arch/ixdp2400.h) \
    $(wildcard include/config/arch/ixdp2800.h) \
    $(wildcard include/config/arch/ixdp425.h) \
    $(wildcard include/config/sa1100/hackkit.h) \
    $(wildcard include/config/arch/ixcdp1100.h) \
    $(wildcard include/config/arch/at91rm9200dk.h) \
    $(wildcard include/config/arch/cintegrator.h) \
    $(wildcard include/config/arch/viper.h) \
    $(wildcard include/config/arch/adi/coyote.h) \
    $(wildcard include/config/arch/ixdp2401.h) \
    $(wildcard include/config/arch/ixdp2801.h) \
    $(wildcard include/config/arch/iq31244.h) \
    $(wildcard include/config/arch/bast.h) \
    $(wildcard include/config/arch/h1940.h) \
    $(wildcard include/config/arch/enp2611.h) \
    $(wildcard include/config/arch/s3c2440.h) \
    $(wildcard include/config/arch/gumstix.h) \
    $(wildcard include/config/mach/omap/h2.h) \
    $(wildcard include/config/mach/e740.h) \
    $(wildcard include/config/arch/iq80331.h) \
    $(wildcard include/config/arch/versatile/pb.h) \
    $(wildcard include/config/mach/kev7a400.h) \
    $(wildcard include/config/mach/lpd7a400.h) \
    $(wildcard include/config/mach/lpd7a404.h) \
    $(wildcard include/config/mach/csb337.h) \
    $(wildcard include/config/mach/mainstone.h) \
    $(wildcard include/config/mach/lite300.h) \
    $(wildcard include/config/mach/xcep.h) \
    $(wildcard include/config/mach/arcom/vulcan.h) \
    $(wildcard include/config/mach/nomadik.h) \
    $(wildcard include/config/mach/corgi.h) \
    $(wildcard include/config/mach/poodle.h) \
    $(wildcard include/config/mach/armcore.h) \
    $(wildcard include/config/mach/mx31ads.h) \
    $(wildcard include/config/mach/himalaya.h) \
    $(wildcard include/config/mach/edb9312.h) \
    $(wildcard include/config/mach/omap/generic.h) \
    $(wildcard include/config/mach/edb9301.h) \
    $(wildcard include/config/mach/edb9315.h) \
    $(wildcard include/config/mach/vr1000.h) \
    $(wildcard include/config/mach/omap/perseus2.h) \
    $(wildcard include/config/mach/e800.h) \
    $(wildcard include/config/mach/e750.h) \
    $(wildcard include/config/mach/scb9328.h) \
    $(wildcard include/config/mach/omap/h3.h) \
    $(wildcard include/config/mach/omap/h4.h) \
    $(wildcard include/config/mach/omap/osk.h) \
    $(wildcard include/config/mach/tosa.h) \
    $(wildcard include/config/mach/avila.h) \
    $(wildcard include/config/mach/edb9302.h) \
    $(wildcard include/config/mach/husky.h) \
    $(wildcard include/config/mach/shepherd.h) \
    $(wildcard include/config/mach/h4700.h) \
    $(wildcard include/config/mach/rx3715.h) \
    $(wildcard include/config/mach/nslu2.h) \
    $(wildcard include/config/mach/e400.h) \
    $(wildcard include/config/mach/ixdpg425.h) \
    $(wildcard include/config/mach/versatile/ab.h) \
    $(wildcard include/config/mach/edb9307.h) \
    $(wildcard include/config/mach/kb9200.h) \
    $(wildcard include/config/mach/sx1.h) \
    $(wildcard include/config/mach/ixdp465.h) \
    $(wildcard include/config/mach/ixdp2351.h) \
    $(wildcard include/config/mach/cm4008.h) \
    $(wildcard include/config/mach/iq80332.h) \
    $(wildcard include/config/mach/gtwx5715.h) \
    $(wildcard include/config/mach/csb637.h) \
    $(wildcard include/config/mach/n30.h) \
    $(wildcard include/config/mach/nec/mp900.h) \
    $(wildcard include/config/mach/kafa.h) \
    $(wildcard include/config/mach/cm41xx.h) \
    $(wildcard include/config/mach/ts72xx.h) \
    $(wildcard include/config/mach/otom.h) \
    $(wildcard include/config/mach/nexcoder/2440.h) \
    $(wildcard include/config/mach/eco920.h) \
    $(wildcard include/config/mach/roadrunner.h) \
    $(wildcard include/config/mach/at91rm9200ek.h) \
    $(wildcard include/config/mach/spitz.h) \
    $(wildcard include/config/mach/adssphere.h) \
    $(wildcard include/config/mach/colibri.h) \
    $(wildcard include/config/mach/gateway7001.h) \
    $(wildcard include/config/mach/pcm027.h) \
    $(wildcard include/config/mach/anubis.h) \
    $(wildcard include/config/mach/xboardgp8.h) \
    $(wildcard include/config/mach/akita.h) \
    $(wildcard include/config/mach/e330.h) \
    $(wildcard include/config/mach/nokia770.h) \
    $(wildcard include/config/mach/carmeva.h) \
    $(wildcard include/config/mach/edb9315a.h) \
    $(wildcard include/config/mach/stargate2.h) \
    $(wildcard include/config/mach/intelmote2.h) \
    $(wildcard include/config/mach/trizeps4.h) \
    $(wildcard include/config/mach/pnx4008.h) \
    $(wildcard include/config/mach/cpuat91.h) \
    $(wildcard include/config/mach/iq81340sc.h) \
    $(wildcard include/config/mach/iq81340mc.h) \
    $(wildcard include/config/mach/se4200.h) \
    $(wildcard include/config/mach/micro9.h) \
    $(wildcard include/config/mach/micro9l.h) \
    $(wildcard include/config/mach/omap/palmte.h) \
    $(wildcard include/config/mach/realview/eb.h) \
    $(wildcard include/config/mach/borzoi.h) \
    $(wildcard include/config/mach/palmld.h) \
    $(wildcard include/config/mach/ixdp28x5.h) \
    $(wildcard include/config/mach/omap/palmtt.h) \
    $(wildcard include/config/mach/arcom/zeus.h) \
    $(wildcard include/config/mach/osiris.h) \
    $(wildcard include/config/mach/palmte2.h) \
    $(wildcard include/config/mach/mx27ads.h) \
    $(wildcard include/config/mach/at91sam9261ek.h) \
    $(wildcard include/config/mach/loft.h) \
    $(wildcard include/config/mach/mx21ads.h) \
    $(wildcard include/config/mach/ams/delta.h) \
    $(wildcard include/config/mach/nas100d.h) \
    $(wildcard include/config/mach/magician.h) \
    $(wildcard include/config/mach/cm4002.h) \
    $(wildcard include/config/mach/nxdkn.h) \
    $(wildcard include/config/mach/palmtx.h) \
    $(wildcard include/config/mach/s3c2413.h) \
    $(wildcard include/config/mach/wg302v2.h) \
    $(wildcard include/config/mach/omap/2430sdp.h) \
    $(wildcard include/config/mach/davinci/evm.h) \
    $(wildcard include/config/mach/palmz72.h) \
    $(wildcard include/config/mach/nxdb500.h) \
    $(wildcard include/config/mach/apf9328.h) \
    $(wildcard include/config/mach/palmt5.h) \
    $(wildcard include/config/mach/palmtc.h) \
    $(wildcard include/config/mach/omap/apollon.h) \
    $(wildcard include/config/mach/ateb9200.h) \
    $(wildcard include/config/mach/n35.h) \
    $(wildcard include/config/mach/logicpd/pxa270.h) \
    $(wildcard include/config/mach/nxeb500hmi.h) \
    $(wildcard include/config/mach/espresso.h) \
    $(wildcard include/config/mach/rx1950.h) \
    $(wildcard include/config/mach/gesbc9312.h) \
    $(wildcard include/config/mach/picotux2xx.h) \
    $(wildcard include/config/mach/dsmg600.h) \
    $(wildcard include/config/mach/omap/fsample.h) \
    $(wildcard include/config/mach/snapper/cl15.h) \
    $(wildcard include/config/mach/omap/palmz71.h) \
    $(wildcard include/config/mach/smdk2412.h) \
    $(wildcard include/config/mach/smdk2413.h) \
    $(wildcard include/config/mach/aml/m5900.h) \
    $(wildcard include/config/mach/balloon3.h) \
    $(wildcard include/config/mach/ecbat91.h) \
    $(wildcard include/config/mach/onearm.h) \
    $(wildcard include/config/mach/smdk2443.h) \
    $(wildcard include/config/mach/fsg.h) \
    $(wildcard include/config/mach/at91sam9260ek.h) \
    $(wildcard include/config/mach/glantank.h) \
    $(wildcard include/config/mach/n2100.h) \
    $(wildcard include/config/mach/im42xx.h) \
    $(wildcard include/config/mach/qt2410.h) \
    $(wildcard include/config/mach/kixrp435.h) \
    $(wildcard include/config/mach/cc9p9360dev.h) \
    $(wildcard include/config/mach/edb9302a.h) \
    $(wildcard include/config/mach/edb9307a.h) \
    $(wildcard include/config/mach/omap/3430sdp.h) \
    $(wildcard include/config/mach/vstms.h) \
    $(wildcard include/config/mach/micro9m.h) \
    $(wildcard include/config/mach/bug.h) \
    $(wildcard include/config/mach/at91sam9263ek.h) \
    $(wildcard include/config/mach/em7210.h) \
    $(wildcard include/config/mach/vpac270.h) \
    $(wildcard include/config/mach/treo680.h) \
    $(wildcard include/config/mach/zylonite.h) \
    $(wildcard include/config/mach/mx31lite.h) \
    $(wildcard include/config/mach/mioa701.h) \
    $(wildcard include/config/mach/armadillo5x0.h) \
    $(wildcard include/config/mach/cc9p9360js.h) \
    $(wildcard include/config/mach/smdk6400.h) \
    $(wildcard include/config/mach/nokia/n800.h) \
    $(wildcard include/config/mach/ep80219.h) \
    $(wildcard include/config/mach/goramo/mlr.h) \
    $(wildcard include/config/mach/em/x270.h) \
    $(wildcard include/config/mach/neo1973/gta02.h) \
    $(wildcard include/config/mach/at91sam9rlek.h) \
    $(wildcard include/config/mach/colibri320.h) \
    $(wildcard include/config/mach/cam60.h) \
    $(wildcard include/config/mach/at91eb01.h) \
    $(wildcard include/config/mach/db88f5281.h) \
    $(wildcard include/config/mach/csb726.h) \
    $(wildcard include/config/mach/davinci/dm6467/evm.h) \
    $(wildcard include/config/mach/davinci/dm355/evm.h) \
    $(wildcard include/config/mach/littleton.h) \
    $(wildcard include/config/mach/im4004.h) \
    $(wildcard include/config/mach/realview/pb11mp.h) \
    $(wildcard include/config/mach/mx27/3ds.h) \
    $(wildcard include/config/mach/halibut.h) \
    $(wildcard include/config/mach/trout.h) \
    $(wildcard include/config/mach/tct/hammer.h) \
    $(wildcard include/config/mach/herald.h) \
    $(wildcard include/config/mach/sim/one.h) \
    $(wildcard include/config/mach/jive.h) \
    $(wildcard include/config/mach/sam9/l9260.h) \
    $(wildcard include/config/mach/realview/pb1176.h) \
    $(wildcard include/config/mach/yl9200.h) \
    $(wildcard include/config/mach/rd88f5182.h) \
    $(wildcard include/config/mach/kurobox/pro.h) \
    $(wildcard include/config/mach/mx31/3ds.h) \
    $(wildcard include/config/mach/qong.h) \
    $(wildcard include/config/mach/omap2evm.h) \
    $(wildcard include/config/mach/omap3evm.h) \
    $(wildcard include/config/mach/dns323.h) \
    $(wildcard include/config/mach/omap3/beagle.h) \
    $(wildcard include/config/mach/nokia/n810.h) \
    $(wildcard include/config/mach/pcm038.h) \
    $(wildcard include/config/mach/sg310.h) \
    $(wildcard include/config/mach/ts209.h) \
    $(wildcard include/config/mach/at91cap9adk.h) \
    $(wildcard include/config/mach/mx31moboard.h) \
    $(wildcard include/config/mach/vision/ep9307.h) \
    $(wildcard include/config/mach/terastation/pro2.h) \
    $(wildcard include/config/mach/linkstation/pro.h) \
    $(wildcard include/config/mach/e350.h) \
    $(wildcard include/config/mach/ts409.h) \
    $(wildcard include/config/mach/rsi/ews.h) \
    $(wildcard include/config/mach/cm/x300.h) \
    $(wildcard include/config/mach/at91sam9g20ek.h) \
    $(wildcard include/config/mach/smdk6410.h) \
    $(wildcard include/config/mach/u300.h) \
    $(wildcard include/config/mach/wrt350n/v2.h) \
    $(wildcard include/config/mach/omap/ldp.h) \
    $(wildcard include/config/mach/mx35/3ds.h) \
    $(wildcard include/config/mach/neuros/osd2.h) \
    $(wildcard include/config/mach/trizeps4wl.h) \
    $(wildcard include/config/mach/ts78xx.h) \
    $(wildcard include/config/mach/sffsdr.h) \
    $(wildcard include/config/mach/pcm037.h) \
    $(wildcard include/config/mach/db88f6281/bp.h) \
    $(wildcard include/config/mach/rd88f6192/nas.h) \
    $(wildcard include/config/mach/rd88f6281.h) \
    $(wildcard include/config/mach/db78x00/bp.h) \
    $(wildcard include/config/mach/smdk2416.h) \
    $(wildcard include/config/mach/wbd111.h) \
    $(wildcard include/config/mach/mv2120.h) \
    $(wildcard include/config/mach/mx51/3ds.h) \
    $(wildcard include/config/mach/imx27lite.h) \
    $(wildcard include/config/mach/usb/a9260.h) \
    $(wildcard include/config/mach/usb/a9263.h) \
    $(wildcard include/config/mach/qil/a9260.h) \
    $(wildcard include/config/mach/kzm/arm11/01.h) \
    $(wildcard include/config/mach/nokia/n810/wimax.h) \
    $(wildcard include/config/mach/sapphire.h) \
    $(wildcard include/config/mach/stmp37xx.h) \
    $(wildcard include/config/mach/stmp378x.h) \
    $(wildcard include/config/mach/ezx/a780.h) \
    $(wildcard include/config/mach/ezx/e680.h) \
    $(wildcard include/config/mach/ezx/a1200.h) \
    $(wildcard include/config/mach/ezx/e6.h) \
    $(wildcard include/config/mach/ezx/e2.h) \
    $(wildcard include/config/mach/ezx/a910.h) \
    $(wildcard include/config/mach/edmini/v2.h) \
    $(wildcard include/config/mach/zipit2.h) \
    $(wildcard include/config/mach/omap3/pandora.h) \
    $(wildcard include/config/mach/mss2.h) \
    $(wildcard include/config/mach/lb88rc8480.h) \
    $(wildcard include/config/mach/mx25/3ds.h) \
    $(wildcard include/config/mach/omap3530/lv/som.h) \
    $(wildcard include/config/mach/davinci/da830/evm.h) \
    $(wildcard include/config/mach/dove/db.h) \
    $(wildcard include/config/mach/overo.h) \
    $(wildcard include/config/mach/at2440evb.h) \
    $(wildcard include/config/mach/neocore926.h) \
    $(wildcard include/config/mach/wnr854t.h) \
    $(wildcard include/config/mach/rd88f5181l/ge.h) \
    $(wildcard include/config/mach/rd88f5181l/fxo.h) \
    $(wildcard include/config/mach/stamp9g20.h) \
    $(wildcard include/config/mach/smdkc100.h) \
    $(wildcard include/config/mach/tavorevb.h) \
    $(wildcard include/config/mach/saar.h) \
    $(wildcard include/config/mach/at91sam9m10g45ek.h) \
    $(wildcard include/config/mach/usb/a9g20.h) \
    $(wildcard include/config/mach/mxlads.h) \
    $(wildcard include/config/mach/linkstation/mini.h) \
    $(wildcard include/config/mach/afeb9260.h) \
    $(wildcard include/config/mach/imx27ipcam.h) \
    $(wildcard include/config/mach/rd88f6183ap/ge.h) \
    $(wildcard include/config/mach/realview/pba8.h) \
    $(wildcard include/config/mach/realview/pbx.h) \
    $(wildcard include/config/mach/micro9s.h) \
    $(wildcard include/config/mach/rut100.h) \
    $(wildcard include/config/mach/g3evm.h) \
    $(wildcard include/config/mach/w90p910evb.h) \
    $(wildcard include/config/mach/w90p950evb.h) \
    $(wildcard include/config/mach/w90n960evb.h) \
    $(wildcard include/config/mach/mv88f6281gtw/ge.h) \
    $(wildcard include/config/mach/ncp.h) \
    $(wildcard include/config/mach/davinci/dm365/evm.h) \
    $(wildcard include/config/mach/centro.h) \
    $(wildcard include/config/mach/nokia/rx51.h) \
    $(wildcard include/config/mach/omap/zoom2.h) \
    $(wildcard include/config/mach/cpuat9260.h) \
    $(wildcard include/config/mach/eukrea/cpuimx27.h) \
    $(wildcard include/config/mach/acs5k.h) \
    $(wildcard include/config/mach/snapper/9260.h) \
    $(wildcard include/config/mach/dsm320.h) \
    $(wildcard include/config/mach/exeda.h) \
    $(wildcard include/config/mach/mini2440.h) \
    $(wildcard include/config/mach/colibri300.h) \
    $(wildcard include/config/mach/linkstation/ls/hgl.h) \
    $(wildcard include/config/mach/cpuat9g20.h) \
    $(wildcard include/config/mach/smdk6440.h) \
    $(wildcard include/config/mach/nas4220b.h) \
    $(wildcard include/config/mach/zylonite2.h) \
    $(wildcard include/config/mach/aspenite.h) \
    $(wildcard include/config/mach/ttc/dkb.h) \
    $(wildcard include/config/mach/pcm043.h) \
    $(wildcard include/config/mach/sheevaplug.h) \
    $(wildcard include/config/mach/avengers/lite.h) \
    $(wildcard include/config/mach/mx51/babbage.h) \
    $(wildcard include/config/mach/rd78x00/masa.h) \
    $(wildcard include/config/mach/dm355/leopard.h) \
    $(wildcard include/config/mach/ts219.h) \
    $(wildcard include/config/mach/pca100.h) \
    $(wildcard include/config/mach/davinci/da850/evm.h) \
    $(wildcard include/config/mach/at91sam9g10ek.h) \
    $(wildcard include/config/mach/omap/4430sdp.h) \
    $(wildcard include/config/mach/magx/zn5.h) \
    $(wildcard include/config/mach/omap3/torpedo.h) \
    $(wildcard include/config/mach/anw6410.h) \
    $(wildcard include/config/mach/imx27/visstrim/m10.h) \
    $(wildcard include/config/mach/portuxg20.h) \
    $(wildcard include/config/mach/smdkc110.h) \
    $(wildcard include/config/mach/cabespresso.h) \
    $(wildcard include/config/mach/omap3517evm.h) \
    $(wildcard include/config/mach/netspace/v2.h) \
    $(wildcard include/config/mach/netspace/max/v2.h) \
    $(wildcard include/config/mach/d2net/v2.h) \
    $(wildcard include/config/mach/net2big/v2.h) \
    $(wildcard include/config/mach/net5big/v2.h) \
    $(wildcard include/config/mach/inetspace/v2.h) \
    $(wildcard include/config/mach/at91sam9g45ekes.h) \
    $(wildcard include/config/mach/spear600.h) \
    $(wildcard include/config/mach/spear300.h) \
    $(wildcard include/config/mach/lilly1131.h) \
    $(wildcard include/config/mach/hmt.h) \
    $(wildcard include/config/mach/vexpress.h) \
    $(wildcard include/config/mach/d2net.h) \
    $(wildcard include/config/mach/bigdisk.h) \
    $(wildcard include/config/mach/at91sam9g20ek/2mmc.h) \
    $(wildcard include/config/mach/bcmring.h) \
    $(wildcard include/config/mach/mahimahi.h) \
    $(wildcard include/config/mach/cerebric.h) \
    $(wildcard include/config/mach/smdk6442.h) \
    $(wildcard include/config/mach/openrd/base.h) \
    $(wildcard include/config/mach/devkit8000.h) \
    $(wildcard include/config/mach/mx51/efikamx.h) \
    $(wildcard include/config/mach/cm/t35.h) \
    $(wildcard include/config/mach/net2big.h) \
    $(wildcard include/config/mach/igep0020.h) \
    $(wildcard include/config/mach/nuc932evb.h) \
    $(wildcard include/config/mach/openrd/client.h) \
    $(wildcard include/config/mach/u8500.h) \
    $(wildcard include/config/mach/mx51/efikasb.h) \
    $(wildcard include/config/mach/marvell/jasper.h) \
    $(wildcard include/config/mach/flint.h) \
    $(wildcard include/config/mach/tavorevb3.h) \
    $(wildcard include/config/mach/touchbook.h) \
    $(wildcard include/config/mach/raumfeld/rc.h) \
    $(wildcard include/config/mach/raumfeld/connector.h) \
    $(wildcard include/config/mach/raumfeld/speaker.h) \
    $(wildcard include/config/mach/tnetv107x.h) \
    $(wildcard include/config/mach/smdkv210.h) \
    $(wildcard include/config/mach/omap/zoom3.h) \
    $(wildcard include/config/mach/omap/3630sdp.h) \
    $(wildcard include/config/mach/cybook2440.h) \
    $(wildcard include/config/mach/smartq7.h) \
    $(wildcard include/config/mach/watson/efm/plugin.h) \
    $(wildcard include/config/mach/g4evm.h) \
    $(wildcard include/config/mach/omapl138/hawkboard.h) \
    $(wildcard include/config/mach/ts41x.h) \
    $(wildcard include/config/mach/phy3250.h) \
    $(wildcard include/config/mach/mini6410.h) \
    $(wildcard include/config/mach/mx28evk.h) \
    $(wildcard include/config/mach/smartq5.h) \
    $(wildcard include/config/mach/davinci/dm6467tevm.h) \
    $(wildcard include/config/mach/mxt/td60.h) \
    $(wildcard include/config/mach/capc7117.h) \
    $(wildcard include/config/mach/icontrol.h) \
    $(wildcard include/config/mach/gplugd.h) \
    $(wildcard include/config/mach/qsd8x50a/st1/5.h) \
    $(wildcard include/config/mach/mx23evk.h) \
    $(wildcard include/config/mach/ap4evb.h) \
    $(wildcard include/config/mach/mityomapl138.h) \
    $(wildcard include/config/mach/guruplug.h) \
    $(wildcard include/config/mach/spear310.h) \
    $(wildcard include/config/mach/spear320.h) \
    $(wildcard include/config/mach/aquila.h) \
    $(wildcard include/config/mach/esata/sheevaplug.h) \
    $(wildcard include/config/mach/msm7x30/surf.h) \
    $(wildcard include/config/mach/terastation/wxl.h) \
    $(wildcard include/config/mach/msm7x25/surf.h) \
    $(wildcard include/config/mach/msm7x25/ffa.h) \
    $(wildcard include/config/mach/msm7x27/surf.h) \
    $(wildcard include/config/mach/msm7x27/ffa.h) \
    $(wildcard include/config/mach/msm7x30/ffa.h) \
    $(wildcard include/config/mach/qsd8x50/surf.h) \
    $(wildcard include/config/mach/mx53/evk.h) \
    $(wildcard include/config/mach/igep0030.h) \
    $(wildcard include/config/mach/sbc3530.h) \
    $(wildcard include/config/mach/saarb.h) \
    $(wildcard include/config/mach/harmony.h) \
    $(wildcard include/config/mach/cybook/orizon.h) \
    $(wildcard include/config/mach/msm7x30/fluid.h) \
    $(wildcard include/config/mach/cm/t3517.h) \
    $(wildcard include/config/mach/wbd222.h) \
    $(wildcard include/config/mach/msm8x60/surf.h) \
    $(wildcard include/config/mach/msm8x60/sim.h) \
    $(wildcard include/config/mach/tcc8000/sdk.h) \
    $(wildcard include/config/mach/cns3420vb.h) \
    $(wildcard include/config/mach/omap4/panda.h) \
    $(wildcard include/config/mach/ti8168evm.h) \
    $(wildcard include/config/mach/teton/bga.h) \
    $(wildcard include/config/mach/eukrea/cpuimx25sd.h) \
    $(wildcard include/config/mach/eukrea/cpuimx35sd.h) \
    $(wildcard include/config/mach/eukrea/cpuimx51sd.h) \
    $(wildcard include/config/mach/eukrea/cpuimx51.h) \
    $(wildcard include/config/mach/smdkc210.h) \
    $(wildcard include/config/mach/t5325.h) \
    $(wildcard include/config/mach/income.h) \
    $(wildcard include/config/mach/goni.h) \
    $(wildcard include/config/mach/bv07.h) \
    $(wildcard include/config/mach/openrd/ultimate.h) \
    $(wildcard include/config/mach/devixp.h) \
    $(wildcard include/config/mach/miccpt.h) \
    $(wildcard include/config/mach/mic256.h) \
    $(wildcard include/config/mach/u5500.h) \
    $(wildcard include/config/mach/linkstation/lschl.h) \
    $(wildcard include/config/mach/smdkv310.h) \
    $(wildcard include/config/mach/wm8505/7in/netbook.h) \
    $(wildcard include/config/mach/craneboard.h) \
    $(wildcard include/config/mach/smdk6450.h) \
    $(wildcard include/config/mach/brownstone.h) \
    $(wildcard include/config/mach/flexibity.h) \
    $(wildcard include/config/mach/mx50/rdp.h) \
    $(wildcard include/config/mach/universal/c210.h) \
    $(wildcard include/config/mach/real6410.h) \
    $(wildcard include/config/mach/dockstar.h) \
    $(wildcard include/config/mach/ti8148evm.h) \
    $(wildcard include/config/mach/seaboard.h) \
    $(wildcard include/config/mach/mx53/ard.h) \
    $(wildcard include/config/mach/mx53/smd.h) \
    $(wildcard include/config/mach/msm8x60/rumi3.h) \
    $(wildcard include/config/mach/msm8x60/ffa.h) \
    $(wildcard include/config/mach/cm/a510.h) \
    $(wildcard include/config/mach/tx28.h) \
    $(wildcard include/config/mach/pcontrol/g20.h) \
    $(wildcard include/config/mach/vpr200.h) \
    $(wildcard include/config/mach/torbreck.h) \
    $(wildcard include/config/mach/prima2/evb.h) \
    $(wildcard include/config/mach/paz00.h) \
    $(wildcard include/config/mach/acmenetusfoxg20.h) \
    $(wildcard include/config/mach/ag5evm.h) \
    $(wildcard include/config/mach/ics/if/voip.h) \
    $(wildcard include/config/mach/wlf/cragg/6410.h) \
    $(wildcard include/config/mach/trimslice.h) \
    $(wildcard include/config/mach/mackerel.h) \
    $(wildcard include/config/mach/kaen.h) \
    $(wildcard include/config/mach/nokia/rm680.h) \
    $(wildcard include/config/mach/msm8960/sim.h) \
    $(wildcard include/config/mach/msm8960/rumi3.h) \
    $(wildcard include/config/mach/gsia18s.h) \
    $(wildcard include/config/mach/mx53/loco.h) \
    $(wildcard include/config/mach/wario.h) \
    $(wildcard include/config/mach/cm/t3730.h) \
    $(wildcard include/config/mach/hrefv60.h) \
    $(wildcard include/config/mach/armlex4210.h) \
    $(wildcard include/config/mach/snowball.h) \
    $(wildcard include/config/mach/xilinx/ep107.h) \
    $(wildcard include/config/mach/nuri.h) \
    $(wildcard include/config/mach/origen.h) \
    $(wildcard include/config/mach/nspire.h) \
    $(wildcard include/config/mach/nokia/rm696.h) \
    $(wildcard include/config/mach/mikrap/x168.h) \
    $(wildcard include/config/mach/deto/macarm9.h) \
    $(wildcard include/config/mach/m28evk.h) \
    $(wildcard include/config/mach/kota2.h) \
    $(wildcard include/config/mach/bonito.h) \
    $(wildcard include/config/mach/omap3/egf.h) \
    $(wildcard include/config/mach/smdk4212.h) \
    $(wildcard include/config/mach/apx4devkit.h) \
    $(wildcard include/config/mach/smdk4412.h) \
    $(wildcard include/config/mach/marzen.h) \
    $(wildcard include/config/mach/krome.h) \
    $(wildcard include/config/mach/armadillo800eva.h) \
    $(wildcard include/config/mach/mx53/umobo.h) \
    $(wildcard include/config/mach/mt4.h) \
    $(wildcard include/config/mach/u8520.h) \
    $(wildcard include/config/mach/chupacabra.h) \
    $(wildcard include/config/mach/scorpion.h) \
    $(wildcard include/config/mach/davinci/he/hmi10.h) \
    $(wildcard include/config/mach/topkick.h) \
    $(wildcard include/config/mach/m3/auguestrush.h) \
    $(wildcard include/config/mach/ipc335x.h) \
    $(wildcard include/config/mach/sun4i.h) \
    $(wildcard include/config/mach/imx233/olinuxino.h) \
    $(wildcard include/config/mach/k2/wl.h) \
    $(wildcard include/config/mach/k2/ul.h) \
    $(wildcard include/config/mach/k2/cl.h) \
    $(wildcard include/config/mach/minbari/w.h) \
    $(wildcard include/config/mach/minbari/m.h) \
    $(wildcard include/config/mach/k035.h) \
    $(wildcard include/config/mach/ariel.h) \
    $(wildcard include/config/mach/arielsaarc.h) \
    $(wildcard include/config/mach/arieldkb.h) \
    $(wildcard include/config/mach/armadillo810.h) \
    $(wildcard include/config/mach/tam335x.h) \
    $(wildcard include/config/mach/grouper.h) \
    $(wildcard include/config/mach/mpcsa21/9g20.h) \
    $(wildcard include/config/mach/m6u/cpu.h) \
    $(wildcard include/config/mach/ginkgo.h) \
    $(wildcard include/config/mach/cgt/qmx6.h) \
    $(wildcard include/config/mach/profpga.h) \
    $(wildcard include/config/mach/acfx100oc.h) \
    $(wildcard include/config/mach/acfx100nb.h) \
    $(wildcard include/config/mach/capricorn.h) \
    $(wildcard include/config/mach/pisces.h) \
    $(wildcard include/config/mach/aries.h) \
    $(wildcard include/config/mach/cancer.h) \
    $(wildcard include/config/mach/leo.h) \
    $(wildcard include/config/mach/virgo.h) \
    $(wildcard include/config/mach/sagittarius.h) \
    $(wildcard include/config/mach/devil.h) \
    $(wildcard include/config/mach/ballantines.h) \
    $(wildcard include/config/mach/omap3/procerusvpu.h) \
    $(wildcard include/config/mach/my27.h) \
    $(wildcard include/config/mach/sun6i.h) \
    $(wildcard include/config/mach/sun5i.h) \
    $(wildcard include/config/mach/mx512/mx.h) \
    $(wildcard include/config/mach/kzm9g.h) \
    $(wildcard include/config/mach/vdstbn.h) \
    $(wildcard include/config/mach/cfa10036.h) \
    $(wildcard include/config/mach/cfa10049.h) \
    $(wildcard include/config/mach/pcm051.h) \
    $(wildcard include/config/mach/vybrid/vf7xx.h) \
    $(wildcard include/config/mach/vybrid/vf6xx.h) \
    $(wildcard include/config/mach/vybrid/vf5xx.h) \
    $(wildcard include/config/mach/vybrid/vf4xx.h) \
    $(wildcard include/config/mach/aria/g25.h) \
    $(wildcard include/config/mach/bcm21553.h) \
    $(wildcard include/config/mach/smdk5410.h) \
    $(wildcard include/config/mach/lpc18xx.h) \
    $(wildcard include/config/mach/oratisparty.h) \
    $(wildcard include/config/mach/qseven.h) \
    $(wildcard include/config/mach/gmv/generic.h) \
    $(wildcard include/config/mach/th/link/eth.h) \
    $(wildcard include/config/mach/tn/muninn.h) \
    $(wildcard include/config/mach/rampage.h) \
    $(wildcard include/config/mach/visstrim/mv10.h) \
    $(wildcard include/config/mach/mx28/wilma.h) \
    $(wildcard include/config/mach/msm8625/ffa.h) \
    $(wildcard include/config/mach/vpu101.h) \
    $(wildcard include/config/mach/baileys.h) \
    $(wildcard include/config/mach/familybox.h) \
    $(wildcard include/config/mach/ensemble/mx35.h) \
    $(wildcard include/config/mach/sc/sps/1.h) \
    $(wildcard include/config/mach/ucsimply/sam9260.h) \
    $(wildcard include/config/mach/unicorn.h) \
    $(wildcard include/config/mach/m9g45a.h) \
    $(wildcard include/config/mach/mtwebif.h) \
    $(wildcard include/config/mach/playstone.h) \
    $(wildcard include/config/mach/chelsea.h) \
    $(wildcard include/config/mach/bayern.h) \
    $(wildcard include/config/mach/mitwo.h) \
    $(wildcard include/config/mach/mx25/noah.h) \
    $(wildcard include/config/mach/stm/b2020.h) \
    $(wildcard include/config/mach/annax/src.h) \
    $(wildcard include/config/mach/ionics/stratus.h) \
    $(wildcard include/config/mach/hugo.h) \
    $(wildcard include/config/mach/em300.h) \
    $(wildcard include/config/mach/mmp3/qseven.h) \
    $(wildcard include/config/mach/bosphorus2.h) \
    $(wildcard include/config/mach/tt2200.h) \
    $(wildcard include/config/mach/ocelot3.h) \
    $(wildcard include/config/mach/tek/cobra.h) \
    $(wildcard include/config/mach/protou.h) \
    $(wildcard include/config/mach/msm8625/evt.h) \
    $(wildcard include/config/mach/mx53/sellwood.h) \
    $(wildcard include/config/mach/somiq/am35.h) \
    $(wildcard include/config/mach/somiq/am37.h) \
    $(wildcard include/config/mach/k2/plc/cl.h) \
    $(wildcard include/config/mach/tc2.h) \
    $(wildcard include/config/mach/dulex/j.h) \
    $(wildcard include/config/mach/stm/b2044.h) \
    $(wildcard include/config/mach/deluxe/j.h) \
    $(wildcard include/config/mach/mango2443.h) \
    $(wildcard include/config/mach/cp2dcg.h) \
    $(wildcard include/config/mach/cp2dtg.h) \
    $(wildcard include/config/mach/cp2dug.h) \
    $(wildcard include/config/mach/var/som/am33.h) \
    $(wildcard include/config/mach/pepper.h) \
    $(wildcard include/config/mach/mango2450.h) \
    $(wildcard include/config/mach/valente/wx/c9.h) \
    $(wildcard include/config/mach/minitv.h) \
    $(wildcard include/config/mach/u8540.h) \
    $(wildcard include/config/mach/iv/atlas/i/z7e.h) \
    $(wildcard include/config/mach/mach/type/sky.h) \
    $(wildcard include/config/mach/bluesky.h) \
    $(wildcard include/config/mach/ngrouter.h) \
    $(wildcard include/config/mach/mx53/denetim.h) \
    $(wildcard include/config/mach/opal.h) \
    $(wildcard include/config/mach/gnet/us3gref.h) \
    $(wildcard include/config/mach/gnet/nc3g.h) \
    $(wildcard include/config/mach/gnet/ge3g.h) \
    $(wildcard include/config/mach/adp2.h) \
    $(wildcard include/config/mach/tqma28.h) \
    $(wildcard include/config/mach/kacom3.h) \
    $(wildcard include/config/mach/rrhdemo.h) \
    $(wildcard include/config/mach/protodug.h) \
    $(wildcard include/config/mach/lago.h) \
    $(wildcard include/config/mach/ktt30.h) \
    $(wildcard include/config/mach/ts43xx.h) \
    $(wildcard include/config/mach/mx6q/denso.h) \
    $(wildcard include/config/mach/comsat/gsmumts8.h) \
    $(wildcard include/config/mach/dreamx.h) \
    $(wildcard include/config/mach/thunderstonem.h) \
    $(wildcard include/config/mach/yoyopad.h) \
    $(wildcard include/config/mach/yoyopatient.h) \
    $(wildcard include/config/mach/a10l.h) \
    $(wildcard include/config/mach/mq60.h) \
    $(wildcard include/config/mach/linkstation/lsql.h) \
    $(wildcard include/config/mach/am3703gateway.h) \
    $(wildcard include/config/mach/accipiter.h) \
    $(wildcard include/config/mach/magnidug.h) \
    $(wildcard include/config/mach/hydra.h) \
    $(wildcard include/config/mach/sun3i.h) \
    $(wildcard include/config/mach/stm/b2078.h) \
    $(wildcard include/config/mach/at91sam9263deskv2.h) \
    $(wildcard include/config/mach/deluxe/r.h) \
    $(wildcard include/config/mach/p/98/v.h) \
    $(wildcard include/config/mach/p/98/c.h) \
    $(wildcard include/config/mach/davinci/am18xx/omn.h) \
    $(wildcard include/config/mach/socfpga/cyclone5.h) \
    $(wildcard include/config/mach/cabatuin.h) \
    $(wildcard include/config/mach/yoyopad/ft.h) \
    $(wildcard include/config/mach/dan2400evb.h) \
    $(wildcard include/config/mach/dan3400evb.h) \
    $(wildcard include/config/mach/edm/sf/imx6.h) \
    $(wildcard include/config/mach/edm/cf/imx6.h) \
    $(wildcard include/config/mach/vpos3xx.h) \
    $(wildcard include/config/mach/vulcano/9x5.h) \
    $(wildcard include/config/mach/spmp8000.h) \
    $(wildcard include/config/mach/catalina.h) \
    $(wildcard include/config/mach/rd88f5181l/fe.h) \
    $(wildcard include/config/mach/mx535/mx.h) \
    $(wildcard include/config/mach/armadillo840.h) \
    $(wildcard include/config/mach/spc9000baseboard.h) \
    $(wildcard include/config/mach/iris.h) \
    $(wildcard include/config/mach/protodcg.h) \
    $(wildcard include/config/mach/palmtree.h) \
    $(wildcard include/config/mach/novena.h) \
    $(wildcard include/config/mach/ma/um.h) \
    $(wildcard include/config/mach/ma/am.h) \
    $(wildcard include/config/mach/ems348.h) \
    $(wildcard include/config/mach/cm/fx6.h) \
    $(wildcard include/config/mach/arndale.h) \
    $(wildcard include/config/mach/q5xr5.h) \
    $(wildcard include/config/mach/willow.h) \
    $(wildcard include/config/mach/omap3621/odyv3.h) \
    $(wildcard include/config/mach/omapl138/presonus.h) \
    $(wildcard include/config/mach/dvf99.h) \
    $(wildcard include/config/mach/impression/j.h) \
    $(wildcard include/config/mach/qblissa9.h) \
    $(wildcard include/config/mach/robin/heliview10.h) \
    $(wildcard include/config/mach/sun7i.h) \
    $(wildcard include/config/mach/mx6q/hdmidongle.h) \
    $(wildcard include/config/mach/mx6/sid2.h) \
    $(wildcard include/config/mach/helios/v3.h) \
    $(wildcard include/config/mach/helios/v4.h) \
    $(wildcard include/config/mach/q7/imx6.h) \
    $(wildcard include/config/mach/odroidx.h) \
    $(wildcard include/config/mach/robpro.h) \
    $(wildcard include/config/mach/research59if/mk1.h) \
    $(wildcard include/config/mach/bobsleigh.h) \
    $(wildcard include/config/mach/dcshgwt3.h) \
    $(wildcard include/config/mach/gld1018.h) \
    $(wildcard include/config/mach/ev10.h) \
    $(wildcard include/config/mach/nitrogen6x.h) \
    $(wildcard include/config/mach/p/107/bb.h) \
    $(wildcard include/config/mach/evita/utl.h) \
    $(wildcard include/config/mach/falconwing.h) \
    $(wildcard include/config/mach/dct3.h) \
    $(wildcard include/config/mach/cpx2e/cell.h) \
    $(wildcard include/config/mach/amiro.h) \
    $(wildcard include/config/mach/mx6q/brassboard.h) \
    $(wildcard include/config/mach/dalmore.h) \
    $(wildcard include/config/mach/omap3/portal7cp.h) \
    $(wildcard include/config/mach/tegra/pluto.h) \
    $(wildcard include/config/mach/mx6sl/evk.h) \
    $(wildcard include/config/mach/m7.h) \
    $(wildcard include/config/mach/pxm2.h) \
    $(wildcard include/config/mach/haba/knx/lite.h) \
    $(wildcard include/config/mach/tai.h) \
    $(wildcard include/config/mach/prototd.h) \
    $(wildcard include/config/mach/dst/tonto.h) \
    $(wildcard include/config/mach/draco.h) \
    $(wildcard include/config/mach/dxr2.h) \
    $(wildcard include/config/mach/rut.h) \
    $(wildcard include/config/mach/am180x/wsc.h) \
    $(wildcard include/config/mach/deluxe/u.h) \
    $(wildcard include/config/mach/deluxe/ul.h) \
    $(wildcard include/config/mach/at91sam9260medths.h) \
    $(wildcard include/config/mach/matrix516.h) \
    $(wildcard include/config/mach/vid401x.h) \
    $(wildcard include/config/mach/helios/v5.h) \
    $(wildcard include/config/mach/playpaq2.h) \
    $(wildcard include/config/mach/igam.h) \
    $(wildcard include/config/mach/amico/i.h) \
    $(wildcard include/config/mach/amico/e.h) \
    $(wildcard include/config/mach/sentient/mm3/ck.h) \
    $(wildcard include/config/mach/smx6.h) \
    $(wildcard include/config/mach/pango.h) \
    $(wildcard include/config/mach/ns115/stick.h) \
    $(wildcard include/config/mach/bctrm3.h) \
    $(wildcard include/config/mach/doctorws.h) \
    $(wildcard include/config/mach/m2601.h) \
    $(wildcard include/config/mach/vgg1111.h) \
    $(wildcard include/config/mach/countach.h) \
    $(wildcard include/config/mach/visstrim/sm20.h) \
    $(wildcard include/config/mach/a639.h) \
    $(wildcard include/config/mach/spacemonkey.h) \
    $(wildcard include/config/mach/zpdu/stamp.h) \
    $(wildcard include/config/mach/htc/g7/clone.h) \
    $(wildcard include/config/mach/ft2080/corvus.h) \
    $(wildcard include/config/mach/fisland.h) \
    $(wildcard include/config/mach/zpdu.h) \
    $(wildcard include/config/mach/urt.h) \
    $(wildcard include/config/mach/conti/ovip.h) \
    $(wildcard include/config/mach/omapl138/nagra.h) \
    $(wildcard include/config/mach/da850/at3kp1.h) \
    $(wildcard include/config/mach/da850/at3kp2.h) \
    $(wildcard include/config/mach/surma.h) \
    $(wildcard include/config/mach/stm/b2092.h) \
    $(wildcard include/config/mach/mx535/ycr.h) \
    $(wildcard include/config/mach/m7/wl.h) \
    $(wildcard include/config/mach/m7/u.h) \
    $(wildcard include/config/mach/omap3/stndt/evm.h) \
    $(wildcard include/config/mach/m7/wlv.h) \
    $(wildcard include/config/mach/xam3517.h) \
    $(wildcard include/config/mach/a220.h) \
    $(wildcard include/config/mach/aclima/odie.h) \
    $(wildcard include/config/mach/vibble.h) \
    $(wildcard include/config/mach/k2/u.h) \
    $(wildcard include/config/mach/mx53/egf.h) \
    $(wildcard include/config/mach/novpek/imx53.h) \
    $(wildcard include/config/mach/novpek/imx6x.h) \
    $(wildcard include/config/mach/mx25/smartbox.h) \
    $(wildcard include/config/mach/eicg6410.h) \
    $(wildcard include/config/mach/picasso/e3.h) \
    $(wildcard include/config/mach/motonavigator.h) \
    $(wildcard include/config/mach/varioconnect2.h) \
    $(wildcard include/config/mach/deluxe/tw.h) \
    $(wildcard include/config/mach/kore3.h) \
    $(wildcard include/config/mach/mx6s/drs.h) \
    $(wildcard include/config/mach/cmimx6.h) \
    $(wildcard include/config/mach/roth.h) \
    $(wildcard include/config/mach/eq4ux.h) \
    $(wildcard include/config/mach/x1plus.h) \
    $(wildcard include/config/mach/modimx27.h) \
    $(wildcard include/config/mach/videon/hduac.h) \
    $(wildcard include/config/mach/blackbird.h) \
    $(wildcard include/config/mach/runmaster.h) \
    $(wildcard include/config/mach/ceres.h) \
    $(wildcard include/config/mach/nad435.h) \
    $(wildcard include/config/mach/ns115/proto/type.h) \
    $(wildcard include/config/mach/fs20/vcc.h) \
    $(wildcard include/config/mach/meson6tv/skt.h) \
    $(wildcard include/config/mach/keystone.h) \
    $(wildcard include/config/mach/pcm052.h) \
    $(wildcard include/config/mach/qrd/skud/prime.h) \
    $(wildcard include/config/mach/guf/santaro.h) \
    $(wildcard include/config/mach/sheepshead.h) \
    $(wildcard include/config/mach/mx6/iwg15m/mxm.h) \
    $(wildcard include/config/mach/mx6/iwg15m/q7.h) \
    $(wildcard include/config/mach/at91sam9263if8mic.h) \
    $(wildcard include/config/mach/marcopolo.h) \
    $(wildcard include/config/mach/mx535/sdcr.h) \
    $(wildcard include/config/mach/mx53/csb2733.h) \
    $(wildcard include/config/mach/diva.h) \
    $(wildcard include/config/mach/ncr/7744.h) \
    $(wildcard include/config/mach/macallan.h) \
    $(wildcard include/config/mach/wnr3500.h) \
    $(wildcard include/config/mach/pgavrf.h) \
    $(wildcard include/config/mach/helios/v6.h) \
    $(wildcard include/config/mach/lcct.h) \
    $(wildcard include/config/mach/csndug.h) \
    $(wildcard include/config/mach/wandboard/imx6.h) \
    $(wildcard include/config/mach/omap4/jet.h) \
    $(wildcard include/config/mach/tegra/roth.h) \
    $(wildcard include/config/mach/m7dcg.h) \
    $(wildcard include/config/mach/m7dug.h) \
    $(wildcard include/config/mach/m7dtg.h) \
    $(wildcard include/config/mach/ap42x.h) \
    $(wildcard include/config/mach/var/som/mx6.h) \
    $(wildcard include/config/mach/pdlu.h) \
    $(wildcard include/config/mach/hydrogen.h) \
    $(wildcard include/config/mach/npa211e.h) \
    $(wildcard include/config/mach/arcadia.h) \
    $(wildcard include/config/mach/arcadia/l.h) \
    $(wildcard include/config/mach/msm8930dt.h) \
    $(wildcard include/config/mach/ktam3874.h) \
    $(wildcard include/config/mach/cec4.h) \
    $(wildcard include/config/mach/ape6evm.h) \
    $(wildcard include/config/mach/tx6.h) \
    $(wildcard include/config/mach/cfa10037.h) \
    $(wildcard include/config/mach/ezp1000.h) \
    $(wildcard include/config/mach/wgr826v.h) \
    $(wildcard include/config/mach/exuma.h) \
    $(wildcard include/config/mach/fregate.h) \
    $(wildcard include/config/mach/osirisimx508.h) \
    $(wildcard include/config/mach/st/exigo.h) \
    $(wildcard include/config/mach/pismo.h) \
    $(wildcard include/config/mach/atc7.h) \
    $(wildcard include/config/mach/nspireclp.h) \
    $(wildcard include/config/mach/nspiretp.h) \
    $(wildcard include/config/mach/nspirecx.h) \
    $(wildcard include/config/mach/maya.h) \
    $(wildcard include/config/mach/wecct.h) \
    $(wildcard include/config/mach/m2s.h) \
    $(wildcard include/config/mach/msm8625q/evbd.h) \
    $(wildcard include/config/mach/tiny210.h) \
    $(wildcard include/config/mach/g3.h) \
    $(wildcard include/config/mach/hurricane.h) \
    $(wildcard include/config/mach/mx6/pod.h) \
    $(wildcard include/config/mach/elondcn.h) \
    $(wildcard include/config/mach/cwmx535.h) \
    $(wildcard include/config/mach/m7/wlj.h) \
    $(wildcard include/config/mach/qsp/arm.h) \
    $(wildcard include/config/mach/msm8625q/skud.h) \
    $(wildcard include/config/mach/htcmondrian.h) \
    $(wildcard include/config/mach/watson/ead.h) \
    $(wildcard include/config/mach/mitwoa.h) \
    $(wildcard include/config/mach/omap3/wolverine.h) \
    $(wildcard include/config/mach/mapletree.h) \
    $(wildcard include/config/mach/msm8625/fih/sae.h) \
    $(wildcard include/config/mach/epc35.h) \
    $(wildcard include/config/mach/smartrtu.h) \
    $(wildcard include/config/mach/rcm101.h) \
    $(wildcard include/config/mach/amx/imx53/mxx.h) \
    $(wildcard include/config/mach/acer/a12.h) \
    $(wildcard include/config/mach/sbc6x.h) \
    $(wildcard include/config/mach/u2.h) \
    $(wildcard include/config/mach/smdk4270.h) \
    $(wildcard include/config/mach/priscillag.h) \
    $(wildcard include/config/mach/priscillac.h) \
    $(wildcard include/config/mach/priscilla.h) \
    $(wildcard include/config/mach/innova/shpu/v2.h) \
    $(wildcard include/config/mach/mach/type/dep2410.h) \
    $(wildcard include/config/mach/bctre3.h) \
    $(wildcard include/config/mach/omap/m100.h) \
    $(wildcard include/config/mach/flo.h) \
    $(wildcard include/config/mach/nanobone.h) \
    $(wildcard include/config/mach/stm/b2105.h) \
    $(wildcard include/config/mach/omap4/bsc/bap/v3.h) \
    $(wildcard include/config/mach/ss1pam.h) \
    $(wildcard include/config/mach/primominiu.h) \
    $(wildcard include/config/mach/mrt/35hd/dualnas/e.h) \
    $(wildcard include/config/mach/kiwi.h) \
    $(wildcard include/config/mach/hw90496.h) \
    $(wildcard include/config/mach/mep2440.h) \
    $(wildcard include/config/mach/colibri/t30.h) \
    $(wildcard include/config/mach/cwv1.h) \
    $(wildcard include/config/mach/nsa325.h) \
    $(wildcard include/config/mach/dpxmtc.h) \
    $(wildcard include/config/mach/tt/stuttgart.h) \
    $(wildcard include/config/mach/miranda/apcii.h) \
    $(wildcard include/config/mach/mx6q/moderox.h) \
    $(wildcard include/config/mach/mudskipper.h) \
    $(wildcard include/config/mach/urania.h) \
    $(wildcard include/config/mach/stm/b2112.h) \
    $(wildcard include/config/mach/mx6q/ats/phoenix.h) \
    $(wildcard include/config/mach/stm/b2116.h) \
    $(wildcard include/config/mach/mythology.h) \
    $(wildcard include/config/mach/fc360v1.h) \
    $(wildcard include/config/mach/gps/sensor.h) \
    $(wildcard include/config/mach/gazelle.h) \
    $(wildcard include/config/mach/mpq8064/dma.h) \
    $(wildcard include/config/mach/wems/asd01.h) \
    $(wildcard include/config/mach/apalis/t30.h) \
    $(wildcard include/config/mach/armstonea9.h) \
    $(wildcard include/config/mach/omap/blazetablet.h) \
    $(wildcard include/config/mach/ar6mxq.h) \
    $(wildcard include/config/mach/ar6mxs.h) \
    $(wildcard include/config/mach/gwventana.h) \
    $(wildcard include/config/mach/igep0033.h) \
    $(wildcard include/config/mach/h52c1/concerto.h) \
    $(wildcard include/config/mach/fcmbrd.h) \
    $(wildcard include/config/mach/pcaaxs1.h) \
    $(wildcard include/config/mach/ls/orca.h) \
    $(wildcard include/config/mach/pcm051lb.h) \
    $(wildcard include/config/mach/mx6s/lp507/gvci.h) \
    $(wildcard include/config/mach/dido.h) \
    $(wildcard include/config/mach/swarco/itc3/9g20.h) \
    $(wildcard include/config/mach/robo/roady.h) \
    $(wildcard include/config/mach/rskrza1.h) \
    $(wildcard include/config/mach/swarco/sid.h) \
    $(wildcard include/config/mach/mx6/iwg15s/sbc.h) \
    $(wildcard include/config/mach/mx6q/camaro.h) \
    $(wildcard include/config/mach/hb6mxs.h) \
    $(wildcard include/config/mach/lager.h) \
    $(wildcard include/config/mach/lp8x4x.h) \
    $(wildcard include/config/mach/tegratab7.h) \
    $(wildcard include/config/mach/andromeda.h) \
    $(wildcard include/config/mach/bootes.h) \
    $(wildcard include/config/mach/nethmi.h) \
    $(wildcard include/config/mach/tegratab.h) \
    $(wildcard include/config/mach/som5/evb.h) \
    $(wildcard include/config/mach/venaticorum.h) \
    $(wildcard include/config/mach/stm/b2110.h) \
    $(wildcard include/config/mach/elux/hathor.h) \
    $(wildcard include/config/mach/helios/v7.h) \
    $(wildcard include/config/mach/xc10v1.h) \
    $(wildcard include/config/mach/cp2u.h) \
    $(wildcard include/config/mach/iap/f.h) \
    $(wildcard include/config/mach/iap/g.h) \
    $(wildcard include/config/mach/aae.h) \
    $(wildcard include/config/mach/pegasus.h) \
    $(wildcard include/config/mach/cygnus.h) \
    $(wildcard include/config/mach/centaurus.h) \
    $(wildcard include/config/mach/msm8930/qrd8930.h) \
    $(wildcard include/config/mach/quby/tim.h) \
    $(wildcard include/config/mach/zedi3250a.h) \
    $(wildcard include/config/mach/grus.h) \
    $(wildcard include/config/mach/apollo3.h) \
    $(wildcard include/config/mach/cowon/r7.h) \
    $(wildcard include/config/mach/tonga3.h) \
    $(wildcard include/config/mach/p535.h) \
    $(wildcard include/config/mach/sa3874i.h) \
    $(wildcard include/config/mach/mx6/navico/com.h) \
    $(wildcard include/config/mach/proxmobil2.h) \
    $(wildcard include/config/mach/ubinux1.h) \
    $(wildcard include/config/mach/istos.h) \
    $(wildcard include/config/mach/benvolio4.h) \
    $(wildcard include/config/mach/eco5/bx2.h) \
    $(wildcard include/config/mach/eukrea/cpuimx28sd.h) \
    $(wildcard include/config/mach/domotab.h) \
    $(wildcard include/config/mach/pfla03.h) \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/mach/arch.h \
  include/linux/reboot.h \
  include/uapi/linux/reboot.h \
  arch/arm/include/generated/asm/emergency-restart.h \
  include/asm-generic/emergency-restart.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/mach/map.h \
    $(wildcard include/config/debug/ll.h) \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/mach/time.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/setup.h \
    $(wildcard include/config/arm/nr/banks.h) \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/uapi/asm/setup.h \
  arch/arm/mach-bcm/brcmstb.h \

arch/arm/mach-bcm/brcmstb.o: $(deps_arch/arm/mach-bcm/brcmstb.o)

$(deps_arch/arm/mach-bcm/brcmstb.o):
