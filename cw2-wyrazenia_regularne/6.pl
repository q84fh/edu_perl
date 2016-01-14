#!/usr/bin/env perl
# 
# Napisz program wypisujący każdy wiersz z danymi
# wejściowymi, który zawiera zarówno słowo altkom, jak i perl.
# Treść jak wyżej. Wzorzec pasujący do dowolnego słowa
# zakończonego na literę a.
#
use 5.010;
use strict;
use warnings;

while(<>) {
	if(/\b[A-Za-z0-9_]+a\b/){
		print;
	}
}
