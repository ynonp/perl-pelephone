use strict;
use warnings;
use v5.08;
# Only for perl >= 5.10.1
# use autodie;

my ($input_file, $output_file) = @ARGV;

open my $fi, '<', $input_file or 
	die "Failed to open file: $input_file. Error was: $!";

# Try to open the file for writing.
# If fail print an error message and quit the program
# The variable $! holds the "open" error as received
# from the operating system
# For more special variables run: perldoc perlvar
open my $fo, '>', $output_file or
	die "Failed to open file: $output_file. Error was: $!";

while(<$fi>) {
	next if substr($_, 0, 1) eq "#";
	print {$fo} $_;
}

close $fi;
close $fo;


