#!/usr/bin/env perl
#
# Napisz program, który wczytuje listę liczb i dokonuje jej
# sortowania numerycznego, wypisując rezultat tej operacji w
# kolumnie wyrównanej do prawej strony. Utworzony program
# wypróbuj, korzystając z przedstawionych poniżej danych
# przykładowych:
# 17 1000 04 1.50 3.14159 -10 1.5 4 2001 90210 666
#
use strict;
use warnings;
use Scalar::Util qw(looks_like_number);

my @lista;

while(<>) {
	chomp $_;
	if( looks_like_number($_) ) {
		push @lista, $_;
	}
}
for (sort { $a <=> $b } @lista) {
	printf("%25f\n",$_);
}

