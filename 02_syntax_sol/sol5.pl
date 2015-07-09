use strict;
use warnings;
use v5.08;

# Write a program that randomizes numbers in a loop 
# until it reaches a number that is divisable 
# by 7, 13 and 15. Then prints that number
#

my $num;
while(1) {
	$num = int(rand(1000000));
	next if $num %  7 != 0;
	next if $num % 13 != 0;
	next if $num % 15 != 0;

	# number is divisable in ALL 7, 13, 15
	last;
}

print $num, "\n";
