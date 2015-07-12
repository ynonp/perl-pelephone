use strict;
use warnings;
use v5.08;

open my $fh, '<', '/etc/shells';
while (my $line = <$fh>) {
	# Replace FIRST occurence of regexp with replacement
	# $line =~ s/\b\w+\b/./;
	
	# Replace ALL occurences of regexp with replacement
	$line =~ s/\b\w+\b/./g;
	print $line;
}

close $fh;

