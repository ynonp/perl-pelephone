use strict;
use warnings;
use v5.08;
use DBI;

# Connects to a DB
# Connection string is made of 3 parts:
# It starts with "dbi", then a driver name, and
# then driver parameters
my $dbh = DBI->connect("dbi:SQLite:dbname=test.db");

# RaiseError causes DBI to die when
# something doesn't work
$dbh->{RaiseError} = 1;

$dbh->do('CREATE TABLE test(x number, y number)');
$dbh->do('INSERT INTO test(x, y) values(10, 20)');

