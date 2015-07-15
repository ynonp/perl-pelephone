use strict;
use warnings;
use v5.08;
use Data::Dumper;

my $a_ref = [10, 20, 30];

my $game = [
	[' ', ' ', 'o'],
	[' ', ' ', 'o'],
	[' ', ' ', ' '],
];


my %details = (
	name   => 'ynon',
	emails => [ 'ynon@ynonperek.com', 'ynonperek@gmail.com' ]
);


print Dumper(\%details);

my $emails_ref = $details{emails};
my @emails = @$emails_ref;

$details{emails}->[0];
$details{emails}->[1];


my $email_count = @{ $details{emails} };

