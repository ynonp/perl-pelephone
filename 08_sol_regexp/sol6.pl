use strict;
use warnings;
use v5.08;

while(<DATA>) {
	# skip empty lines
	next if /^$/;

	# replace ALL / with a \
	s{/}{\\}g;

	# print C:
	print "C:";

	# print the replaced line
	print;
}


__DATA__
/etc/passwd
/home/bob/bookmarks.xml
/home/bob/vimrc

