use strict;
use warnings;
use v5.08;

############################
# Using an array in scalar context returns its size
############################
#
my @a = (10, 20, 30);
my @b = @a;

if ( @a > @b ) {
# @a has more items than @b
}

# After assignment, $size = 3 (size of @a)
my $size = @a;

if ( @a > 4 ) {
# @a has more than 4 items
	print "...\n";
}

for ( my $i=0 ; $i < @a; $i++ ) {
	# iterates over array
}


print "Size is: $size\n";


