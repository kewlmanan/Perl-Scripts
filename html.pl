#Perl script that matches an html tag

#!/usr/bin/perl 
use strict;
use warnings;

while(chomp($_=<STDIN>))
{
	if( m/^<([a-z]+)[^>]*(?:>.*<\/\1>|\s+\/>)$/ )
	{
		print "Valid html\n";
	}

	else
	{
		print "Invalid html\n";
	}
}

