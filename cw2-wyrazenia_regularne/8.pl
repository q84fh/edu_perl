#!/usr/bin/env perl
#
# Napisz program tworzący zmodyfikowaną kopię pliku
# tekstowego. Każdy wiersz w kopii zawierający łańcuch Adam
# (wielkość liter nie jest znacząca) powinien zostać zastąpiony
# wyrazem Zenon. Nazwa pliku wyjściowego powinna mieć
# rozszerzenie .out.
#
use 5.010;
use strict;
use warnings;

while(<>) {
	if(/(\b[A-Za-z0-9_]+a\b)/){
		printf("%s\n",$1);
	}
}
