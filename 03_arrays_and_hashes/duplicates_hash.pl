use strict;
use warnings;
use v5.08;

my %color = (
	red   => 10,
	blue  => 20,
	green => 30,
);

# Change value of "red"
$color{red} = 99;

print $color{red}, "\n";

