#! /usr/bin/perl 
use strict;
use warnings;


print "Enter the string which you want to match thrice:\n";
chomp(my $what=<STDIN>);
print "Enter the strings\n";
while(<>)
{
	if(/(?:$what){3}/)
	{	
		print " Matched : $`<$&>$'";
	}
	else
	{
		print "No match for $what in : $_";
	}
}
