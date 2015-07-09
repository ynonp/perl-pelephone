use v5.08;
use strict;
use warnings;

###########
# 1. Comments
# 2. Variables
# 3. If
# 4. Loops
# 5. Documentation
#
# Elvis has left the building
# Turn left at the next building

my $global = 10;

{
	my $name = "ynon";
	my $number = 10;

	print "Hello! My name is $name\n";
	$number = "twenty five";

	my $x = "10";
	my $y = 20;

	my $z = $x + $y;
	$z =    ($x . $y) + 5;
}

# Create a new random number between 0 and 1
{
	my $x = rand();
	my $y = rand() * 100;
	my $z = int(rand() * 100);

	print "x = $x, y = $y, z = $z\n";
}

{
	for ( my $i=0 ; $i < 10; $i++ ) {
		# do what you think it does
		# perform loop body 10 times
		# i = 0
		# i = 1
		# i = 2
		# ...
		# i = 9
	}
	my $x = 0;

	while ( $x < 10 ) {
		$x = int(rand(50));
	}
	print "Found: $x\n";

}

{
	my $x = int(rand(50));
	if ( $x % 2 == 0 ) {
		print "x is even\n";
	} else {
		print "x is odd\n";
	}

	if ( -f "/etc/passwd" ) {
		print "/etc/passwd is a file\n";
	}

	if ( 2 < 10 ) {
		print "yes\n";
	}

	if ( "foo" == "bar" ) {
		print "unfortunately, yes...\n";
	}
}
