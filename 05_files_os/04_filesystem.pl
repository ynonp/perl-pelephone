use strict;
use warnings;
use v5.08;

# Delete a file:
unlink "file.txt";

# Get a list of files into an array:
my @textfiles = glob("*.txt");

foreach my $textfile (@textfiles) {
	print "Deleting file: $textfile\n";
	unlink $textfile;
}

open my $fh, ">", "oldname.txt";
close $fh;
rename "oldname.txt", "newname.txt";

mkdir "newfolder";
rmdir "newfolder";

my @stuff = glob("*");
foreach my $thing (@stuff) {
	print "$thing is a directory\n" if -d $thing;
	print "$thing is a normal file\n" if -f $thing;
	print "$thing is of size: ", -s $thing, "\n";
}
