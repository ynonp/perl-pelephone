use strict;
use warnings;
use v5.08;
use DBI;

sub generate_data {
	my $dbh = DBI->connect("dbi:SQLite:dbname=lab.db");
	my $sth = $dbh->prepare('INSERT INTO users VALUES(?, ?)');

	while(<DATA>) {
		chomp;
		my ($name, $email) = split;
		next if ! $email;

		$sth->execute($name, $email);
	}
}

sub add_to_file {
	my ($filename, $name, $email) = @_;
	open my $fh, ">>", $filename or die $!;
	print $fh "$email, $name\n";
	close $fh;
}

sub extract_data {
	my $dbh = DBI->connect("dbi:SQLite:dbname=lab.db");
	my $sth = $dbh->prepare('SELECT name, email FROM users');
	$sth->execute();

	while (my $next = $sth->fetch) {
		my ($name, $email) = @$next;

		my (undef, $filename) = split "@", $email;
		add_to_file($filename, $name, $email);
	}
}

extract_data();



__DATA__
bob bob@gmail.com
jane jane@gmail.com
marry marry@yahoo.com
bill bill@yahoo.com

