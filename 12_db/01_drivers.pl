use strict;
use warnings;
use v5.08;
use DBI;

# DBI->available_drivers
# returns a list of installed DBI drivers
foreach my $driver (DBI->available_drivers) {
	print $driver, "\n";
}

