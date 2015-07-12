use strict;
use warnings;
use v5.08;
use File::Find;
use File::Basename;

my $count = 0;

find(sub {
		my ($name,$path,$suffix) = fileparse($_, "pl");
		return if $suffix ne "pl";

		open my $fh, "<", $_;
		my $first_line = <$fh>;
		if ( substr($first_line, 0, 2) ne "#!" ) {
			$count++;
			print "Error: File $File::Find::name does not start with #!\n";
		}
		close $fh;

	}, "foo");

print "Total $count files found\n";

