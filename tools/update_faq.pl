#!/usr/bin/perl -w

open(IN, "<faq.html") or die;

my @ques = ( );
my @lines = ( );
my $intoc = 0;
my $inques = 0;
my $q = "";
my $qn = 1;

while (<IN>) {
	if ($inques) {
		if (m/^\s+$/) {
			$inques = 0;
			push(@ques, $q);
		} else {
			$q .= " $_";
		}
	}
	if ($intoc) {
		if (m/\<!-- END TOC/) {
			$intoc = 0;
		}
	} else {
		my $l = $_;
		if (m/\<b\>Q:\<\/b\>\s(.*)/i) {
			$inques = 1;
			$q = $1;
			$l = "<a name=\"Q${qn}\">".$l;
			$qn++;
		}
		if (m/\<!-- BEGIN TOC/) {
			$intoc = 1;
			push(@lines, "BEGIN TOC");
		} else {
			push(@lines, $l);
		}
	}
}

close(IN);

open(OUT, ">faq.html") or die;

foreach my $x (@lines) {
	if ($x eq "BEGIN TOC") {
		my $i = 1;
		print OUT "<!-- BEGIN TOC\n";
		print OUT "     Do not edit by hand.  Use ".
			"../tools/update_faq.pl instead. -->\n";
		foreach $x (@ques) {
			$x =~ s/\<.*?\>//g;
			$x =~ s/\s+/ /g;
			print OUT "  <li><a href=\"#Q${i}\">$x</a>\n";
			$i++;
		}
		print OUT "<!-- END TOC -->\n";
	} else {
		print OUT $x;
	}
}

close(OUT);

exit 0;
