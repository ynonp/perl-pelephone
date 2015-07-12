use strict;
use warnings;
use v5.08;

my @numbers = (10, 20, 30, 40, 50, 60, 70, 80, 11, 12.5, 13);

my @even = grep { $_ % 2 == 0   } @numbers;
my @ints = grep { int($_) == $_ } @numbers;



# Write a program that takes as arguments (in @ARGV) 
# a number AND a list of words, 
# and prints only the words longer than the number

my $num = shift @ARGV;

my @only_larger_than_num = grep { length($_) > $num } @ARGV;

# Save only valid file names from @ARGV
my @res = grep { -f } @ARGV;


print "@only_larger_than_num\n";

