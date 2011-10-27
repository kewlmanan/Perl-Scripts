#! /usr/bin/perl 
use strict;
use warnings;

while(<>)
{
	chomp;
	if(/(\b\w*a\b)(.{0,5})/)  #using named captures in regex
	{
		print "Matched |$`<$&>$'|\n";	
		print "$1 followed by $2\n";
	}
	else
	{
		print "|$_| Did not match\n";
	}
}
