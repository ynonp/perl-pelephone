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


# A variable is defined with the keyword
# "my"
# It is scoped to the current block, or
# if defined outside a block - defined
# to the entire file

# The variable $global in the example
# below is scoped to the entire file
my $global = 10;
{
  # Variables in block are scoped to current block
  # A scalar variable in perl can hold both strings
  # and numbers. It is marked with the $ sigil
  my $name = "ynon";
  my $number = 10;

  # prints a line of text (newline must
  # be specified explicitly)
  print "Hello! My name is $name\n";
  $number = "twenty five";

  my $x = "10";
  my $y = 20;

  # In perl the operation defines how to
  # treat its operands:
  # A numeric + treats both operands as numbers
  # A string concatenation . treats both operands
  # as strings
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
