use strict;
use warnings;
use v5.08;

# This
# system("ping", "-c", 4, "www.google.com");
# Is the same as:
my $ok = system("ping -c 4 www.google.com");

if ( $ok == 0 ) {
	print "Ping went fine\n";
} else {
	print "Error while pinging\n";
}

