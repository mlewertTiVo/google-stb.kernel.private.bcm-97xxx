#!/bin/sh
# Generate tags or cscope files
# Usage tags.sh <mode>
#
# mode may be any of: tags, TAGS, cscope
#
# Uses the following environment variables:
# ARCH, SUBARCH, SRCARCH, srctree, src, obj

### BEGIN BRCM MODS (original script is from 2.6.36-rc4)

if [ -z "$1" ]; then
	exec $0 tags
fi

SRCARCH=mips

if [ -d stblinux* ]; then
	cd stblinux*
elif [ -d ../stblinux* ]; then
	cd ../stblinux*
elif [ ! -d arch ]; then
	echo "ERROR: please run this program from the top level"
	exit 1
fi

notme="alchemy ar7 au1000 au1x00 basler bcm47xx bcm63xx cavium-octeon cobalt db1x00 dec emma emma2rh excite fw/arc fw/sni gt64120 ip22 ip27 ip28 ip32 jazz jmr3927 jz4740 lasat lemote loongson malta mips-boards mipssim mti-malta nxp pb1x00 philips pmc-sierra pnx833x pnx8550 powertv rb532 rc32434 rm sgi-ip22 sgi-ip27 sgi-ip32 sibyte sni tx39xx tx4927 tx4938 tx49xx txx9 vr41xx wrppmc yosemite"

extra_ignores=""

for x in $notme; do
	y=arch/mips/$x
	[ -d $y ] && extra_ignores="$extra_ignores -o -samefile $y"
	y=arch/mips/include/asm/$x
	[ -d $y ] && extra_ignores="$extra_ignores -o -samefile $y"
	y=arch/mips/include/asm/mach-$x
	[ -d $y ] && extra_ignores="$extra_ignores -o -samefile $y"
done

### END BRCM MODS

if [ "$KBUILD_VERBOSE" = "1" ]; then
	set -x
fi

# This is a duplicate of RCS_FIND_IGNORE without escaped '()'
ignore="( -name SCCS -o -name BitKeeper -o -name .svn -o \
          -name CVS  -o -name .pc       -o -name .hg  -o \
          -name .git $extra_ignores )                    \
          -prune -o"

# Do not use full path if we do not use O=.. builds
# Use make O=. {tags|cscope}
# to force full paths for a non-O= build
if [ "${KBUILD_SRC}" = "" ]; then
	tree=
else
	tree=${srctree}/
fi

