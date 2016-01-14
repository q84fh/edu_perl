#!/usr/bin/env perl
# 
# Napisz program wypisujący każdy wiersz z danymi
# wejściowymi, który zawiera zarówno słowo altkom, jak i perl.
# 
# Treść jak wyżej. Wzorzec pasujący do dowolnego słowa
# zakończonego na literę a.
# 
# Zmodyfikuj program 6, aby słowo zakończone literą a było
# umieszczane w pamięci w zmiennej $1.
#
use 5.010;
use strict;
use warnings;

while(<>) {
	if(/(\b[A-Za-z0-9_]+a\b)/){
		printf("%s\n",$1);
	}
}
