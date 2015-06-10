#!/bin/bash

set -e

if [ -z "$1" ]; then
	echo "usage: $0 <gzipped_input>"
	echo ""
	echo "Converts from gzip format to bzip2 format.  Examples:"
	echo ""
	echo "  $0 foo.tar.gz      # creates foo.tar.bz2"
	echo "  $0 foo.tgz         # creates foo.tar.bz2"
	echo "  $0 bar.gz          # creates bar.bz2"
	exit 1
fi

in="$1"

if [[ "${in}" = *tgz ]]; then
	out="${in%tgz}tar.bz2"
elif [[ "${in}" = *gz ]]; then
	out="${in%gz}bz2"
else
	echo "warning: input file does not have 'gz' suffix"
	out="${in}.bz2"
fi

rm -f $out
zcat $in | bzip2 > $out

exit 0
