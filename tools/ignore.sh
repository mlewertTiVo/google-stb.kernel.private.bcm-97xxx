#!/bin/bash

# tell git to ignore changes to files that get altered during the build

if [ -d uclinux-rootfs ]; then
	pfx=.
elif [ -d user -o -d arch ]; then
	pfx=../
else
	echo "error: this program must be run from the top level"
	exit 1
fi

for x in \
		uclinux-rootfs/user/utillinux/config.h.in \
		uclinux-rootfs/user/utillinux/configure; do
	git update-index --assume-unchanged ${pfx}/$x
done

exit 0
