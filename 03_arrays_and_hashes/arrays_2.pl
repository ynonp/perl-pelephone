use strict;
use warnings;
use v5.08;
use List::Util qw/min sum/;

my @files = ('/etc/shells', '/etc/passwd', '/foo/bar');
my @columns = qw/name email address city state country/;

print "--- Files: \n";
print join(":", @files), "\n";
print "---\n";

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

