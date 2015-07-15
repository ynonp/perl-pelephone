use strict;
use warnings;
use v5.08;

sub sum_firsts {
}

my @a = (10, 20, 30, 40);
my $x = 7;
my %h = ( a => '@', e => '3', t => '7' );

# Create a reference
my $a_ref = \@a;
my $x_ref = \$x;
my $h_ref = \%h;

# Dereference (go back to the "thing")
push @$a_ref, 10;

foreach my $num (@$a_ref) {
	print "Num = $num\n";
}

splice @$a_ref, 2, 3;

@$a_ref
$$a_ref[0];





print "Array = ", @$a_ref, "\n";

print "a_ref points to a: ", ref($a_ref), "\n";












