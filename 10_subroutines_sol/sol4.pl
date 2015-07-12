use strict;
use warnings;
use v5.08;


# Write a function that takes words and returns 
# one scalar composed from concatenating all 
# the words separated by comma
# 

sub join_with_comma {
	join(",", @_);
}

