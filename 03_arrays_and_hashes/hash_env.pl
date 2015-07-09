use strict;
use warnings;
use v5.08;

# %ENV holds all environment variables

# Only the values
my @values = values %ENV;

# Only the keys
my @keys = keys %ENV;

while (my ($name, $val) = each %ENV) {
	my $first_letter = substr($name, 0, 1);
	next if lc($first_letter) ne "a";

	print "Name: $name, Val: $val\n";	
}
