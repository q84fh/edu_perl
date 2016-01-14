#!/usr/bin/env perl
#
# Utwórz program, który wypisze zawartość przedstawionej poniżej
# tablicy asocjacyjnej posortowanej w kolejności alfabetycznej według
# nazwisk, bez względu na wielkość liter. W przypadku gdy nazwiska
# są identyczne, należy posortować wynik według imion (bez względu
# na wielkość liter). To znaczy dane wyjściowe powinny zawierać
# najpierw imię Adam, a dopiero później Zenon. Wszystkie osoby o
# tym samym nazwisku powinny być zgrupowane razem. Nie należy
# modyfikować danych. Imiona oraz nazwiska powinny być wypisane
# z zachowaniem wielkich i małych liter.
#
# my %last_name = qw{
# 	tomasz nowak anna Nowak Jan Zuba monika zuba
# 	Anna-Maria Zuba PATRYCJA NOWAK
# };
use strict;
use warnings;
my %better_last_name;
my $key = "null";
my $value;
my $counter = 0;
my %last_name = qw{ tomasz nowak anna Nowak Jan Zuba monika zuba Anna-Maria Zuba PATRYCJA NOWAK };
sub comparator { 
	if($better_last_name{$a} cmp $better_last_name{$b}) { return 0; }
	if($better_last_name{$a} > $better_last_name{$b}) { return 1; }
	if($better_last_name{$a} < $better_last_name{$b}) { return -1; }
}

for (%last_name) {
	if($counter % 2 == 0) {
		$value = $_;
	} else {
		$key = $_;
		$better_last_name{$key} = $value;
	}
	$counter = $counter + 1;
}

for (sort comparator keys %better_last_name) {
	printf("%s %s\n",$_, $better_last_name{$_});
}
