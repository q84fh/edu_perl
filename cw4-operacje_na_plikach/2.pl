#!/usr/bin/env perl
#
# Utwórz program wybierający najstarszy plik z podanych 
# w wierszu poleceń oraz wyświetlający jego wiek w dniach.
#
use strict;
use warnings;
use File::stat;
use Time::localtime;

sub max {
	my $max = $_[0];
	for (@_) {
		if( stat($_)->mtime < stat($max)->mtime ) {
			$max = $_;
		}
	}
	return $max;
}

my $oldest = max(@ARGV);
printf("%s: %f \n", $oldest,( time - stat($oldest)->mtime ) / 86400 );
