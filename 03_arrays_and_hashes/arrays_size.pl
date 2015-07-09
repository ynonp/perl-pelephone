use strict;
use warnings;
use v5.08;

my @a = (10, 20, 30);
my @b = @a;

if ( @a > @b ) {
}

my $size = @a;

if ( @a > 4 ) {
	print "...\n";
}

for ( my $i=0 ; $i < @a; $i++ ) {
	# iterates over array
}


print "Size is: $size\n";


