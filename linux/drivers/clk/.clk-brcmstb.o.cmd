cmd_drivers/clk/clk-brcmstb.o := arm-linux-gnueabihf-gcc -Wp,-MD,drivers/clk/.clk-brcmstb.o.d  -nostdinc -isystem /car/2-lmp-mr1-tv-dev/prebuilts/gcc/linux-x86/arm/stb/stbgcc-4.8-1.2/bin/../lib/gcc/arm-linux-gnueabihf/4.8.4/include -I/car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include -Iarch/arm/include/generated  -Iinclude -I/car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/uapi -Iarch/arm/include/generated/uapi -I/car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/include/uapi -Iinclude/generated/uapi -include /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/include/linux/kconfig.h -D__KERNEL__ -mlittle-endian -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -Werror-implicit-function-declaration -Wno-format-security -fno-delete-null-pointer-checks -O2 -fno-dwarf2-cfi-asm -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -funwind-tables -marm -D__LINUX_ARM_ARCH__=7 -march=armv7-a -msoft-float -Uarm -Wframe-larger-than=1024 -fno-stack-protector -Wno-unused-but-set-variable -fomit-frame-pointer -fno-var-tracking-assignments -g -femit-struct-debug-baseonly -fno-var-tracking -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-overflow -fconserve-stack -Werror=implicit-int -Werror=strict-prototypes -DCC_HAVE_ASM_GOTO    -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(clk_brcmstb)"  -D"KBUILD_MODNAME=KBUILD_STR(clk_brcmstb)" -c -o drivers/clk/.tmp_clk-brcmstb.o drivers/clk/clk-brcmstb.c

source_drivers/clk/clk-brcmstb.o := drivers/clk/clk-brcmstb.c

