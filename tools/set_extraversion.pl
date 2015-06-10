#!/usr/bin/perl -w

my $extraversion = $ARGV[0];

my $f = "linux/Makefile";

if (!defined($extraversion)) {
	die "usage: $0 { <extraversion> | --drop-pre }";
}

if (!-e $f) {
	$f = "uclinux-rootfs/linux/Makefile";
	if (!-e $f) {
		$f = "Makefile";
		if (!-e $f) {
			die "Can't file Linux Makefile";
		}
	}
}

local(*IN, *OUT);
my $found = 0;
my $tmpfile = "Makefile.tmp";

open(IN, "<$f") or die "can't open $f: $!";
open(OUT, ">$tmpfile") or die "can't open temp file: $!";

while (<IN>) {
	if (m/^EXTRAVERSION =/) {
		if ($extraversion eq "--drop-pre") {
			s/pre//;
			print OUT $_;
		} else {
			print OUT "EXTRAVERSION = $extraversion\n";
		}
		$found = 1;
	} else {
		print OUT $_;
	}
}

close(OUT);
close(IN);

if (!$found) {
	unlink($tmpfile);
	die "can't find EXTRAVERSION in $f";
}

unlink($f);
rename($tmpfile, $f);

exit 0;
