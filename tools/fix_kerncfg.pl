#!/usr/bin/perl -w

# update arch/{mips,arm}/configs/bcm[37]* by filling in default values for
# any missing variables

# skip copy if the only difference is the update time
sub cond_copy($$)
{
	my($src, $dst) = @_;

	open(SRC, "<$src") or die "can't open $src";
	open(DST, "<$dst") or die "can't open $dst";

	my @s = ( );
	while(<SRC>)
	{
		push(@s, $_);
	}
	close(SRC);

	my @d = ( );
	while(<DST>)
	{
		push(@d, $_);
	}
	close(DST);

	my $diff = 0;

	if($#s != $#d)
	{
		$diff = 1;
	} else {
		my $i;
		for($i = 0; $i < $#s; $i++)
		{
			if(($s[$i] ne $d[$i]) &&
				($i != 2) && ($i != 3))
			{
				$diff = 1;
				last;
			}
		}
	}

	if($diff)
	{
		do_copy($src, $dst);
		return 1;
	}
	return 0;
}

sub do_copy($$)
{
	my($src, $dst) = @_;
	local(*IN, *OUT);

	unlink($dst);
	open(IN, "<$src") or die "can't open $src for reading";
	open(OUT, ">$dst") or die "can't open $dst for writing";

	while(<IN>) {
		print OUT $_;
	}

	close(IN);
	close(OUT);
}

#
# MAIN
#

my $saved_config = 0;

if(-e ".config") {
	$saved_config = 1;
	do_copy(".config", ".config.fixbak");
}

my @list = glob("arch/{mips,arm}/configs/bcm[37]*_defconfig");

foreach my $x (@list) {
	my $bare = $x;
	$bare =~ s|.*/||;
	system("make $bare");
	system("make savedefconfig");
	if(cond_copy("defconfig", $x)) {
		print "\nUPDATE: $x\n\n";
	} else {
		print "\nUnchanged: $x\n\n";
	}
	unlink("defconfig");
}

if($saved_config) {
	do_copy(".config.fixbak", ".config");
}

exit(0);
