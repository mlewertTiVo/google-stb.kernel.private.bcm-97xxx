	.arch armv7-a
	.fpu softvfp
	.eabi_attribute 20, 1	@ Tag_ABI_FP_denormal
	.eabi_attribute 21, 1	@ Tag_ABI_FP_exceptions
	.eabi_attribute 23, 3	@ Tag_ABI_FP_number_model
	.eabi_attribute 24, 1	@ Tag_ABI_align8_needed
	.eabi_attribute 25, 1	@ Tag_ABI_align8_preserved
	.eabi_attribute 26, 2	@ Tag_ABI_enum_size
	.eabi_attribute 30, 2	@ Tag_ABI_optimization_goals
	.eabi_attribute 34, 1	@ Tag_CPU_unaligned_access
	.eabi_attribute 18, 4	@ Tag_ABI_PCS_wchar_t
	.file	"asm-offsets.c"
@ GNU C (Broadcom stbgcc-4.8-1.2) version 4.8.4 20141110 (prerelease) (arm-linux-gnueabihf)
@	compiled by GNU C version 4.6.3, GMP version 5.1.2, MPFR version 3.1.2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=30 --param ggc-min-heapsize=4096
@ options passed:  -nostdinc
@ -I /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include
@ -I arch/arm/include/generated -I include
@ -I /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/uapi
@ -I arch/arm/include/generated/uapi
@ -I /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/include/uapi
@ -I include/generated/uapi
@ -iprefix /car/2-lmp-mr1-tv-dev/prebuilts/gcc/linux-x86/arm/stb/stbgcc-4.8-1.2/bin/../lib/gcc/arm-linux-gnueabihf/4.8.4/
@ -isysroot /car/2-lmp-mr1-tv-dev/prebuilts/gcc/linux-x86/arm/stb/stbgcc-4.8-1.2/bin/../arm-linux-gnueabihf/sys-root
@ -D __KERNEL__ -D __LINUX_ARM_ARCH__=7 -U arm -D CC_HAVE_ASM_GOTO
@ -D KBUILD_STR(s)=#s -D KBUILD_BASENAME=KBUILD_STR(asm_offsets)
@ -D KBUILD_MODNAME=KBUILD_STR(asm_offsets)
@ -isystem /car/2-lmp-mr1-tv-dev/prebuilts/gcc/linux-x86/arm/stb/stbgcc-4.8-1.2/bin/../lib/gcc/arm-linux-gnueabihf/4.8.4/include
@ -include /car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/include/linux/kconfig.h
@ -MD arch/arm/kernel/.asm-offsets.s.d arch/arm/kernel/asm-offsets.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu
@ -auxbase-strip arch/arm/kernel/asm-offsets.s -g -O2 -Wall -Wundef
@ -Wstrict-prototypes -Wno-trigraphs -Werror=implicit-function-declaration
@ -Wno-format-security -Wframe-larger-than=1024
@ -Wno-unused-but-set-variable -Wdeclaration-after-statement
@ -Wno-pointer-sign -Werror=implicit-int -Werror=strict-prototypes
@ -fno-strict-aliasing -fno-common -fno-delete-null-pointer-checks
@ -fno-dwarf2-cfi-asm -funwind-tables -fno-stack-protector
@ -fomit-frame-pointer -fno-var-tracking-assignments
@ -femit-struct-debug-baseonly -fno-var-tracking -fno-strict-overflow
@ -fconserve-stack -fverbose-asm
@ options enabled:  -faggressive-loop-optimizations -fauto-inc-dec
@ -fbranch-count-reg -fcaller-saves -fcombine-stack-adjustments
@ -fcompare-elim -fcprop-registers -fcrossjumping -fcse-follow-jumps
@ -fdefer-pop -fdevirtualize -fearly-inlining
@ -feliminate-unused-debug-types -fexpensive-optimizations
@ -fforward-propagate -ffunction-cse -fgcse -fgcse-lm -fgnu-runtime
@ -fgnu-unique -fguess-branch-probability -fhoist-adjacent-loads -fident
@ -fif-conversion -fif-conversion2 -findirect-inlining -finline
@ -finline-atomics -finline-functions-called-once -finline-small-functions
@ -fipa-cp -fipa-profile -fipa-pure-const -fipa-reference -fipa-sra
@ -fira-hoist-pressure -fira-share-save-slots -fira-share-spill-slots
@ -fivopts -fkeep-static-consts -fleading-underscore -fmath-errno
@ -fmerge-constants -fmerge-debug-strings -fmove-loop-invariants
@ -fomit-frame-pointer -foptimize-register-move -foptimize-sibling-calls
@ -foptimize-strlen -fpartial-inlining -fpeephole -fpeephole2
@ -fprefetch-loop-arrays -freg-struct-return -fregmove -freorder-blocks
@ -freorder-functions -frerun-cse-after-loop
@ -fsched-critical-path-heuristic -fsched-dep-count-heuristic
@ -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
@ -fsched-pressure -fsched-rank-heuristic -fsched-spec
@ -fsched-spec-insn-heuristic -fsched-stalled-insns-dep -fschedule-insns
@ -fschedule-insns2 -fsection-anchors -fshow-column -fshrink-wrap
@ -fsigned-zeros -fsplit-ivs-in-unroller -fsplit-wide-types
@ -fstrict-volatile-bitfields -fsync-libcalls -fthread-jumps
@ -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp -ftree-builtin-call-dce
@ -ftree-ccp -ftree-ch -ftree-coalesce-vars -ftree-copy-prop
@ -ftree-copyrename -ftree-cselim -ftree-dce -ftree-dominator-opts
@ -ftree-dse -ftree-forwprop -ftree-fre -ftree-loop-if-convert
@ -ftree-loop-im -ftree-loop-ivcanon -ftree-loop-optimize
@ -ftree-parallelize-loops= -ftree-phiprop -ftree-pre -ftree-pta
@ -ftree-reassoc -ftree-scev-cprop -ftree-sink -ftree-slp-vectorize
@ -ftree-slsr -ftree-sra -ftree-switch-conversion -ftree-tail-merge
@ -ftree-ter -ftree-vrp -funit-at-a-time -funwind-tables -fverbose-asm
@ -fzero-initialized-in-bss -marm -mglibc -mlittle-endian -msched-prolog
@ -munaligned-access -mvectorize-with-neon-quad

	.text
