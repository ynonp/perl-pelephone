use strict;
use warnings;
use v5.08;
use List::Util 'sum';

sub diff_sum {
	my ($a_ref, $b_ref) = @_;	
	sum(@$a_ref) - sum(@$b_ref);
}

sub add_to_hash {
	my ($h_ref, $k, $v) = @_;
	$h_ref->{$k} = $v;
}


my @a = (10, 20, 30);
my @b = (10, 20, 25);

my $diff = diff_sum(\@a, \@b);
print "$diff == 5\n";

my %h = ('a', 10, 'b', 20);
add_to_Hash(\%h, 'c', 30);
add_to_Hash(\%h,  c => 30);

