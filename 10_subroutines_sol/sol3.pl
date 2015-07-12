use strict;
use warnings;
use v5.08;
use List::Util qw/sum/;
# Write a function that takes three numbers and returns the sum 
# of the tens digit of them all. 
# For instance, the inputs: 120, 140, 220 should return 8.
#

sub sum_tens {	
	my @tens = map { substr($_, -2, 1) } @_;
	sum(@tens);
}

print sum_tens(120, 140, 220);
