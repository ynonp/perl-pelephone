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

# Create a new file (or truncate an old one) named oldname.txt
open my $fh, ">", "oldname.txt"; close $fh;

# Rename oldname.txt to newname.txt
rename "oldname.txt", "newname.txt";

# Create a new directory
mkdir "newfolder";

# Delete an empty directory
rmdir "newfolder";

# Get a list of all files/directories in current directory
my @stuff = glob("*");
foreach my $thing (@stuff) {
	# File tests in perl are performed with -...
	# Full list is available with: perldoc -f -x
	print "$thing is a directory\n"   if -d $thing;
	print "$thing is a normal file\n" if -f $thing;
	print "$thing is readable\n"      if -r $thing;
	print "$thing is writable\n"      if -w $thing;
	print "$thing is executable\n"    if -x $thing;

	print "$thing is of size: ", -s $thing, "\n";
}


