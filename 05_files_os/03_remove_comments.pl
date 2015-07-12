use strict;
use warnings;
use v5.08;
# Only for perl >= 5.10.1
# use autodie;

my ($input_file, $output_file) = @ARGV;

open my $fi, '<', $input_file or 
	die "Failed to open file: $input_file. Error was: $!";

open my $fo, '>', $output_file or
	die "Failed to open file: $output_file. Error was: $!";

while(<$fi>) {
	next if substr($_, 0, 1) eq "#";
	print {$fo} $_;
}

close $fi;
close $fo;


