use strict;
use warnings;
use v5.08;

##
# Array is an ordered collection of scalars
#

my @files = ("/etc/shells", "/etc/passwd", 57, "/tmp/foo");

# Add to the end of array
push @files, 11;
push @files, "/home/ynon";

# Insert to start of array
unshift @files, "/home/jane", "/tmp/bar";

# Remove last item
my $last_item = pop @files;

# Remove first item
my $first_item = shift @files;

# Read from array
print "The first item in the array is: \n";
print $files[0], "\n";

$files[1] = "/new/file";

my @numbers = (1..100);
my @letters = ('a'..'z');

my @subarray = @files[3..6];


my @a = (1..10);
my @b = (11..20);
my @c = (21..30);
my @d = (@a, @b, ';)', @c);
push @d, "10", "20";

print @d, "\n";
print "@d", "\n";

# All items of @d separated with spaces
my $array_as_string = "@d";

# All items of @d separated with <anything>
my $joined_array = join(" ", @d);