.Ltext0:
#APP
	.macro	it, cond
	.endm
	.macro	itt, cond
	.endm
	.macro	ite, cond
	.endm
	.macro	ittt, cond
	.endm
	.macro	itte, cond
	.endm
	.macro	itet, cond
	.endm
	.macro	itee, cond
	.endm
	.macro	itttt, cond
	.endm
	.macro	ittte, cond
	.endm
	.macro	ittet, cond
	.endm
	.macro	ittee, cond
	.endm
	.macro	itett, cond
	.endm
	.macro	itete, cond
	.endm
	.macro	iteet, cond
	.endm
	.macro	iteee, cond
	.endm

	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.type	main, %function
main:
	.fnstart
.LFB1454:
	.file 1 "arch/arm/kernel/asm-offsets.c"
	.loc 1 49 0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 50 0
#APP
@ 50 "arch/arm/kernel/asm-offsets.c" 1
	
->TSK_ACTIVE_MM #416 offsetof(struct task_struct, active_mm)	@
@ 0 "" 2
	.loc 1 54 0
@ 54 "arch/arm/kernel/asm-offsets.c" 1
	
->
@ 0 "" 2
	.loc 1 55 0
@ 55 "arch/arm/kernel/asm-offsets.c" 1
	
->TI_FLAGS #0 offsetof(struct thread_info, flags)	@
@ 0 "" 2
	.loc 1 56 0
@ 56 "arch/arm/kernel/asm-offsets.c" 1
	
->TI_PREEMPT #4 offsetof(struct thread_info, preempt_count)	@
@ 0 "" 2
	.loc 1 57 0
@ 57 "arch/arm/kernel/asm-offsets.c" 1
	
->TI_ADDR_LIMIT #8 offsetof(struct thread_info, addr_limit)	@
@ 0 "" 2
	.loc 1 58 0
@ 58 "arch/arm/kernel/asm-offsets.c" 1
	
->TI_TASK #12 offsetof(struct thread_info, task)	@
@ 0 "" 2
	.loc 1 59 0
@ 59 "arch/arm/kernel/asm-offsets.c" 1
	
->TI_EXEC_DOMAIN #16 offsetof(struct thread_info, exec_domain)	@
@ 0 "" 2
	.loc 1 60 0
@ 60 "arch/arm/kernel/asm-offsets.c" 1
	
->TI_CPU #20 offsetof(struct thread_info, cpu)	@
@ 0 "" 2
	.loc 1 61 0
@ 61 "arch/arm/kernel/asm-offsets.c" 1
	
->TI_CPU_DOMAIN #24 offsetof(struct thread_info, cpu_domain)	@
@ 0 "" 2
	.loc 1 62 0
@ 62 "arch/arm/kernel/asm-offsets.c" 1
	
->TI_CPU_SAVE #28 offsetof(struct thread_info, cpu_context)	@
@ 0 "" 2
	.loc 1 63 0
