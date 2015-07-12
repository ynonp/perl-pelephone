use strict;
use warnings;
use v5.08;

# he special hash %ENV holds all of the environment 
# variables on the system. 
# Write a program that prints only the environment variables 
# whose value is a valid file name


my @res = grep { -e $ENV{$_} } keys %ENV;


print "Result: @res\n";

