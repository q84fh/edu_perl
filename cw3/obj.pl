#!/usr/bin/env perl
package Osoba;
use Moose;

has imie          => ( is => 'rw' );
has nazwisko       => ( is => 'ro' );


$osoba = Osoba->new(imie => "Ala", nazwisko => "Kot");

$osoba->imie("Ela");

print $osoba->imie;
print $osoba->nazwisko;
