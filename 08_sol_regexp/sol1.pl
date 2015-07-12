use strict;
use warnings;
use v5.08;

my $binary_string = qr{
	^[01]+$
}x;

while(<>) {
	print "Valid Binary String\n" if /$binary_string/;	
}

