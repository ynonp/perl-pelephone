use strict;
use warnings;
use v5.08;


# Write a function that takes a length and returns 
# a randomized text string of that length 
# (hint: use chr to transform a random number to a character code).
#

sub random_text {
	my ($len) = @_;
	my @ab = ('a'..'z');
	my $text;

	for (1..$len) {
		# The following line adds a random
		# character to the string $text
		# Running it $len times yields a random
		# text of length $len
		$text .= $ab[rand(@ab)];
	}
	return $text;
}

print random_text(10);
