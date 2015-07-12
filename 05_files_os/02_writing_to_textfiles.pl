use strict;
use warnings;
use v5.08;

# Open for write (truncate contents)
open my $fh, '>', '/Users/ynonperek/hello.txt';

# Append
# open my $fh, '>>', '/Users/ynonperek/hello.txt';
print {$fh} "Hello World!\n";
my $num = int(rand(10000));
print {$fh} "Your number is: $num\n";



close $fh;

