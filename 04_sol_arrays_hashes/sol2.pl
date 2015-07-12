use strict;
use warnings;
use v5.08;

# Write a program that takes its input as 
# command line arguments (@ARGV) and 
# prints out only the unique values 
#

# @ARGV is the array of command line arguments

my %found;

foreach my $item (@ARGV) {
	next if $found{$item};

	# item = (10, 20, 30, 40, 10, 20, 10, 30, 40)
	$found{$item} = 1;

	print $item, " ";

}

print "\n";

# use List::MoreUtils qw/uniq/;
# print join(" ", uniq @ARGV), "\n";

