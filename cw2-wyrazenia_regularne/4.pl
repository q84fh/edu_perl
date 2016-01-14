#!/usr/bin/env perl
#
# Utwórz program wypisujący każdy wiersz zawierający słowo
# zaczynające się wielką literą. Słowo nie może jednak składać
# się z SAMYCH dużych liter.
#
use 5.010;
use strict;
use warnings;

while(<>) {
	if(/\b[A-Z]+[a-z]/){
		print;
	}
}
