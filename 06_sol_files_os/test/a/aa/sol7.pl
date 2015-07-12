use strict;
use warnings;
use v5.08;

# $filename is the first item from @ARGV
my ($filename) = @ARGV;

# $size is the size of @ARGV
my $size = @ARGV;

if ( @ARGV == 2 ) {
	# Did I get two arguments?
}

if ( -x $filename ) {
	system($filename);
} elsif ( -f $filename ) {
	open my $fh, '<', $filename;
	print while(<$fh>);
	close $fh;
} else {
	die "Not a file: $filename";
}





