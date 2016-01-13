#!/usr/bin/env perl
# Ćwiczenie 1
# Napisz program, który wypisuje każdy wiersz z danych
# wejściowych, zawierający słowo perl. Pozostałe linie powinny
# być ignorowane.
#
use 5.010;
use strict;
use warnings;

while(<>) {
	if(/perl/){
		print;
	}
}
