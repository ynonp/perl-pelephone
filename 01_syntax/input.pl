use strict;
use warnings;
use v5.08;

print "What's the password?\n";
# <> reads a line from the user
# with the newline character
my $line = <>;

# remove the newline character
# from $line
chomp($line);

if ( $line eq "secret" ) {
	print "Wow you knew the password\n";
}
