use strict;
use warnings;
use v5.08;
use List::Util 'max';

sub print_largest_value {
	my (%hash) = @_;
	my @values = values %hash;
	max(@values);
}

my %h = (
	foo => 10,
	bar => 20,
	buz => 30
);

print_largest_value(%h);

sub sum_with_init_value {
	my ($init_value, @rest) = @_;
	# TODO implement this function
}

my @a = (10, 20, 30);
# should return 70
sum_with_init_value(10, @a);



sub add_three_numbers {
	my ($first, $second, $third) = @_;
}



sub sum_of_digits {
# All input arguments are passed using
# the special variable @_
	my ($number) = @_;
}


sub return_7 {
	return 7;
}

sub PI {
	3.14;
}

my $pi = PI();
my $seven = return_7();


sub hello {
	print "****************\n";
	print "*    Hello !!! *\n";
	print "****************\n";
}



hello();
hello();
hello();

