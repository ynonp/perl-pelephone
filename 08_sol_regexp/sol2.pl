use strict;
use warnings;
use v5.08;

my $even_binary_string = qr{
	^[01]*0$
}x;

while(<>) {
	print "Even binary number\n" if /$even_binary_string/;	
}