@ 63 "arch/arm/kernel/asm-offsets.c" 1
	
->TI_USED_CP #80 offsetof(struct thread_info, used_cp)	@
@ 0 "" 2
	.loc 1 64 0
@ 64 "arch/arm/kernel/asm-offsets.c" 1
	
->TI_TP_VALUE #96 offsetof(struct thread_info, tp_value)	@
@ 0 "" 2
	.loc 1 65 0
@ 65 "arch/arm/kernel/asm-offsets.c" 1
	
->TI_FPSTATE #104 offsetof(struct thread_info, fpstate)	@
@ 0 "" 2
	.loc 1 67 0
@ 67 "arch/arm/kernel/asm-offsets.c" 1
	
->TI_VFPSTATE #248 offsetof(struct thread_info, vfpstate)	@
@ 0 "" 2
	.loc 1 69 0
@ 69 "arch/arm/kernel/asm-offsets.c" 1
	
->VFP_CPU #272 offsetof(union vfp_state, hard.cpu)	@
@ 0 "" 2
	.loc 1 81 0
@ 81 "arch/arm/kernel/asm-offsets.c" 1
	
->
@ 0 "" 2
	.loc 1 82 0
@ 82 "arch/arm/kernel/asm-offsets.c" 1
	
->S_R0 #0 offsetof(struct pt_regs, ARM_r0)	@
@ 0 "" 2
	.loc 1 83 0
@ 83 "arch/arm/kernel/asm-offsets.c" 1
	
->S_R1 #4 offsetof(struct pt_regs, ARM_r1)	@
@ 0 "" 2
	.loc 1 84 0
@ 84 "arch/arm/kernel/asm-offsets.c" 1
	
->S_R2 #8 offsetof(struct pt_regs, ARM_r2)	@
@ 0 "" 2
	.loc 1 85 0
@ 85 "arch/arm/kernel/asm-offsets.c" 1
	
->S_R3 #12 offsetof(struct pt_regs, ARM_r3)	@
@ 0 "" 2
	.loc 1 86 0
@ 86 "arch/arm/kernel/asm-offsets.c" 1
	
->S_R4 #16 offsetof(struct pt_regs, ARM_r4)	@
@ 0 "" 2
	.loc 1 87 0
@ 87 "arch/arm/kernel/asm-offsets.c" 1
	
->S_R5 #20 offsetof(struct pt_regs, ARM_r5)	@
@ 0 "" 2
	.loc 1 88 0
@ 88 "arch/arm/kernel/asm-offsets.c" 1
	
->S_R6 #24 offsetof(struct pt_regs, ARM_r6)	@
@ 0 "" 2
	.loc 1 89 0
@ 89 "arch/arm/kernel/asm-offsets.c" 1
	
->S_R7 #28 offsetof(struct pt_regs, ARM_r7)	@
@ 0 "" 2
	.loc 1 90 0
@ 90 "arch/arm/kernel/asm-offsets.c" 1
	
->S_R8 #32 offsetof(struct pt_regs, ARM_r8)	@
@ 0 "" 2
	.loc 1 91 0
@ 91 "arch/arm/kernel/asm-offsets.c" 1
	
->S_R9 #36 offsetof(struct pt_regs, ARM_r9)	@
@ 0 "" 2
	.loc 1 92 0
@ 92 "arch/arm/kernel/asm-offsets.c" 1
	
->S_R10 #40 offsetof(struct pt_regs, ARM_r10)	@
@ 0 "" 2
	.loc 1 93 0
@ 93 "arch/arm/kernel/asm-offsets.c" 1
	
->S_FP #44 offsetof(struct pt_regs, ARM_fp)	@
@ 0 "" 2
	.loc 1 94 0
@ 94 "arch/arm/kernel/asm-offsets.c" 1
	
->S_IP #48 offsetof(struct pt_regs, ARM_ip)	@
@ 0 "" 2
	.loc 1 95 0
@ 95 "arch/arm/kernel/asm-offsets.c" 1
	
->S_SP #52 offsetof(struct pt_regs, ARM_sp)	@
@ 0 "" 2
	.loc 1 96 0
@ 96 "arch/arm/kernel/asm-offsets.c" 1
	
->S_LR #56 offsetof(struct pt_regs, ARM_lr)	@
@ 0 "" 2
	.loc 1 97 0
@ 97 "arch/arm/kernel/asm-offsets.c" 1
	
->S_PC #60 offsetof(struct pt_regs, ARM_pc)	@
@ 0 "" 2
	.loc 1 98 0
@ 98 "arch/arm/kernel/asm-offsets.c" 1
	
