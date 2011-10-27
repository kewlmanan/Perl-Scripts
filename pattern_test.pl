#! /usr/bin/perl 
use strict;
use warnings;

while(<>)
{
	chomp;
	if(/\b[a-zA-Z]+a\b/)
	{
		print "Matched |$`<$&>$'|\n";	
	}
	else
	{
		print "|$_| Did not match\n";
	}
}
