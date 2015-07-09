use strict;
use warnings;
use v5.08;

my $text;
my $counter = 0;

while(my $line = <>) {
	# $text .= $line if $counter++ % 2 == 0;

	if ( $counter % 2 == 0 ) {
		$text .= $line;	
	}

	$counter += 1;

}

print "----\n";
print $text;

