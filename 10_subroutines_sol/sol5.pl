use strict;
use warnings;
use v5.08;

# Write a function that takes a list and a length, 
# and returns a new list of only the words 
# whose length is longer than the argument
#

sub longer_than {
	my ($min_len, @words) = @_;
	grep { length > $min_len } @words;
}

my @res = longer_than(5, "hello", "is", "there", "anybody", "in", "there");

print "@res\n";
