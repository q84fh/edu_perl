#!/usr/bin/env perl
#
use 5.010;
use strict;
use warnings;

while(<>) {
	if(/(\b[A-Za-z0-9_]+a\b)/){
		printf("%s\n",$1);
	}
}
