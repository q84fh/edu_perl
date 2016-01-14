#!/usr/bin/env perl
# 
# Utwórz program wczytujący z wiersza poleceń listę plików oraz
# podający o każdym pliku informacje, czy jest on możliwy do
# odczytu, zapisu, wykonania lub nie istnieje.
#
use warnings;
use strict;

foreach my $argnum (0 .. $#ARGV) {
	my $filename = $ARGV[$argnum];
	stat($filename);

	printf("%s not exists\n",$filename)    if !-e _;
	printf("%s is readable\n",$filename)   if -r _;
	printf("%s is writable\n",$filename)   if -w _;
	printf("%s is executable\n",$filename) if -x _;
	printf("%s has setuid\n",$filename)    if -u _;
	printf("%s has setgid\n",$filename)    if -g _;
	printf("%s has sticky\n",$filename)    if -k _;
	printf("%s is text\n",$filename)       if -T _;
	printf("%s is binary\n",$filename)     if -B _;
}