->S_PSR #64 offsetof(struct pt_regs, ARM_cpsr)	@
@ 0 "" 2
	.loc 1 99 0
@ 99 "arch/arm/kernel/asm-offsets.c" 1
	
->S_OLD_R0 #68 offsetof(struct pt_regs, ARM_ORIG_r0)	@
@ 0 "" 2
	.loc 1 100 0
@ 100 "arch/arm/kernel/asm-offsets.c" 1
	
->S_FRAME_SIZE #72 sizeof(struct pt_regs)	@
@ 0 "" 2
	.loc 1 101 0
@ 101 "arch/arm/kernel/asm-offsets.c" 1
	
->
@ 0 "" 2
	.loc 1 114 0
@ 114 "arch/arm/kernel/asm-offsets.c" 1
	
->MM_CONTEXT_ID #352 offsetof(struct mm_struct, context.id.counter)	@
@ 0 "" 2
	.loc 1 115 0
@ 115 "arch/arm/kernel/asm-offsets.c" 1
	
->
@ 0 "" 2
	.loc 1 117 0
@ 117 "arch/arm/kernel/asm-offsets.c" 1
	
->VMA_VM_MM #32 offsetof(struct vm_area_struct, vm_mm)	@
@ 0 "" 2
	.loc 1 118 0
@ 118 "arch/arm/kernel/asm-offsets.c" 1
	
->VMA_VM_FLAGS #48 offsetof(struct vm_area_struct, vm_flags)	@
@ 0 "" 2
	.loc 1 119 0
@ 119 "arch/arm/kernel/asm-offsets.c" 1
	
->
@ 0 "" 2
	.loc 1 120 0
@ 120 "arch/arm/kernel/asm-offsets.c" 1
	
->VM_EXEC #4 VM_EXEC	@
@ 0 "" 2
	.loc 1 121 0
@ 121 "arch/arm/kernel/asm-offsets.c" 1
	
->
@ 0 "" 2
	.loc 1 122 0
@ 122 "arch/arm/kernel/asm-offsets.c" 1
	
->PAGE_SZ #4096 PAGE_SIZE	@
@ 0 "" 2
	.loc 1 123 0
@ 123 "arch/arm/kernel/asm-offsets.c" 1
	
->
@ 0 "" 2
	.loc 1 124 0
@ 124 "arch/arm/kernel/asm-offsets.c" 1
	
->SYS_ERROR0 #10420224 0x9f0000	@
@ 0 "" 2
	.loc 1 125 0
@ 125 "arch/arm/kernel/asm-offsets.c" 1
	
->
@ 0 "" 2
	.loc 1 126 0
@ 126 "arch/arm/kernel/asm-offsets.c" 1
	
->SIZEOF_MACHINE_DESC #88 sizeof(struct machine_desc)	@
@ 0 "" 2
	.loc 1 127 0
@ 127 "arch/arm/kernel/asm-offsets.c" 1
	
->MACHINFO_TYPE #0 offsetof(struct machine_desc, nr)	@
@ 0 "" 2
	.loc 1 128 0
@ 128 "arch/arm/kernel/asm-offsets.c" 1
	
->MACHINFO_NAME #4 offsetof(struct machine_desc, name)	@
@ 0 "" 2
	.loc 1 129 0
@ 129 "arch/arm/kernel/asm-offsets.c" 1
	
->
@ 0 "" 2
	.loc 1 130 0
@ 130 "arch/arm/kernel/asm-offsets.c" 1
	
->PROC_INFO_SZ #52 sizeof(struct proc_info_list)	@
@ 0 "" 2
	.loc 1 131 0
@ 131 "arch/arm/kernel/asm-offsets.c" 1
	
->PROCINFO_INITFUNC #16 offsetof(struct proc_info_list, __cpu_flush)	@
@ 0 "" 2
	.loc 1 132 0
@ 132 "arch/arm/kernel/asm-offsets.c" 1
	
->PROCINFO_MM_MMUFLAGS #8 offsetof(struct proc_info_list, __cpu_mm_mmu_flags)	@
@ 0 "" 2
	.loc 1 133 0
@ 133 "arch/arm/kernel/asm-offsets.c" 1
	
->PROCINFO_IO_MMUFLAGS #12 offsetof(struct proc_info_list, __cpu_io_mmu_flags)	@
@ 0 "" 2
	.loc 1 134 0
@ 134 "arch/arm/kernel/asm-offsets.c" 1
	
->
@ 0 "" 2
	.loc 1 147 0
@ 147 "arch/arm/kernel/asm-offsets.c" 1
	
