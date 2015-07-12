use strict;
use warnings;
use v5.08;

while(<DATA>) {
	chomp;
	my ($name, $last, $email) = split /\s*,\s*/;
	print "$last, $name, $email\n";
}

__DATA__
Shana  ,  Sargent  , shanasargent@isoswitch.com
Witt,Hampton,  witthampton@zaphire.com
Morgan,Grant,morgangrant@lotron.com
