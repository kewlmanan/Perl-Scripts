#! /usr/bin/perl 
use strict;
use warnings;

while(<>)
{
	chomp;
	if(/\s$/)  
	{
		print "Matched |$`<$&>$'|";
		print "Line : |$_#|";
	}
	else
	{
		print "|$_| Did not match\n";
	}
}
