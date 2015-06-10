#!/usr/bin/perl -w

#
# parse VERSION, PATCHLEVEL, SUBLEVEL, EXTRAVERSION, and BRCM EXTRAVERSION
# out of the kernel Makefile.  Then generate diffs based on the appropriate
# git tags.
#

use strict;
use POSIX;

sub run($)
{
	my($cmdline) = @_;

	print "+ $cmdline\n";
	system($cmdline);
	my $ret = WEXITSTATUS($?);
	if($ret != 0)
	{
		die "$0: command exited with status $ret";
	}
	return(0);
}

open(F, "linux/Makefile") or die "can't open Linux makefile";

my ($VERSION, $PATCHLEVEL, $SUBLEVEL, $EXTRAVERSION, $BRCMVER) =
	("", "", "", "", "");

while (<F>) {
	if (m/^VERSION = (\S+)/) {
		$VERSION = $1;
	} elsif (m/^PATCHLEVEL = (\S+)/) {
		$PATCHLEVEL = $1;
	} elsif (m/^SUBLEVEL = (\S+)/) {
		$SUBLEVEL = $1;
	} elsif (m/^#\s*EXTRAVERSION = (\S+)/) {
		$EXTRAVERSION = $1;
	} elsif (m/^EXTRAVERSION = (\S+)/) {
		$BRCMVER = $1;
	}
}

my $upstream = "${VERSION}.${PATCHLEVEL}";
$upstream .= ".$SUBLEVEL" if ($SUBLEVEL);
$upstream .= "$EXTRAVERSION" if ($EXTRAVERSION);
my $rel = "${VERSION}.${PATCHLEVEL}${BRCMVER}";

run("rm -f delta-*.patch*");
run("(cd linux && git diff --diff-filter=M v$upstream..HEAD) > ".
	"delta-$rel-brcm-changed.patch");
run("(cd linux && git diff --diff-filter=A v$upstream..HEAD) > ".
	"delta-$rel-brcm-new.patch");
run("bzip2 delta-*.patch");

exit 0;