deps_drivers/clk/clk-brcmstb.o := \
    $(wildcard include/config/pm/sleep.h) \
  include/linux/io.h \
    $(wildcard include/config/mmu.h) \
    $(wildcard include/config/has/ioport.h) \
  include/linux/types.h \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/lbdaf.h) \
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
  include/linux/stddef.h \
  include/uapi/linux/stddef.h \
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
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/uapi/asm/posix_types.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/include/uapi/asm-generic/posix_types.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/io.h \
    $(wildcard include/config/arm/dma/mem/bufferable.h) \
    $(wildcard include/config/need/mach/io/h.h) \
    $(wildcard include/config/pci.h) \
    $(wildcard include/config/pcmcia/soc/common.h) \
    $(wildcard include/config/isa.h) \
    $(wildcard include/config/pccard.h) \
  include/linux/blk_types.h \
    $(wildcard include/config/block.h) \
    $(wildcard include/config/blk/cgroup.h) \
    $(wildcard include/config/blk/dev/integrity.h) \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/uapi/asm/byteorder.h \
  include/linux/byteorder/little_endian.h \
  include/uapi/linux/byteorder/little_endian.h \
  include/linux/swab.h \
  include/uapi/linux/swab.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/swab.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/uapi/asm/swab.h \
  include/linux/byteorder/generic.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/memory.h \
    $(wildcard include/config/need/mach/memory/h.h) \
    $(wildcard include/config/page/offset.h) \
    $(wildcard include/config/thumb2/kernel.h) \
    $(wildcard include/config/highmem.h) \
    $(wildcard include/config/dram/size.h) \
    $(wildcard include/config/dram/base.h) \
    $(wildcard include/config/have/tcm.h) \
    $(wildcard include/config/arm/lpae.h) \
    $(wildcard include/config/phys/offset.h) \
    $(wildcard include/config/arm/patch/phys/virt.h) \
    $(wildcard include/config/virt/to/bus.h) \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/include/uapi/linux/const.h \
  include/linux/sizes.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/cache.h \
    $(wildcard include/config/arm/l1/cache/shift.h) \
    $(wildcard include/config/aeabi.h) \
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
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/barrier.h \
    $(wildcard include/config/cpu/32v6k.h) \
    $(wildcard include/config/cpu/xsc3.h) \
    $(wildcard include/config/cpu/fa526.h) \
    $(wildcard include/config/arch/has/barriers.h) \
    $(wildcard include/config/smp.h) \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/outercache.h \
    $(wildcard include/config/outer/cache/sync.h) \
    $(wildcard include/config/outer/cache.h) \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/page.h \
    $(wildcard include/config/cpu/copy/v4wt.h) \
    $(wildcard include/config/cpu/copy/v4wb.h) \
    $(wildcard include/config/cpu/copy/feroceon.h) \
    $(wildcard include/config/cpu/copy/fa.h) \
    $(wildcard include/config/cpu/sa1100.h) \
    $(wildcard include/config/cpu/xscale.h) \
    $(wildcard include/config/cpu/copy/v6.h) \
    $(wildcard include/config/kuser/helpers.h) \
    $(wildcard include/config/have/arch/pfn/valid.h) \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/glue.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/pgtable-3level-types.h \
  include/asm-generic/getorder.h \
  include/linux/log2.h \
    $(wildcard include/config/arch/has/ilog2/u32.h) \
    $(wildcard include/config/arch/has/ilog2/u64.h) \
  include/linux/bitops.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/bitops.h \
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
  include/asm-generic/bitops/ext2-atomic-setbit.h \
  include/linux/of.h \
    $(wildcard include/config/sparc.h) \
    $(wildcard include/config/of/dynamic.h) \
    $(wildcard include/config/of.h) \
    $(wildcard include/config/attach/node.h) \
    $(wildcard include/config/detach/node.h) \
    $(wildcard include/config/add/property.h) \
    $(wildcard include/config/remove/property.h) \
    $(wildcard include/config/update/property.h) \
    $(wildcard include/config/numa.h) \
    $(wildcard include/config/proc/fs.h) \
    $(wildcard include/config/proc/devicetree.h) \
  include/linux/errno.h \
  include/uapi/linux/errno.h \
  arch/arm/include/generated/asm/errno.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/include/uapi/asm-generic/errno.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/include/uapi/asm-generic/errno-base.h \
  include/linux/kref.h \
  include/linux/bug.h \
    $(wildcard include/config/generic/bug.h) \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/bug.h \
    $(wildcard include/config/debug/bugverbose.h) \
  include/linux/linkage.h \
  include/linux/stringify.h \
  include/linux/export.h \
    $(wildcard include/config/have/underscore/symbol/prefix.h) \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/modversions.h) \
    $(wildcard include/config/unused/symbols.h) \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/linkage.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/opcodes.h \
    $(wildcard include/config/cpu/endian/be32.h) \
  include/asm-generic/bug.h \
    $(wildcard include/config/bug.h) \
    $(wildcard include/config/generic/bug/relative/pointers.h) \
  include/linux/kernel.h \
    $(wildcard include/config/preempt/voluntary.h) \
    $(wildcard include/config/debug/atomic/sleep.h) \
    $(wildcard include/config/prove/locking.h) \
    $(wildcard include/config/panic/timeout.h) \
    $(wildcard include/config/ring/buffer.h) \
    $(wildcard include/config/tracing.h) \
    $(wildcard include/config/ftrace/mcount/record.h) \
  /car/2-lmp-mr1-tv-dev/prebuilts/gcc/linux-x86/arm/stb/stbgcc-4.8-1.2/lib/gcc/arm-linux-gnueabihf/4.8.4/include/stdarg.h \
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
  include/linux/dynamic_debug.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/div64.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/compiler.h \
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
    $(wildcard include/config/cpu/sa110.h) \
    $(wildcard include/config/cpu/v6.h) \
  include/asm-generic/cmpxchg-local.h \
  include/asm-generic/atomic-long.h \
  include/linux/mutex.h \
    $(wildcard include/config/debug/mutexes.h) \
    $(wildcard include/config/mutex/spin/on/owner.h) \
    $(wildcard include/config/debug/lock/alloc.h) \
  arch/arm/include/generated/asm/current.h \
  include/asm-generic/current.h \
  include/linux/thread_info.h \
    $(wildcard include/config/compat.h) \
    $(wildcard include/config/debug/stack/usage.h) \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/thread_info.h \
    $(wildcard include/config/crunch.h) \
    $(wildcard include/config/arm/thumbee.h) \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/fpstate.h \
    $(wildcard include/config/vfpv3.h) \
    $(wildcard include/config/iwmmxt.h) \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/domain.h \
    $(wildcard include/config/io/36.h) \
    $(wildcard include/config/cpu/use/domains.h) \
  include/linux/list.h \
    $(wildcard include/config/debug/list.h) \
  include/linux/poison.h \
    $(wildcard include/config/illegal/pointer/value.h) \
  include/linux/spinlock_types.h \
    $(wildcard include/config/generic/lockbreak.h) \
    $(wildcard include/config/debug/spinlock.h) \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/spinlock_types.h \
  include/linux/lockdep.h \
    $(wildcard include/config/lockdep.h) \
    $(wildcard include/config/lock/stat.h) \
    $(wildcard include/config/prove/rcu.h) \
  include/linux/rwlock_types.h \
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
  include/linux/mod_devicetable.h \
  include/linux/uuid.h \
  include/uapi/linux/uuid.h \
  include/linux/string.h \
    $(wildcard include/config/binary/printf.h) \
  include/uapi/linux/string.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/string.h \
  include/linux/topology.h \
    $(wildcard include/config/sched/smt.h) \
    $(wildcard include/config/sched/mc.h) \
    $(wildcard include/config/sched/book.h) \
    $(wildcard include/config/use/percpu/numa/node/id.h) \
    $(wildcard include/config/have/memoryless/nodes.h) \
  include/linux/cpumask.h \
    $(wildcard include/config/cpumask/offstack.h) \
    $(wildcard include/config/hotplug/cpu.h) \
    $(wildcard include/config/debug/per/cpu/maps.h) \
    $(wildcard include/config/disable/obsolete/cpumask/functions.h) \
  include/linux/threads.h \
    $(wildcard include/config/nr/cpus.h) \
    $(wildcard include/config/base/small.h) \
  include/linux/bitmap.h \
  include/linux/mmzone.h \
    $(wildcard include/config/force/max/zoneorder.h) \
    $(wildcard include/config/cma.h) \
    $(wildcard include/config/memory/isolation.h) \
    $(wildcard include/config/memcg.h) \
    $(wildcard include/config/zone/dma.h) \
    $(wildcard include/config/zone/dma32.h) \
    $(wildcard include/config/compaction.h) \
    $(wildcard include/config/memory/hotplug.h) \
    $(wildcard include/config/have/memblock/node/map.h) \
    $(wildcard include/config/flat/node/mem/map.h) \
    $(wildcard include/config/no/bootmem.h) \
    $(wildcard include/config/numa/balancing.h) \
    $(wildcard include/config/have/memory/present.h) \
    $(wildcard include/config/need/node/memmap/size.h) \
    $(wildcard include/config/need/multiple/nodes.h) \
    $(wildcard include/config/have/arch/early/pfn/to/nid.h) \
    $(wildcard include/config/sparsemem/extreme.h) \
    $(wildcard include/config/nodes/span/other/nodes.h) \
    $(wildcard include/config/holes/in/zone.h) \
    $(wildcard include/config/arch/has/holes/memorymodel.h) \
  include/linux/wait.h \
  include/uapi/linux/wait.h \
  include/linux/numa.h \
    $(wildcard include/config/nodes/shift.h) \
  include/linux/seqlock.h \
  include/linux/nodemask.h \
    $(wildcard include/config/movable/node.h) \
  include/linux/pageblock-flags.h \
    $(wildcard include/config/hugetlb/page.h) \
    $(wildcard include/config/hugetlb/page/size/variable.h) \
  include/linux/page-flags-layout.h \
  include/generated/bounds.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/sparsemem.h \
  include/linux/memory_hotplug.h \
    $(wildcard include/config/memory/hotremove.h) \
    $(wildcard include/config/have/arch/nodedata/extension.h) \
    $(wildcard include/config/have/bootmem/info/node.h) \
  include/linux/notifier.h \
  include/linux/rwsem.h \
    $(wildcard include/config/rwsem/generic/spinlock.h) \
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
    $(wildcard include/config/rcu/nocb/cpu.h) \
    $(wildcard include/config/no/hz/full/sysidle.h) \
  include/linux/completion.h \
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
  include/linux/smp.h \
  include/linux/llist.h \
    $(wildcard include/config/arch/have/nmi/safe/cmpxchg.h) \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/smp.h \
  include/linux/percpu.h \
    $(wildcard include/config/need/per/cpu/embed/first/chunk.h) \
    $(wildcard include/config/need/per/cpu/page/first/chunk.h) \
    $(wildcard include/config/have/setup/per/cpu/area.h) \
  include/linux/mmdebug.h \
    $(wildcard include/config/debug/vm.h) \
    $(wildcard include/config/debug/virtual.h) \
  include/linux/pfn.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/percpu.h \
  include/asm-generic/percpu.h \
  include/linux/percpu-defs.h \
    $(wildcard include/config/debug/force/weak/per/cpu.h) \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/topology.h \
    $(wildcard include/config/arm/cpu/topology.h) \
  include/asm-generic/topology.h \
  include/linux/delay.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/delay.h \
  include/linux/of_address.h \
    $(wildcard include/config/of/address.h) \
  include/linux/ioport.h \
  include/linux/of_platform.h \
  include/linux/device.h \
    $(wildcard include/config/debug/devres.h) \
    $(wildcard include/config/acpi.h) \
    $(wildcard include/config/pinctrl.h) \
    $(wildcard include/config/dma/cma.h) \
    $(wildcard include/config/devtmpfs.h) \
    $(wildcard include/config/sysfs/deprecated.h) \
  include/linux/kobject.h \
    $(wildcard include/config/debug/kobject/release.h) \
  include/linux/sysfs.h \
  include/linux/kernfs.h \
  include/linux/err.h \
  include/linux/idr.h \
  include/linux/rbtree.h \
  include/linux/kobject_ns.h \
  include/linux/stat.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/uapi/asm/stat.h \
  include/uapi/linux/stat.h \
  include/linux/uidgid.h \
    $(wildcard include/config/user/ns.h) \
  include/linux/highuid.h \
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
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/device.h \
    $(wildcard include/config/dmabounce.h) \
    $(wildcard include/config/iommu/api.h) \
    $(wildcard include/config/arm/dma/use/iommu.h) \
    $(wildcard include/config/arch/omap.h) \
  include/linux/pm_wakeup.h \
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
  include/linux/slab.h \
    $(wildcard include/config/slab/debug.h) \
    $(wildcard include/config/kmemcheck.h) \
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
  include/linux/clk.h \
    $(wildcard include/config/common/clk.h) \
    $(wildcard include/config/have/clk/prepare.h) \
    $(wildcard include/config/have/clk.h) \
  include/linux/clkdev.h \
  /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/clkdev.h \
    $(wildcard include/config/have/mach/clkdev.h) \
  include/linux/clk-provider.h \
    $(wildcard include/config/ppc.h) \
  include/linux/syscore_ops.h \
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
  include/linux/clk/clk-brcmstb.h \

drivers/clk/clk-brcmstb.o: $(deps_drivers/clk/clk-brcmstb.o)

$(deps_drivers/clk/clk-brcmstb.o):
