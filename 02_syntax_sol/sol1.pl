use strict;
use warnings;
use v5.08;
# Insert function looks_like_number
# from package Scalar::Util
# to our program
use Scalar::Util 'looks_like_number';

# Write a program that reads 10 numbers from 
# the user and prints the largest of them

print "Please type in 10 numbers:\n";
my $max;
# do ... while
# read values UNTIL a number is found
do {
	$max = <>;
} while ! looks_like_number($max);

print "Read 1 number: $max";

for ( 1..9 ) {
	my $val = <>;
	# check if $val is a number:
	# If it is continue, and if not
	# redo the loop body
	redo if ! looks_like_number($val);

	# "next" -> just like continue
	# move on to next iteration

	# "last" -> jump out of the loop
	# like c's break
	print "Read another value: $val";
	if ( $val > $max ) {
		$max = $val;
	}
}

print "The maximum was: $max\n";
