use strict;
use warnings;
use v5.08;
use Data::Dumper;

my %email = (
	bob     => 'bob@gmail.com',
	jane    => 'jane@gmail.com',
	michael => 'mike@gmail.com',
	ynon    => 'ynon@ynonperek.com',
);

print Dumper(\%email);

print $email{ynon}, "\n";
$email{ynon} = 'ynonperek@gmail.com';
print $email{ynon}, "\n";

$email{barbara} = 'yo@gmail.com';
print "Barbara's email is: ", $email{barbara}, "\n";

while (my ($key, $value) = each %email) {
	print "Name: $key, Email: $value\n";
}

my @names = keys %email;
my @sorted_names = sort @names;
print "--- now sorted:\n";
foreach my $name (@sorted_names) {
	print "Name: $name, Email: ", $email{$name}, "\n";
}


















