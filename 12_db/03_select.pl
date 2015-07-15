use strict;
use warnings;
use v5.08;

use DBI;

# open my $fh, '<', 'query.sql';
# my @sql = <$fh>;
# my $sql = join(" ", @sql);
# close $fh;


my $dbh = DBI->connect("dbi:SQLite:dbname=test.db");
$dbh->{RaiseError} = 1;
$dbh->{AutoCommit} = 0;


my $sth = $dbh->prepare('SELECT x, y FROM test');
$sth->execute;

while (my $next = $sth->fetch) {
	my ($x, $y) = @$next;
	print "X = $x, Y = $y\n";
}


