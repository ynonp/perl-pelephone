use strict;
use warnings;
use v5.08;

# Write a program that reads two numbers and 
# finds the least common multiplication of two numbers. 
# That is, the smallest number that both divide by.
#
# Example: for 4 and 6, program should print 12
my $a = 4;
my $b = 6;

# if a < b => $a, else $b
my $start = $a < $b ? $a : $b;
my $end = $a * $b;

for (my $candidate = $start; $candidate <= $end; $candidate++ ) {
	next if $candidate % $a != 0;
	next if $candidate % $b != 0;	

	print "Found: $candidate\n";
	last;
}


