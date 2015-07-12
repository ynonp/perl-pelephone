use strict;
use warnings;
use v5.08;

my $STATE_FILE = "count.txt";
my $count = 0;

my $ok = open my $fh, '<', $STATE_FILE;
if ( $ok ) {
	$count = <$fh>;
	chomp $count;
}
close $fh;

print "Program executed $count times before\n";
open $fh, '>', $STATE_FILE 
	or die "Failed to open file $STATE_FILE for writing. $!";


print {$fh} $count + 1, "\n";
close $fh;








