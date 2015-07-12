use strict;
use warnings;
use v5.08;

# Write a function that takes 7 values. 
# The function throws an exception (hint: die) 
# if any other number of arguments was entered
#

sub die_if_not_7 {
	die "Invalid arguments" if @_ != 7;
}

