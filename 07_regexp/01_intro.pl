use strict;
use warnings;
use v5.08;

# Is text matches regexp?

my $text = 'ynon@ynonperek.com';
my $regexp = qr{\w+@\w+\.\w+};

my $better_re = qr{
# An email address of the form:
# (word)@(word).(suffix)
#
# Examples: ynon@ynonperek.com
# [ ], \s
	\w+  @   \w+  \.   \w+
}x;

if ( $text =~ $regexp ) {
	print "Text $text matches Regexp $regexp\n";
}

my $guess = qr{ \b[a-z] }x;

$text = "Take Me to Your Leader";
my $sentence = "Dark Side Of The Moon";

if ( $sentence !~ $guess ) {
	print "All words in \$sentence start with uppercase letter";
}

