#! /usr/bin/perl 
use strict;
use warnings;

while(<>)
{
	chomp;
	if(/\b(?<word>[a-zA-Z]+a)\b/)  #using named captures in regex
	{
		my $label="word";
		print "Matched |$`<$&>$'|\n";	
	#	print " \'$1\' ";
		print "\n \'$label\'contains \'$+{$label}\'";
	}
	else
	{
		print "|$_| Did not match\n";
	}
}
