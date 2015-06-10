#!/usr/bin/perl -w

use POSIX;
use strict;

# only scan arch/mips (for testing)
my $rel_limit_scan = 0;

# don't make any permanent changes
my $rel_no_delete = 0;

# path to headers
my $rdb_path = "/projects/bseswev_nonos/nightly/rdb";

my %irq_subst = (
	"GENET_0_A" => "GENET_0_A", "GENET_0_B" => "GENET_0_B",
	"HIF" => "HIF", "HIF_SPI" => "HIF_SPI", "PM" => "STANDBY",
	"SUNDRY_PM_INTR" => "STANDBY", "SYS_PM" => "STANDBY",
	"MOCA_GENET_0_A" => "GENET_1_A", "MOCA_GENET_0_B" => "GENET_1_B",
	"GENET_1_A" => "GENET_1_A", "GENET_1_B" => "GENET_1_B",
	"PCI_SATA" => "SATA", "SATA_AHCI" => "SATA", "UPG" => "UPG",
	"PCI_INTA_0" => "PCI_A0", "PCI_INTA_1" => "PCI_A1",
	"PCI_INTA_2" => "PCI_A2",
	"PCIE_INTA_" => "PCIE_INTA", "PCIE_INTB_" => "PCIE_INTB",
	"PCIE_INTC_" => "PCIE_INTC", "PCIE_INTD_" => "PCIE_INTD",
	"PCIE_INTA" => "PCIE_INTA", "PCIE_INTB" => "PCIE_INTB",
	"PCIE_INTC" => "PCIE_INTC", "PCIE_INTD" => "PCIE_INTD",
	"ENET" => "EMAC_0", "ENET_EMAC1" => "EMAC_1",
	"MOCA_INTR" => "MOCA", "MOCA" => "MOCA",
	"TVM" => "UARTA",
	"PCU_UART2" => "UARTB", "PCU_UART3" => "UARTC", "PCU_UART4" => "UARTD",
	"USB_OHCI" => "OHCI0_0", "USB_EHCI" => "EHCI0_0",
	"USB_OHCI_0" => "OHCI0_0", "USB_EHCI_0" => "EHCI0_0",
	"USB_OHCI_1" => "OHCI0_1", "USB_EHCI_1" => "EHCI0_1",
	"USB_OHCI_2" => "OHCI0_2", "USB_EHCI_2" => "EHCI0_2",
	"USB_OHCI_3" => "OHCI0_3", "USB_EHCI_3" => "EHCI0_3",
	"USB0_OHCI_0" => "OHCI0_0", "USB0_EHCI_0" => "EHCI0_0",
	"USB0_OHCI_1" => "OHCI0_1", "USB0_EHCI_1" => "EHCI0_1",
	"USB1_OHCI_0" => "OHCI1_0", "USB1_EHCI_0" => "EHCI1_0",
	"USB1_OHCI_1" => "OHCI1_1", "USB1_EHCI_1" => "EHCI1_1",
	"UPG_UART0" => "UARTA", "UPG_UART1" => "UARTB", "UPG_UART2" => "UARTC",
	"SDIO0_0" => "SDIO0", "SDIO1_0" => "SDIO1",
);

my $gpl_notice =
" * This program is free software; you can redistribute it and/or modify\n".
" * it under the terms of the GNU General Public License version 2 as\n".
" * published by the Free Software Foundation.\n".
" *\n".
" * This program is distributed in the hope that it will be useful,\n".
" * but WITHOUT ANY WARRANTY; without even the implied warranty of\n".
" * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the\n".
" * GNU General Public License for more details.\n".
" *\n".
" * You should have received a copy of the GNU General Public License\n".
" * along with this program; if not, write to the Free Software\n".
" * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.\n";

my $year = strftime("%Y", localtime());

