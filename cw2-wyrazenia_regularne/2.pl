#!/usr/bin/env perl
#
# Napisz program, który wypisuje każdy wiersz z danych
# wejściowych, zawierający słowo perl. Pozostałe linie powinny
# być ignorowane.
# Zmodyfikuj program nr 1, aby znajdował również słowo Perl.
#
use 5.010;
use strict;
use warnings;

while(<>) {
	if(/perl/i){ # użyty modyfikator 'i'
		print;
	}
}
