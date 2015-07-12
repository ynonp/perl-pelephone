use strict;
use warnings;
use v5.08;
use List::Util qw/maxstr/;

if ( @ARGV == 0 ) {
	die "Usage: sol4.pl <word> <word> ...";
}

my $max_str = shift @ARGV;

foreach my $item (@ARGV) {
	if ( length($item) > length($max_str) ) {
		$max_str = $item;
	}
}

print $max_str, "\n";

