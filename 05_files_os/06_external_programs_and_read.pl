use strict;
use warnings;
use v5.08;

open my $fh, 'cowsay Hello|';
while (<$fh>) {
	chomp;
	my $rev = reverse($_);
	print $rev, "\n";
}

close $fh;

