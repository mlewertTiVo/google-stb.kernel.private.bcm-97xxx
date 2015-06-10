#!/usr/bin/perl -w

open(F, "<".$ARGV[0]) or die "can't open $ARGV[0]";

$toc = "";
$pre = "";
$content = "";

while(<F>) {
	if(m/TOC START/) {
		$pre .= $_;
		last;
	} else {
		$pre .= $_;
	}
}

while(<F>) {
	if(m/TOC END/) {
		$content = $_;
		last;
	}
}

my $last_level = 0;
my $first_level = 0;

while(<F>)
{
	if(m/^(\<h)([0-9])(\>)(.*?)(\<\/h[0-9]\>.*)/) {
		my($s0, $level, $s1, $txt, $s2) = ($1, $2, $3, $4, $5);

		$txt =~ s/\<a.*?\>//;
		$txt =~ s/\<\/a>//;

		# validator does not line "names" starting with digits
		my $link = "h_" . $txt;
		$link =~ s/[^0-9a-z]/_/gi;

		$first_level = $level if ( ! $first_level );
		
		if ( $level > $last_level) {
			if ( $last_level > 0 ) {
				$toc .= "  " x $level;
				$toc .= "<li>\n";
			}
			$toc .= "  " x $level;
			$toc .= "<ul>\n";
		}
		while ($last_level > $level) {
			$toc .= "  " x $last_level;
			$toc .= "</ul>\n";
			$toc .= "  " x $last_level;
			$toc .= "</li>\n";
			$last_level--;
		}

		$content .= "${s0}${level}${s1}<a name=\"$link\">$txt</a>$s2\n";

		$toc .= "  " x ($level + 1);
		$toc .= "<li><a href=\"#${link}\">$txt</a></li>\n";
		$last_level = $level;
	} else {
		$content .= $_;
	}
}

while ($last_level >= $first_level) {
	$toc .= "  " x $last_level;
	if ( $last_level != $first_level ) {
		$toc .= "</ul></li>\n" ;
	} else {
		$toc .= "</ul>\n";
	}
	$last_level--;
}

print $pre;
print $toc;
print $content;

exit 0;
