use strict;
use warnings;
use v5.08;
use Data::Dumper;

# Create a hash
my %email = (
	bob     => 'bob@gmail.com',
	jane    => 'jane@gmail.com',
	michael => 'mike@gmail.com',
	ynon    => 'ynon@ynonperek.com',
);

# Prints the hash 
# (don't forget to "use Data::Dumper"
# at the top)
print Dumper(\%email);

# Prints a value from the hash
print $email{ynon}, "\n";

# Modifies a value from the hash
$email{ynon} = 'ynonperek@gmail.com';
print $email{ynon}, "\n";

# Add new key/value pair to the hash
$email{barbara} = 'yo@gmail.com';
print "Barbara's email is: ", $email{barbara}, "\n";

# Perform loop foreach key/value pair
# in the hash
while (my ($key, $value) = each %email) {
	print "Name: $key, Email: $value\n";
}

# Return all hash keys as an array
my @names = keys %email;

my @sorted_names = sort @names;
print "--- now sorted:\n";
foreach my $name (@sorted_names) {
	print "Name: $name, Email: ", $email{$name}, "\n";
}


















