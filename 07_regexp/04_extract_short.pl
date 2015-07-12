use strict;
use warnings;
use v5.08;


# /bin/bash
my $shell_file = qr{ 
	/   (\w+)$
}x;

my $comments_line = qr {
	^[#] |
	^\s*$
}x;

open my $fh, '<', '/etc/shells';
while(<$fh>) {
	next if /$comments_line/;
	my ($shell) = /$shell_file/;
	
	print "Shell found: $shell\n";
}

close $fh;









