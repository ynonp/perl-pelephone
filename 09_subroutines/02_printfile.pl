use strict;
use warnings;
use v5.08;


print_file("/etc/shells");
print_file('/etc/hosts');
print_file('/etc/passwd');





############
# Subroutines
#
sub print_file {
	my ($filename) = @_;
	open my $fh, "<", $filename or
		die "Error opening file $filename for reading. $!";

	print while(<$fh>);
	close $fh;
}

