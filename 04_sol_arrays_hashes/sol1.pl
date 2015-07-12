use strict;
use warnings;
use v5.08;

my %saved_password = (
	apple   => 'red',
	lettuce => 'green',
	lemon   => 'yellow',
	orange  => 'orange',
);

print "Who are you? ";
my $user = <>;
chomp $user;

print "What's the password? ";
chomp(my $password = <>);

if ( exists $saved_password{$user} ) {
	if ( $saved_password{$user} eq $password ) {
		print "Welcome, master\n";	
	}
}


