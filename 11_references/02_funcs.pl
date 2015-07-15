use strict;
use warnings;
use v5.08;

sub hello {
	print "hello world\n";
}

sub doit {
	my ($f_ref) = @_;
	for my $i (1..10) {
		# Call the function
		# referenced by $f_ref
		$f_ref->($i);
	}
}

# Pass a reference to the function
# hello into the function doit
doit(\&hello);