->CACHE_FLUSH_KERN_ALL #4 offsetof(struct cpu_cache_fns, flush_kern_all)	@
@ 0 "" 2
	.loc 1 150 0
@ 150 "arch/arm/kernel/asm-offsets.c" 1
	
->SLEEP_SAVE_SP_SZ #8 sizeof(struct sleep_save_sp)	@
@ 0 "" 2
	.loc 1 151 0
@ 151 "arch/arm/kernel/asm-offsets.c" 1
	
->SLEEP_SAVE_SP_PHYS #4 offsetof(struct sleep_save_sp, save_ptr_stash_phys)	@
@ 0 "" 2
	.loc 1 152 0
@ 152 "arch/arm/kernel/asm-offsets.c" 1
	
->SLEEP_SAVE_SP_VIRT #0 offsetof(struct sleep_save_sp, save_ptr_stash)	@
@ 0 "" 2
	.loc 1 154 0
@ 154 "arch/arm/kernel/asm-offsets.c" 1
	
->
@ 0 "" 2
	.loc 1 155 0
@ 155 "arch/arm/kernel/asm-offsets.c" 1
	
->DMA_BIDIRECTIONAL #0 DMA_BIDIRECTIONAL	@
@ 0 "" 2
	.loc 1 156 0
@ 156 "arch/arm/kernel/asm-offsets.c" 1
	
->DMA_TO_DEVICE #1 DMA_TO_DEVICE	@
@ 0 "" 2
	.loc 1 157 0
@ 157 "arch/arm/kernel/asm-offsets.c" 1
	
->DMA_FROM_DEVICE #2 DMA_FROM_DEVICE	@
@ 0 "" 2
	.loc 1 158 0
@ 158 "arch/arm/kernel/asm-offsets.c" 1
	
->
@ 0 "" 2
	.loc 1 159 0
@ 159 "arch/arm/kernel/asm-offsets.c" 1
	
->CACHE_WRITEBACK_ORDER #6 __CACHE_WRITEBACK_ORDER	@
@ 0 "" 2
	.loc 1 160 0
@ 160 "arch/arm/kernel/asm-offsets.c" 1
	
->CACHE_WRITEBACK_GRANULE #64 __CACHE_WRITEBACK_GRANULE	@
@ 0 "" 2
	.loc 1 161 0
@ 161 "arch/arm/kernel/asm-offsets.c" 1
	
->
@ 0 "" 2
	.loc 1 203 0
	mov	r0, #0	@,
	bx	lr	@
.LFE1454:
	.fnend
	.size	main, .-main
	.section	.debug_frame,"",%progbits
.Lframe0:
	.4byte	.LECIE0-.LSCIE0
.LSCIE0:
	.4byte	0xffffffff
	.byte	0x3
	.ascii	"\000"
	.uleb128 0x1
	.sleb128 -4
	.uleb128 0xe
	.byte	0xc
	.uleb128 0xd
	.uleb128 0
	.align	2
.LECIE0:
.LSFDE0:
	.4byte	.LEFDE0-.LASFDE0
.LASFDE0:
	.4byte	.Lframe0
	.4byte	.LFB1454
	.4byte	.LFE1454-.LFB1454
	.align	2
.LEFDE0:
	.text
