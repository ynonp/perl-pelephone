use strict;
use warnings;
use v5.08;

# Write 2 functions: The first returns the sum of its arguments, 
# the second returns the multiplication of its arguments.
#

sub sum {
	my $res = 0;
	$res += $_ for @_;
	return $res;
}

sub mul {
	my $res = 1;
	$res *= $_ for @_;
	return $res;
}





