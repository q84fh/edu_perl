#!/usr/bin/env perl
#
use 5.010;
use strict;
use warnings;

while(<>) {
	if(/\b[A-Z]+[a-z]/){
		print;
	}
}
