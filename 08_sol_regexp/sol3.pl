use strict;
use warnings;
use v5.08;

open my $fh, 'ls -l|'
	or die "Failed to run ls -l. Error was: $!";

while(<$fh>) {
	print if /^d/;
}

close $fh;

