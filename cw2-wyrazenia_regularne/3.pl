#!/usr/bin/env perl
#
# Napisz program, wypisujący ze swoich danych wejściowych
# każdy wiersz zawierający kropkę, a ignorujący pozostałe linie.
#
use 5.010;
use strict;
use warnings;

while(<>) {
	if(/\./){
		print;
	}
}
