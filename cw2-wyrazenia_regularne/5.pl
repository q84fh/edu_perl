#!/usr/bin/env perl
# 
# Napisz program wypisujący każdy wiersz z danymi
# wejściowymi, który zawiera zarówno słowo altkom, jak i perl.
#
use 5.010;
use strict;
use warnings;

while(<>) {
	if(/\b(altcom|perl)\b/){
		print;
	}
}