.Letext0:
	.file 2 "include/linux/types.h"
	.file 3 "include/asm-generic/atomic-long.h"
	.file 4 "/car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/hwcap.h"
	.file 5 "include/linux/printk.h"
	.file 6 "include/linux/kernel.h"
	.file 7 "include/linux/time.h"
	.file 8 "include/linux/cpumask.h"
	.file 9 "/car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/memory.h"
	.file 10 "include/linux/highuid.h"
	.file 11 "include/linux/sched.h"
	.file 12 "include/asm-generic/percpu.h"
	.file 13 "include/linux/mmzone.h"
	.file 14 "include/linux/workqueue.h"
	.file 15 "include/linux/percpu_counter.h"
	.file 16 "include/linux/debug_locks.h"
	.file 17 "include/linux/mm.h"
	.file 18 "/car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/tlbflush.h"
	.file 19 "include/asm-generic/pgtable.h"
	.file 20 "include/linux/vmstat.h"
	.file 21 "include/linux/ioport.h"
	.file 22 "/car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/xen/hypervisor.h"
	.file 23 "/car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/dma-mapping.h"
	.file 24 "/car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/cachetype.h"
	.file 25 "/car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linux/arch/arm/include/asm/cacheflush.h"
	.file 26 "include/asm-generic/int-ll64.h"
	.file 27 "include/linux/dma-direction.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x381
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0x1
	.4byte	.LASF67
	.4byte	.LASF68
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x4
	.ascii	"u64\000"
	.byte	0x1a
	.byte	0x19
	.4byte	0x56
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.uleb128 0x5
	.4byte	.LASF10
	.byte	0x2
	.byte	0x1d
	.4byte	0x88
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF11
	.uleb128 0x5
	.4byte	.LASF12
	.byte	0x2
	.byte	0xa2
	.4byte	0x5d
	.uleb128 0x6
	.uleb128 0x5
	.4byte	.LASF13
	.byte	0x2
	.byte	0xb1
	.4byte	0x9a
	.uleb128 0x5
	.4byte	.LASF14
	.byte	0x3
	.byte	0x8d
	.4byte	0x9b
	.uleb128 0x7
	.4byte	.LASF16
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x8
	.byte	0x4
	.uleb128 0x9
	.ascii	"pid\000"
	.uleb128 0x7
	.4byte	.LASF17
	.uleb128 0x7
	.4byte	.LASF18
	.uleb128 0x7
	.4byte	.LASF19
	.uleb128 0x7
	.4byte	.LASF20
	.uleb128 0x7
	.4byte	.LASF21
	.uleb128 0xa
	.4byte	.LASF69
	.byte	0x4
	.byte	0x1b
	.byte	0x7
	.4byte	0x102
	.uleb128 0xb
	.4byte	.LASF22
	.sleb128 0
	.uleb128 0xb
	.4byte	.LASF23
	.sleb128 1
	.uleb128 0xb
	.4byte	.LASF24
	.sleb128 2
	.uleb128 0xb
	.4byte	.LASF25
	.sleb128 3
	.byte	0
	.uleb128 0x7
	.4byte	.LASF26
	.uleb128 0x7
	.4byte	.LASF27
	.uleb128 0xc
	.4byte	.LASF70
	.byte	0x1
	.byte	0x30
	.4byte	0x41
	.4byte	.LFB1454
	.4byte	.LFE1454-.LFB1454
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x7
	.4byte	.LASF28
	.uleb128 0x7
	.4byte	.LASF29
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x4
	.byte	0xc
	.4byte	0x48
	.uleb128 0xe
	.4byte	0x41
	.4byte	0x141
	.uleb128 0xf
	.byte	0
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x5
	.byte	0x25
	.4byte	0x136
	.uleb128 0x10
	.4byte	.LASF32
	.byte	0x6
	.2byte	0x1a8
	.4byte	0x41
	.uleb128 0xe
	.4byte	0x76
	.4byte	0x163
	.uleb128 0xf
	.byte	0
	.uleb128 0x10
	.4byte	.LASF33
	.byte	0x6
	.2byte	0x1d9
	.4byte	0x16f
	.uleb128 0x11
	.4byte	0x158
	.uleb128 0x10
	.4byte	.LASF34
	.byte	0x6
	.2byte	0x1e4
	.4byte	0x180
	.uleb128 0x11
	.4byte	0x158
	.uleb128 0xd
	.4byte	.LASF35
	.byte	0x7
	.byte	0x76
	.4byte	0x7d
	.uleb128 0xd
	.4byte	.LASF36
	.byte	0x8
	.byte	0x1c
	.4byte	0x41
	.uleb128 0xd
	.4byte	.LASF37
	.byte	0x8
	.byte	0x50
	.4byte	0x1a6
	.uleb128 0x11
	.4byte	0x1ab
	.uleb128 0x12
	.byte	0x4
	.4byte	0x1b1
	.uleb128 0x11
	.4byte	0xb1
	.uleb128 0xe
	.4byte	0x6f
	.4byte	0x1cc
	.uleb128 0x13
	.4byte	0xb6
	.byte	0x20
	.uleb128 0x13
	.4byte	0xb6
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF38
	.byte	0x8
	.2byte	0x2f9
	.4byte	0x1d8
	.uleb128 0x11
	.4byte	0x1b6
	.uleb128 0xd
	.4byte	.LASF39
	.byte	0x9
	.byte	0xb4
	.4byte	0x5d
	.uleb128 0x14
	.4byte	0x8f
	.4byte	0x1f7
	.uleb128 0x15
	.4byte	0x6f
	.byte	0
	.uleb128 0x10
	.4byte	.LASF40
	.byte	0x9
	.2byte	0x125
	.4byte	0x203
	.uleb128 0x12
	.byte	0x4
	.4byte	0x1e8
	.uleb128 0xd
	.4byte	.LASF41
	.byte	0xa
	.byte	0x22
	.4byte	0x41
	.uleb128 0xd
	.4byte	.LASF42
	.byte	0xa
	.byte	0x23
	.4byte	0x41
	.uleb128 0x10
	.4byte	.LASF43
	.byte	0xb
	.2byte	0x874
	.4byte	0x121
	.uleb128 0xe
	.4byte	0x6f
	.4byte	0x23b
	.uleb128 0x13
	.4byte	0xb6
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.4byte	.LASF44
	.byte	0xc
	.byte	0x12
	.4byte	0x22b
	.uleb128 0xd
	.4byte	.LASF45
	.byte	0xd
	.byte	0x4c
	.4byte	0x41
	.uleb128 0x10
	.4byte	.LASF46
	.byte	0xe
	.2byte	0x177
	.4byte	0x25d
	.uleb128 0x12
	.byte	0x4
	.4byte	0x126
	.uleb128 0x10
	.4byte	.LASF47
	.byte	0xe
	.2byte	0x17a
	.4byte	0x25d
	.uleb128 0x10
	.4byte	.LASF48
	.byte	0xd
	.2byte	0x3b4
	.4byte	0xc4
	.uleb128 0xe
	.4byte	0x28b
	.4byte	0x28b
	.uleb128 0x13
	.4byte	0xb6
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.4byte	0xc9
	.uleb128 0x10
	.4byte	.LASF18
	.byte	0xd
	.2byte	0x48e
	.4byte	0x27b
	.uleb128 0xd
	.4byte	.LASF49
	.byte	0xf
	.byte	0x1b
	.4byte	0x41
	.uleb128 0x10
	.4byte	.LASF50
	.byte	0xb
	.2byte	0x6ed
	.4byte	0x2b4
	.uleb128 0x12
	.byte	0x4
	.4byte	0xbf
	.uleb128 0xd
	.4byte	.LASF51
	.byte	0x10
	.byte	0xa
	.4byte	0x41
	.uleb128 0xd
	.4byte	.LASF52
	.byte	0x11
	.byte	0x1e
	.4byte	0x6f
	.uleb128 0xd
	.4byte	.LASF53
	.byte	0x11
	.byte	0x29
	.4byte	0xbd
	.uleb128 0xd
	.4byte	.LASF54
	.byte	0x12
	.byte	0xe6
	.4byte	0xce
	.uleb128 0x16
	.4byte	0x7d
	.uleb128 0x10
	.4byte	.LASF55
	.byte	0x12
	.2byte	0x2a3
	.4byte	0x2f7
	.uleb128 0x12
	.byte	0x4
	.4byte	0x2e6
	.uleb128 0x10
	.4byte	.LASF56
	.byte	0x13
	.2byte	0x20c
	.4byte	0x6f
	.uleb128 0xd
	.4byte	.LASF57
	.byte	0x14
	.byte	0x1c
	.4byte	0xd3
	.uleb128 0xe
	.4byte	0xa6
	.4byte	0x324
	.uleb128 0x13
	.4byte	0xb6
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.4byte	.LASF58
	.byte	0x14
	.byte	0x65
	.4byte	0x314
	.uleb128 0x10
	.4byte	.LASF59
	.byte	0x11
	.2byte	0x63f
	.4byte	0x158
	.uleb128 0x10
	.4byte	.LASF60
	.byte	0x11
	.2byte	0x63f
	.4byte	0x158
	.uleb128 0xd
	.4byte	.LASF61
	.byte	0x15
	.byte	0x8a
	.4byte	0xd8
	.uleb128 0xd
	.4byte	.LASF62
	.byte	0x16
	.byte	0x13
	.4byte	0x35d
	.uleb128 0x12
	.byte	0x4
	.4byte	0x102
	.uleb128 0xd
	.4byte	.LASF63
	.byte	0x17
	.byte	0x12
	.4byte	0x102
	.uleb128 0xd
	.4byte	.LASF64
	.byte	0x18
	.byte	0xc
	.4byte	0x48
	.uleb128 0xd
	.4byte	.LASF65
	.byte	0x19
	.byte	0x7e
	.4byte	0x107
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x13
	.byte	0
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB1454
	.4byte	.LFE1454-.LFB1454
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB1454
	.4byte	.LFE1454
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF47:
	.ascii	"system_freezable_wq\000"
