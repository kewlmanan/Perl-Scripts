#! /usr/bin/perl 
use strict;
#use warnings;

open (fp,"<fred");

while(<fp>)
{

	if(/(?=.*fred.*)(?=.*wilma.*)/) # matches any input line that has both fred and wilma
	{
		print $_;
		print "\n";
	}

	if(/(\S)\1/) #matches two of same nonwhitespace characters
	{
		print $_;
		print "\n";
	}

	if(/[A-Z][a-z]+/) #matches only one capital letter
	{
		print $_;
		print "\n";
	}
}

close fp;