# Find all available archs
find_all_archs()
{
	ALLSOURCE_ARCHS=""
	for arch in `ls ${tree}arch`; do
		ALLSOURCE_ARCHS="${ALLSOURCE_ARCHS} "${arch##\/}
	done
}

# Detect if ALLSOURCE_ARCHS is set. If not, we assume SRCARCH
if [ "${ALLSOURCE_ARCHS}" = "" ]; then
	ALLSOURCE_ARCHS=${SRCARCH}
elif [ "${ALLSOURCE_ARCHS}" = "all" ]; then
	find_all_archs
fi

# find sources in arch/$ARCH
find_arch_sources()
{
	for i in $archincludedir; do
		prune="$prune -wholename $i -prune -o"
	done
	find ${tree}arch/$1 $ignore $prune -name "$2" -print;
}

# find sources in arch/$1/include
find_arch_include_sources()
{
	include=$(find ${tree}arch/$1/ -name include -type d);
	if [ -n "$include" ]; then
		archincludedir="$archincludedir $include"
		find $include $ignore -name "$2" -print;
	fi
}

# find sources in include/
find_include_sources()
{
	find ${tree}include $ignore -name config -prune -o -name "$1" -print;
}

# find sources in rest of tree
# we could benefit from a list of dirs to search in here
find_other_sources()
{
	find ${tree}* $ignore \
	     \( -name include -o -name arch -o -name '.tmp_*' \) -prune -o \
	       -name "$1" -print;
}

find_sources()
{
	find_arch_sources $1 "$2"
}

all_sources()
{
	find_arch_include_sources ${SRCARCH} '*.[chS]'
	if [ ! -z "$archinclude" ]; then
		find_arch_include_sources $archinclude '*.[chS]'
	fi
	find_include_sources '*.[chS]'
	for arch in $ALLSOURCE_ARCHS
	do
		find_sources $arch '*.[chS]'
	done
	find_other_sources '*.[chS]'
}

all_kconfigs()
{
	for arch in $ALLSOURCE_ARCHS; do
		find_sources $arch 'Kconfig*'
	done
	find_other_sources 'Kconfig*'
}

all_defconfigs()
{
	find_sources $ALLSOURCE_ARCHS "defconfig"
}

docscope()
{
	(echo \-k; echo \-q; all_sources) > cscope.files
	cscope -b -f cscope.out
}

exuberant()
{
	all_sources | xargs $1 -a                               \
	-I __initdata,__exitdata,__acquires,__releases          \
	-I __read_mostly,____cacheline_aligned                  \
	-I ____cacheline_aligned_in_smp                         \
	-I ____cacheline_internodealigned_in_smp                \
	-I EXPORT_SYMBOL,EXPORT_SYMBOL_GPL                      \
	-I DEFINE_TRACE,EXPORT_TRACEPOINT_SYMBOL,EXPORT_TRACEPOINT_SYMBOL_GPL \
	--extra=+f --c-kinds=-px                                \
	--regex-asm='/^ENTRY\(([^)]*)\).*/\1/'                  \
	--regex-c='/^SYSCALL_DEFINE[[:digit:]]?\(([^,)]*).*/sys_\1/'

	all_kconfigs | xargs $1 -a                              \
	--langdef=kconfig --language-force=kconfig              \
	--regex-kconfig='/^[[:blank:]]*(menu|)config[[:blank:]]+([[:alnum:]_]+)/\2/'

	all_kconfigs | xargs $1 -a                              \
	--langdef=kconfig --language-force=kconfig              \
	--regex-kconfig='/^[[:blank:]]*(menu|)config[[:blank:]]+([[:alnum:]_]+)/CONFIG_\2/'

	all_defconfigs | xargs -r $1 -a                         \
	--langdef=dotconfig --language-force=dotconfig          \
	--regex-dotconfig='/^#?[[:blank:]]*(CONFIG_[[:alnum:]_]+)/\1/'

}

emacs()
{
	all_sources | xargs $1 -a                               \
	--regex='/^ENTRY(\([^)]*\)).*/\1/'                      \
	--regex='/^SYSCALL_DEFINE[0-9]?(\([^,)]*\).*/sys_\1/'

	all_kconfigs | xargs $1 -a                              \
	--regex='/^[ \t]*\(\(menu\)*config\)[ \t]+\([a-zA-Z0-9_]+\)/\3/'

	all_kconfigs | xargs $1 -a                              \
	--regex='/^[ \t]*\(\(menu\)*config\)[ \t]+\([a-zA-Z0-9_]+\)/CONFIG_\3/'

	all_defconfigs | xargs -r $1 -a                         \
	--regex='/^#?[ \t]?\(CONFIG_[a-zA-Z0-9_]+\)/\1/'
}

xtags()
{
	if $1 --version 2>&1 | grep -iq exuberant; then
		exuberant $1
	elif $1 --version 2>&1 | grep -iq emacs; then
		emacs $1
	else
		all_sources | xargs $1 -a
        fi
}


# Support um (which uses SUBARCH)
if [ "${ARCH}" = "um" ]; then
	if [ "$SUBARCH" = "i386" ]; then
		archinclude=x86
	elif [ "$SUBARCH" = "x86_64" ]; then
		archinclude=x86
	else
		archinclude=${SUBARCH}
	fi
fi

case "$1" in
	"cscope")
		docscope
		;;

	"tags")
		rm -f tags
		xtags ctags
		;;

	"TAGS")
		rm -f TAGS
		xtags etags
		;;
esac
