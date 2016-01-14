#!/usr/bin/env perl
# 
# Utwórz program, który zapyta użytkownika o nazwę katalogu i
# zmieni na ten katalog obecny katalog bieżący. W przypadku
# gdy użytkownik wprowadzi wiersz, który nie zawiera nic więcej
# poza białymi znakami, program powinien zmienić katalog na
# katalog domowy użytkownika. Po dokonaniu zmiany program
# powinien wyświetlić zawartość katalogu (lecz pominąć
# elementy, których nazwy zaczynają się od kropki). Zawartość
# powinna być wyświetlona w kolejności alfabetycznej. W
# przypadku gdy zmiana katalogu nie powiedzie się, należy
# zawiadomić o tym użytkownika, lecz program nie powinien
# wyświetlać zawartości katalogu.
#
use strict;
use warnings;
use Cwd;

my $input = <STDIN>;
chop($input);
if($input eq "") {
	$input = $ENV{"HOME"};
}
chdir($input) || die "Katalogu nie ma!~";
printf("a_dir: %s\n",cwd());

opendir(my $dh, cwd()) || die;
for (sort <*>) {
	if($_ !~ /^\..*/) {
		printf("%s/%s\n", cwd(),$_);
	}
}
closedir $dh;
