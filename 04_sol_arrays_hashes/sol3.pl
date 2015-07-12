use strict;
use warnings;
use v5.08;
use Data::Dumper;

my %h = (
	foo => 10,
	bar => 20, 
	buz => 30,
);

my @h = %h;

my @words = qw/one two three four/;
my @rwords = reverse @words;

my %rev;
while (my ($k, $v) = each %h) {
	$rev{$v} = $k;
}

my %rev2 = reverse %h;

print Dumper(\%rev2);

my $hash_as_scalar = %h;

print "The hash (as a scalar) is: $hash_as_scalar\n";

