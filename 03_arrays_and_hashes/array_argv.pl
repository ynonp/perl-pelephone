use strict;
use warnings;
use v5.08;

# The special array @ARGV holds
# all command line arguments
# passed to the program

# Assigning an array to a scalar
# stores the size of the array,
# so the following line puts
# the size of @ARGV inside $argc
my $argc = @ARGV;

print "argc = $argc\n";
print "Argv = @ARGV\n";


