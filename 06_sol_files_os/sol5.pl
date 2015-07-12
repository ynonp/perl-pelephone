use strict;
use warnings;
use v5.08;
use File::Find;

# Write a perl program that takes a directory name as parameter and:
# 	prints every sub directory that has more than 10 .pl files in it
# 	prints total size of all .pl files in that directory
# 	delete all empty subdirectories


my ($start) = @ARGV;
die "Usage: $0 <start>" if ! $start;

# In order to delete empty subdirectories it's best
# to traverse the tree "from the inside"
# finddepth will perform the provided subroutine
# for a directory AFTER it has performed for all
# files in that directory (DFS traversal)
# so it can delete empty nested directories

finddepth(sub {
		return if ! -d $_;

		my @perl_files = glob("$_/*.pl");

		# Part 1: 
		# Print directory if it has more than 10 .pl files
		if ( @perl_files > 10 ) {
			print "$File::Find::name has more than 10 perl files\n";
		}

		# Part 2:
		# Calculate total size of .pl files
		my $total = 0;
		$total += -s $_ for @perl_files;
		print "Total size of perl files in $File::Find::name is: $total\n";

		# Part 3:
		# Delete all empty subdirectories
		# Since rmdir will only remove empty directories
		# we can use that on all directories
		rmdir $_;

}, $start);
