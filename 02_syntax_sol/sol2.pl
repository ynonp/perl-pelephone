use strict;
use warnings;
use v5.08;

# Write a program that randomizes 7 numbers and prints their sum. 
# If that sum is divisable by 7, it should also print 'Boom !'. 
# (You can use the % # operator that means modulus).

my $sum = 0;
for (1..7) {
	my $num = int(rand(100));
	$sum += $num;
}

print "Sum is: $sum\n";
print "Boom!" if $sum % 7 == 0;

