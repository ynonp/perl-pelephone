use strict;
use warnings;
use v5.08;

# Write a program that randomizes a number and calculates the 
# sum total of its digits.
{
# $x / 10, $x % 10
	my $num = int(rand(10000));
	print "Before: num = $num\n";
	my $sum = 0;

	while ($num) {
		my $digit = $num % 10;
		$sum += $digit;
		$num = int($num / 10);
	}

	print "Sum = $sum\n";
}

# substr(...)
{
	my $num = int(rand(10000));
	print "Before: num = $num\n";
	my $sum = 0;

	while ($num) {
		my $digit = substr($num, 0, 1, "");
		$sum += $digit;
	}

	print "Sum = $sum\n";
	
}