.LASF52:
	.ascii	"max_mapnr\000"
.LASF50:
	.ascii	"cad_pid\000"
.LASF32:
	.ascii	"panic_timeout\000"
.LASF2:
	.ascii	"short int\000"
.LASF15:
	.ascii	"sizetype\000"
.LASF61:
	.ascii	"ioport_resource\000"
.LASF18:
	.ascii	"mem_section\000"
.LASF69:
	.ascii	"dma_data_direction\000"
.LASF55:
	.ascii	"erratum_a15_798181_handler\000"
.LASF5:
	.ascii	"long long int\000"
.LASF43:
	.ascii	"init_pid_ns\000"
.LASF27:
	.ascii	"cpu_cache_fns\000"
.LASF63:
	.ascii	"arm_dma_ops\000"
.LASF60:
	.ascii	"__init_end\000"
.LASF39:
	.ascii	"__pv_phys_offset\000"
.LASF31:
	.ascii	"console_printk\000"
.LASF30:
	.ascii	"elf_hwcap\000"
.LASF23:
	.ascii	"DMA_TO_DEVICE\000"
.LASF21:
	.ascii	"resource\000"
.LASF10:
	.ascii	"bool\000"
.LASF28:
	.ascii	"pid_namespace\000"
.LASF22:
	.ascii	"DMA_BIDIRECTIONAL\000"
