use strict;
use warnings;
use v5.08;

# Write a perl program that prints how many 
# different paths are in the environment variable $PATH

# First get all different paths
# from PATH environment variable
# to a perl array called @paths
my @paths = split ":", $ENV{PATH};

# To extract unique paths, store
# everything in a hash.
my %uniq;
$uniq{$_} = 1 for @paths;

# Hash keys are now the unique values
# from @paths. Ordering is not saved in the process
# but that's ok because we only need 
# the number
my $uniq_count = keys %uniq;
print "You have $uniq_count different paths in \$PATH variable\n";


