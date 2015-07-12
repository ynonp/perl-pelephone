use strict;
use warnings;
use v5.08;

# Use two parameters open to run
# an external command and read its output
# through $fh
# Every readline from $fh returns
# another line from the program
open my $fh, 'cowsay Hello|';
while (<$fh>) {
	chomp;
	my $rev = reverse($_);
	print $rev, "\n";
}

close $fh;

