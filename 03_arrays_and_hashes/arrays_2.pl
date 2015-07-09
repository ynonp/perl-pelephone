use strict;
use warnings;
use v5.08;
use List::Util qw/min sum/;

my @files = ('/etc/shells', '/etc/passwd', '/foo/bar');

# qw// creates an array and automatically quotes
# each word in the list
my @columns = qw/name email address city state country/;

print "--- Files: \n";
# Join all array items into one string, 
# separated by :
print join(":", @files), "\n";
print "---\n";

# Iterate over all items in the array
foreach my $path (@files) {
	if ( -e $path ) {
		print "$path is a valid file\n";
	} else {
		print "$path is NOT a valid file\n";
	}
}

for (@files) {
	if ( -e ) {
		print "$_ is a valid file\n";
	} else {
		print "$_ is NOT a valid file\n";
	}
}

print min(10, 20, 30, 40, 30, 22, 15, 7, 11), "\n";
print sum(10, 20, 30, 40, 30, 22, 15, 7, 11), "\n";