sub install_bchp($$$$)
{
	my($chip, $rev, $in, $out) = @_;

	local(*IN, *OUT);

	open(IN, "<$in") or die "can't open $in: $!";

	my $skip = 0;
	my(@outtxt, @outdefs);

	@outtxt = ( );
	my @outregs = ( );

	while(<IN>)
	{
		if(m/All Rights Reserved/i)
		{
			push(@outtxt, " *\n");
			push(@outtxt, $gpl_notice);
			$skip = 1;
		} elsif($skip && m/\*{20,}/) {
			push(@outtxt, $_);
			$skip = 0;
		} elsif(m/\$brcm_/) {
			if(m/brcm_Log/)
			{
				push(@outtxt, $_);
			}
			$skip = 0;
		} else {
			if(! $skip)
			{
				push(@outtxt, $_);
				if($_ =~ /#define/) {
					push(@outregs, $_);
				}
			}
		}
	}
	close(IN);

	chmod(0644, $out);

	# Do not overwrite the output file unless one or more
	# register definitions (#define lines) has changed.  If the only
	# change is the md5/date/comments in the header, skip it.

	open(OUT, "<$out") or die "can't open $out: $!";

	my @oldregs;
	my $i = 0;
	my $changed = 0;

	# read in the old file and gather all register defs

	while(<OUT>) {
		if(m/#define/) {
			push(@oldregs, $_);
		} elsif(m/All Rights Reserved/i) {
			# old version has non-GPL license terms
			$changed = 1;
			last;
		}
	}
	close(OUT);

	# compare old and new register defs

	foreach my $x (@outregs) {

		# old version is incomplete/truncated
		if(!defined($oldregs[$i])) {
			$changed = 1;
			last;
		}

		my $y = $oldregs[$i];

		# old version has outdated content
		if($x ne $y) {
			$changed = 1;
			last;
		}
		$i++;
	}

	if($changed == 0) {
		#print "SKIP: $out\n";
		return;
	}
	print "UPDATE: $out\n";

	open(OUT, ">$out") or die "can't open $out: $!";
	foreach my $x (@outtxt) {
		print OUT $x;
	}
	close(OUT);
}

sub addtab($$)
{
	my($pfx, $tcol) = @_;

	my $ret = $pfx;
	my $col = length($pfx);

	while ($col < $tcol) {
		$ret .= "\t";
		$col += 8 - ($col % 8);
	}
	return $ret;
}

sub gen_irq_map($$$)
{
	my($chip, $in, $out) = @_;
	my(%irqnums, @irqlist, %printed, @outdef);
	local(*IN, *OUT);

	open(IN, "<$in") or die "can't open $in: $!";
	chmod(0644, $out);

	while (<IN>) {
		if (m/^#define\s+BCHP_HIF_CPU_INTR1_INTR_W(\d)_STATUS_(\S+)_CPU_INTR_SHIFT\s+([0-9]+)/) {
			my $num = 1 + ($1 * 32) + $3;
			my $name = $2;

			if (defined($irq_subst{$name})) {
				$name = "BRCM_IRQ_".$irq_subst{$name};
				$irqnums{$name} = $num;
				push(@irqlist, $name);
			}
		}
	}

	@irqlist = sort { $a cmp $b } @irqlist;
	foreach my $x (@irqlist) {
		my $pr = $x;
		# 7325, 3548, 7550 called the EMAC_0 IRQ "EMAC1"
		if ($x eq "BRCM_IRQ_EMAC_1" &&
		    !defined($printed{"BRCM_IRQ_EMAC_0"})) {
			$pr = "BRCM_IRQ_EMAC_0";
		}
		$printed{$x} = 1;
		push(@outdef, addtab("#define $pr", 32).$irqnums{$x});
	}
	close(IN);

	# add USB IRQ arrays (sorted: 0_0, 0_1, 1_0, 1_1)

	my ($ehci, $ohci) = ("", "");

	foreach my $x (@irqlist) {
		if($x =~ m/BRCM_IRQ_EHCI/) {
			$ehci .= ($ehci eq "" ? "" : ", ").$irqnums{$x};
		}
		if($x =~ m/BRCM_IRQ_OHCI/) {
			$ohci .= ($ohci eq "" ? "" : ", ").$irqnums{$x};
		}
	}
	push(@outdef, addtab("#define BRCM_IRQLIST_EHCI", 32)."{ $ehci }");
	push(@outdef, addtab("#define BRCM_IRQLIST_OHCI", 32)."{ $ohci }");

	# see if the $out file is already up to date
	my ($i, $matched) = (0, 1);

	open(OUT, "<$out") or die "can't open $out: $!";
	while (<OUT>) {
		if (m/^#define\s+(\S+)\s+(.+)$/) {
			s/[\r\n]//g;
			if (!defined($outdef[$i]) || $outdef[$i++] ne $_) {
				$matched = 0;
				last;
			}
		}
	}
	close(OUT);

	if ($matched && @outdef == $i) {
		return;
	}

	# definitions have changed, so write out a new copy

	open(OUT, ">$out") or die "can't open $out: $!";

	print OUT "/*\n";
	print OUT " * $chip IRQ header file autogenerated by update_bchp.pl\n";
	print OUT " * DO NOT EDIT THIS FILE BY HAND.\n";
	print OUT " *\n";
	print OUT " * Copyright (C) $year Broadcom Corporation\n";
	print OUT " *\n";
	print OUT $gpl_notice;
	print OUT " */\n";
	print OUT "\n";
	print OUT "#ifndef _BRCMIRQ_H_\n";
	print OUT "#define _BRCMIRQ_H_\n";
	print OUT "\n";

	foreach my $x (@outdef) {
		print OUT "$x\n";
	}

	print OUT "\n";
	print OUT "#endif /* _BRCMIRQ_H_ */\n";

	close(OUT);
	print "UPDATE: $out\n";
}

