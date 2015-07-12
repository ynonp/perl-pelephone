use strict;
use warnings;
use v5.08;

# cat.pl
# my ($filename) = @ARGV;
# open my $fh, '<', $filename
# 	or die "Error Failed to open file for reading. $filename. $!";

# while(<$fh>) {
# 	print;
# }

# close $fh;

# cp.pl
use File::Copy;

my ($file_in, $file_out) = @ARGV;
copy($file_in, $file_out) or die "Copy failed: $!";

