use strict;
use warnings;
use v5.08;

open my $fh, '<', '/etc/hosts';
my %uniq;

while(<$fh>) {
	next if substr($_, 0, 1) eq "#";
	next if length() == 1;
	# split the words by words.
	# defaults: split(" ", $_)
	# Can also use: @words = split;
	# Can also use: my (undef, undef, $third) = split;
	my ($ip_address, $hostname) = split;
	# print $ip_address, "\n";
	$uniq{$hostname} = 1;
}

close $fh;

my $uniq = keys %uniq;
print "You have $uniq different hosts\n";
