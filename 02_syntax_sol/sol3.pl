use strict;
use warnings;
use v5.08;

# Write a program that randomizes a number and calculates the 
# sum total of its digits.
{
# Solution 1: We'll use numeric operators / and %
# to extract the last digit and reduce the number
	my $num = int(rand(10000));
	print "Before: num = $num\n";
	my $sum = 0;

	while ($num) {
		# $num % 10 is the right-most digit
		my $digit = $num % 10;
		$sum += $digit;
		# int($num / 10) is the number
		# without the right-most digit
		$num = int($num / 10);
	}

	print "Sum = $sum\n";
}

# substr(...)
{
	# Solution 2: We'll use substr(...)
	# to split the number into digits
	my $num = int(rand(10000));
	print "Before: num = $num\n";
	my $sum = 0;

	while ($num) {
		# substr(string, start, length, replacement)
		# returns <length> characters from string,
		# starting at <start>.
		# If <replacement> was provided, the text
		# is replaced with it.
		# 
		# The following line takes first character
		# from $num, replaces it with blank
		# and returns it into $digit
		my $digit = substr($num, 0, 1, "");
		$sum += $digit;
	}

	print "Sum = $sum\n";
	
}