my %bdefs = ( );

sub scan_bdefs($)
{
	my($f) = @_;
	local *F;
	local $/ = undef;

	open(F, "<$f") or die;
	my $contents = <F>;
	close(F);

	my $first = 1;

	while($contents =~ m/(BCHP_)|(BDEV_WR_F_RB)|(BDEV_WR_F)|(BDEV_RD_F)/) {
		my $r = $';
		$contents = $&.$';

		if($first) {
			print " [SYM] $f\n";
			$first = 0;
		}

		if($& eq "BCHP_") {
			$contents =~ m/(BCHP_[A-Z0-9_]+)/i;
			$bdefs{$1} = 1;
		} else {
			my $m = $contents;
			$m =~ s/\s+//g;
			if($m =~ m/\(([A-Z0-9_]+),([A-Z0-9_]+)/i) {
				$bdefs{"BCHP_${1}"} = 1;
				$bdefs{"BCHP_${1}_${2}_MASK"} = 1;
				$bdefs{"BCHP_${1}_${2}_SHIFT"} = 1;
			} else {
				print "??? $&\n";
			}
		}
		$contents = $r;
	}
}

sub scan_hdr($)
{
	my($f) = @_;
	local *F;

	open(F, "<arch/mips/include/$f") or die;

	my $first = 1;

	while(<F>) {
		s/\s+/ /g;
		if(m/#define (\S+) (\S+)/) {
			my($sym, $val) = ($1, $2);
			my $found = 0;

			if(defined($bdefs{$sym})) {
				$found = 1;
			}

			if($sym =~ m/^BCHP_((USB)|(UART)|(ENET)|(GENET)|(MOCA)|(EMAC)|(SATA)|(SDIO)|(NAND)|(BSPI)|(BSC)).*REG_((START)|(END))/) {
				$found = 1;
			}
			if($sym =~ m/^BCHP_SUN_TOP_CTRL_PIN_MUX_CTRL/) {
				$found = 1;
			}
			if($sym =~ m/^BCHP_AON_PIN_CTRL_PIN_MUX_CTRL/) {
				$found = 1;
			}
			if($sym =~ m/^BCHP_HIF_INTR2_CPU_/) {
				$found = 1;
			}
			if($sym =~ m/^BCHP_VCXO.*PLL/) {
				$found = 1;
			}
			if($sym =~ m/^BCHP_CLK.*PLL/) {
				$found = 1;
			}
			if($sym =~ m/^BCHP_HIF_CPU_.*((STATUS)|(SET)|(CLEAR))$/) {
				$found = 1;
			}
			if($sym =~ m/^BCHP_USB_CTRL_((SETUP)|(OBRIDGE))/) {
				$found = 1;
			}

			if($found) {
				if($first) {
					my $f2 = $f;
					$f2 =~ s|.*/||;
					print R "\n/* $f2 */\n\n";
					$first = 0;
				}
				print R "#define $sym $val\n";
			}
		}
	}

	close(F);
}

sub copy_irq($)
{
	my($chip) = @_;
	local(*F);

	print R "\n/* brcmirq.h */\n\n";

	open(F, "<arch/mips/include/asm/brcmstb/$chip/brcmirq.h") or die;

	while(<F>) {
		if(m/#define\s+(\S+)\s+(\S+)/) {
			print R "#define $1 $2\n";
		}
	}

	close(F);
}

sub compress_bchp($)
{
	my($rel_hash) = @_;
	my %barechip;
	local(*FL, *F, *R, *IN, *OUT);

	# figure out which symbols we need

	print " [MSG] Checking BCHP header availability\n";
	foreach my $x (keys(%$rel_hash)) {
		my $dir = "arch/mips/include/asm/brcmstb/$x";
		if(-d $dir) {
			print " [DIR] $dir\n";
		} else {
			die "Could not locate $dir";
		}
		$x =~ s/[a-z].*//;
		$barechip{$x} = 1;
	}

	print " [MSG] Scanning tree for BCHP symbols...\n";
	if($rel_limit_scan) {
		open(FL, "find arch/mips -name '*.[chsS]'|") or die;
	} else {
		open(FL, "find . -name '*.[chsS]'|") or die;
	}
	while(<FL>) {
		my $f = $_;
		$f =~ s/[\r\n]//g;
		if($f !~ m|bchp_[a-z0-9_]*\.h$|i && $f !~ m|brcmreg.h$|) {
			scan_bdefs($f);
		}
	}
	close(FL);

	# create brcmreg.h

	open(F, "<arch/mips/include/asm/brcmstb/brcmstb.h") or die;
	open(R, ">arch/mips/include/asm/brcmstb/brcmreg.h") or die;

	print R "/*\n";
	print R " * Consolidated register definitions - automatically generated\n";
	print R " * DO NOT EDIT THIS FILE BY HAND.\n";
	print R " *\n";
	print R " * Copyright (C) $year Broadcom Corporation\n";
	print R " *\n";
	print R $gpl_notice;
	print R " */\n";
	print R "\n";
	print R "#ifndef _BRCMREG_H\n";
	print R "#define _BRCMREG_H\n";
	print R "\n";

	my $last_chip = "";
	my $first = 1;

	while(<F>)
	{
		if(m|#include \<(asm/brcmstb/([0-9a-z]+)/bchp_.*?)\>|) {
			my($hdr, $chip) = ($1, $2);

			if(defined($rel_hash) && !defined($$rel_hash{$chip})) {
				next;
			}
			if($chip ne $last_chip) {
				print " [REG] Added definitions for $chip\n";
				$last_chip = $chip;
				my $capchip = $chip;
				$capchip =~ tr/a-z/A-Z/;

				if($first) {
					print R "#if defined(".
						"CONFIG_BCM${capchip})\n";
					$first = 0;
				} else {
					print R "\n#elif defined(".
						"CONFIG_BCM${capchip})\n";
				}

				#copy_irq($chip);
			}
			scan_hdr($hdr);
		}
	}

	if($first) {
		die "No valid chips were selected";
	}

	close(F);

	print " [NEW] Created brcmreg.h\n";

	print R "\n#endif\n\n";
	print R "#endif /* _BRCMREG_H */\n";
	close(R);

	# update brcmstb.h

	my $common = "arch/mips/include/asm/brcmstb";
	my $brcmstb = "${common}/brcmstb.h";

	open(IN, "<$brcmstb") or
		die "can't open $brcmstb";
	open(OUT, ">${brcmstb}.new") or
		die "can't write ${brcmstb}.new";

	while(<IN>) {
		if(m/CONFIG.*BCM[973]/) {
			last;
		}
		print OUT $_;
	}

	while(<IN>) {
		if(m/^#endif/) {
			last;
		}
	}

	print OUT "#include <asm/brcmstb/brcmreg.h>\n";

	while(<IN>) {
		print OUT $_;
	}

	close(OUT);
	close(IN);

	print " [UPD] Wrote new brcmstb.h\n";

	# update Kconfig

	my $kconfig = "arch/mips/brcmstb/Kconfig";
	open(IN, "<$kconfig") or
		die "can't open $kconfig: $!";
	open(OUT, ">${kconfig}.new") or
		die "can't open ${kconfig}.new: $!";
	
	my $p = 1;
	while(<IN>) {
		my $in = $_;
		if($in =~ m/^config BCM([37][0-9A-Z]+)/) {
			my $chip = $1;
			$chip =~ tr/A-Z/a-z/;
			if(defined($rel_hash) &&
					!defined($$rel_hash{$chip}) &&
					!defined($barechip{$chip})) {
				$p = 0;
			}
		}
		if($p) {
			print OUT $in;
		}
		if($in =~ m/^\s*$/) {
			$p = 1;
		}
	}

	close(OUT);
	close(IN);

	print " [UPD] Wrote new Kconfig\n";

	my @del_list = ( );

	# figure out which defconfigs to delete

	my @defs = sort { $a cmp $b }
		glob("arch/mips/configs/bcm[37]*_defconfig");
	
	my $n = 0;
	foreach my $x (@defs) {
		$x =~ m/bcm([0-9a-z]+)/;
		die if(!defined($1));
		if(defined($rel_hash) && !defined($$rel_hash{$1})) {
			push(@del_list, $x);
		} else {
			$n++;
		}
	}

	if($n == 0) {
		die "can't find a defconfig for any selected chips";
	}

	# add bchp dirs to the deletion list

	my @bdirs = sort { $a cmp $b }
		glob("arch/mips/include/asm/brcmstb/[37]*");
	
	push(@del_list, @bdirs);
	push(@del_list, $brcmstb);
	push(@del_list, $kconfig);

	# final steps: delete unwanted files, and replace Kconfig + brcmstb.h

	foreach my $x (@del_list) {
		print " [DEL] $x\n";
		if(! $rel_no_delete) {
			system("rm -rf $x\n");
		}
	}

	print " [REN] ${brcmstb}.new -> ${brcmstb}\n";
	print " [REN] ${kconfig}.new -> ${kconfig}\n";
	if(! $rel_no_delete) {
		rename("${brcmstb}.new", $brcmstb) or die "$!";
		rename("${kconfig}.new", $kconfig) or die "$!";
	}
}

#
# MAIN
#

my $ret = 0;
my $rel = 0;

my %chip_hash;
my $n_chips = 0;

while(defined($ARGV[0])) {
	my $a = $ARGV[0];

	if($a eq "--release") {
		$rel = 1;
	} else {
		$chip_hash{$a} = 1;
		$n_chips++;
	}
	shift @ARGV;
}

if($rel) {
	exit compress_bchp($n_chips ? \%chip_hash : undef);
}

if(-d "$rdb_path/vobs/magnum/basemodules/chp/") {
	$rdb_path = "$rdb_path/vobs/magnum/basemodules/chp";
}

if(! -f "$rdb_path/bchp.h") {
	die "can't find bchp.h in $rdb_path";
}

my $common = "include/linux/brcmstb";
my $chip_pfx = "$common/";
my $hdr_pfx = "linux/brcmstb/";
my $cfg_pfx = "CONFIG_BCM";

my $brcmstb = "${common}/brcmstb.h";

open(IN, "<$brcmstb") or
	die "can't open $brcmstb";
open(OUT, ">${brcmstb}.new") or
	die "can't write ${brcmstb}.new";


while(<IN>)
{
	if(m/CONFIG.*BCM[973]/) {
		last;
	}
	print OUT $_;
}

my @chips = glob("${chip_pfx}[0-9]*");
my @schips = ( );

foreach (@chips)
{
	if(m!((/brcm9)|/)([0-9]{4,5}[a-e]0)$!)
	{
		push(@schips, $3);

		# if a list was not provided on the command line, select
		# ALL chips for updating
		if($n_chips == 0) {
			$chip_hash{$3} = 1;
		}
	} else {
		die "bad chip: $_";
	}
}

@schips = sort { $a cmp $b } @schips;
my $first = 1;

foreach (@schips)
{
	m/([0-9]{4,5})([a-e]0)/ or die;
	my($chip, $rev) = ($1, $2);

	my @bchps = sort { $a cmp $b }
		glob("${chip_pfx}${chip}${rev}/bchp_*.h");
	
	my $caprev = $rev;
	$caprev =~ tr/[a-z]/[A-Z]/;
	my $if;

	if($first)
	{
		$if = "#if";
		$first = 0;
	} else {
		$if = "\n#elif";
	}

	print OUT "$if defined(${cfg_pfx}${chip}${caprev})\n";
	foreach my $b (@bchps)
	{
		my $bbase = $b;
		$bbase =~ s|.*/||;

#		if(! -s $b)
#		{
#			next;
#		}
		print OUT "#include <${hdr_pfx}${chip}${rev}/$bbase>\n";

		my $f = "$rdb_path/$chip/rdb/$rev/$bbase";
		if(-f $f) {
			if (defined($chip_hash{"${chip}${rev}"})) {
				install_bchp($chip, $rev, $f, $b);
				if ($bbase eq "bchp_hif_cpu_intr1.h") {
					$b =~ m/^(.*\/)/;
					my $irqmap = $1."brcmirq.h";
					gen_irq_map($chip.$rev, $f, $irqmap);
				}
			}
		} else {
			print "ERROR: missing $f\n";
			$ret = 1;
		}
	}
	#print OUT "#include <${hdr_pfx}${chip}${rev}/brcmirq.h>\n";
}

print OUT "\n#endif\n";

my $iflev = 1;

while(<IN>)
{
	if(m/^#if/) {
		$iflev++;
	} elsif(m/^#endif/)
	{
		$iflev--;
		if($iflev == 0)
		{
			last;
		}
	}
}

while(<IN>)
{
	print OUT $_;
}

close(IN);
close(OUT);

unlink($brcmstb);
rename("${brcmstb}.new", "$brcmstb");

exit $ret;
