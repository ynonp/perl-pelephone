use strict;
use warnings;
use v5.08;

my @alive;

while(<DATA>) {
	my ($host, $ip) = split;
	next if ! $ip;

	my $res = system("ping -c 1 -t 1 $ip > /dev/null");
	if ( $res == 0 ) {
		push @alive, $host;
	}
}

print "Alive: \n";
print "\t$_\n" for @alive;

__DATA__
google 212.179.180.95
walla 212.25.69.162

bad 1.1.1.1
