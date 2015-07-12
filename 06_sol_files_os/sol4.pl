use strict;
use warnings;
use v5.08;
use File::Path qw/make_path/;

while(my $dirname = <DATA>) {
	chomp $dirname;
	make_path($dirname);
}

__DATA__
foo
bar
buz
music/songs

