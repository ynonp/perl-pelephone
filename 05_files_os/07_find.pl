use strict;
use warnings;
use v5.08;
use File::Find;

find(sub {
		# All these commands are executed
		# for each file/directory recursively
		# $_                    -> current file name
		# $File::Find::dir      -> current directory name
		# $File::Find::fullname -> full name to the file
		# $File::Find::name     -> relative name to the file
		#
		# Current working directory is $File::Find::dir

		return if ! -d $_;
		print "\$_ = $_\n";
		print "\$dir = $File::Find::dir\n"; 
		print "\$name = $File::Find::name\n"; 
}, ".");

