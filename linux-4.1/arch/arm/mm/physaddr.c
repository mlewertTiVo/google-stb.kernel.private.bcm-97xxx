#include <linux/bug.h>
#include <linux/export.h>
#include <linux/types.h>
#include <linux/mmdebug.h>
#include <linux/mm.h>

#include <asm/sections.h>
#include <asm/memory.h>
#include <asm/fixmap.h>
#include <asm/dma.h>

#include "mm.h"

static inline bool __virt_addr_valid(unsigned long x)
{
	/*
	 * high_memory does not get immediately defined, and there
	 * are early callers of __pa() against PAGE_OFFSET
	 */
	if (!high_memory && x >= PAGE_OFFSET)
		return true;

	if (high_memory && x >= PAGE_OFFSET && x < (unsigned long)high_memory)
		return true;

	/*
	 * MAX_DMA_ADDRESS is a virtual address that may not correspond to an
	 * actual physical address. Enough code relies on __pa(MAX_DMA_ADDRESS)
	 * that we just need to work around it and always return true.
	 */
	if (x == MAX_DMA_ADDRESS)
		return true;

	return false;
}

phys_addr_t __virt_to_phys(unsigned long x)
{
	WARN(!__virt_addr_valid(x),
	     "virt_to_phys used for non-linear address: %pK (%pS)\n",
	     (void *)x, (void *)x);

	return __virt_to_phys_nodebug(x);
}
EXPORT_SYMBOL(__virt_to_phys);
