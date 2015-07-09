use strict;
use warnings;
use v5.08;

while(my $line = <>) {
	chomp $line;
	print "> $line\n";
}

print "The End---\n";