.LASF46:
	.ascii	"system_wq\000"
.LASF51:
	.ascii	"debug_locks\000"
.LASF58:
	.ascii	"vm_stat\000"
.LASF66:
	.ascii	"GNU C 4.8.4 20141110 (prerelease) -mlittle-endian -"
	.ascii	"mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -ma"
	.ascii	"rm -march=armv7-a -mfloat-abi=soft -mtls-dialect=gn"
	.ascii	"u -g -O2 -fno-strict-aliasing -fno-common -fno-dele"
	.ascii	"te-null-pointer-checks -fno-dwarf2-cfi-asm -funwind"
	.ascii	"-tables -fno-stack-protector -fomit-frame-pointer -"
	.ascii	"fno-var-tracking-assignments -femit-struct-debug-ba"
	.ascii	"seonly -fno-var-tracking -fno-strict-overflow -fcon"
	.ascii	"serve-stack\000"
.LASF44:
	.ascii	"__per_cpu_offset\000"
.LASF49:
	.ascii	"percpu_counter_batch\000"
.LASF57:
	.ascii	"vm_event_states\000"
.LASF7:
	.ascii	"long int\000"
.LASF59:
	.ascii	"__init_begin\000"
.LASF64:
	.ascii	"cacheid\000"
.LASF14:
	.ascii	"atomic_long_t\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF42:
	.ascii	"overflowgid\000"
.LASF40:
	.ascii	"arch_virt_to_idmap\000"
.LASF0:
	.ascii	"signed char\000"
.LASF6:
	.ascii	"long long unsigned int\000"
.LASF4:
	.ascii	"unsigned int\000"
.LASF37:
	.ascii	"cpu_online_mask\000"
.LASF65:
	.ascii	"cpu_cache\000"
.LASF45:
	.ascii	"page_group_by_mobility_disabled\000"
.LASF36:
	.ascii	"nr_cpu_ids\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF17:
	.ascii	"pglist_data\000"
.LASF19:
	.ascii	"cpu_tlb_fns\000"
.LASF20:
	.ascii	"vm_event_state\000"
.LASF9:
	.ascii	"char\000"
.LASF70:
	.ascii	"main\000"
.LASF41:
	.ascii	"overflowuid\000"
.LASF24:
	.ascii	"DMA_FROM_DEVICE\000"
.LASF16:
	.ascii	"cpumask\000"
.LASF11:
	.ascii	"_Bool\000"
.LASF67:
	.ascii	"arch/arm/kernel/asm-offsets.c\000"
.LASF53:
	.ascii	"high_memory\000"
.LASF8:
	.ascii	"long unsigned int\000"
.LASF26:
	.ascii	"dma_map_ops\000"
.LASF35:
	.ascii	"persistent_clock_exist\000"
.LASF56:
	.ascii	"zero_pfn\000"
.LASF33:
	.ascii	"hex_asc\000"
.LASF38:
	.ascii	"cpu_bit_bitmap\000"
.LASF68:
	.ascii	"/car/2-lmp-mr1-tv-dev/kernel/private/97xxx-bcm/linu"
	.ascii	"x\000"
.LASF25:
	.ascii	"DMA_NONE\000"
.LASF62:
	.ascii	"xen_dma_ops\000"
.LASF54:
	.ascii	"cpu_tlb\000"
.LASF29:
	.ascii	"workqueue_struct\000"
.LASF48:
	.ascii	"contig_page_data\000"
.LASF12:
	.ascii	"phys_addr_t\000"
.LASF13:
	.ascii	"atomic_t\000"
.LASF34:
	.ascii	"hex_asc_upper\000"
	.ident	"GCC: (Broadcom stbgcc-4.8-1.2) 4.8.4 20141110 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
