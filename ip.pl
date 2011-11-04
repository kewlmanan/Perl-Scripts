#Perl script that matches an ip address

#! /usr/bin/perl 
use strict;
use warnings;

while(chomp($_=<STDIN>))
{
	if( m/^(?:(?:25[0-5]|2[0-4]\d|[01]?\d?\d)\.){3}(?:25[0-5]|2[0-4]\d|[01]?\d?\d)$/ )
	{
		print "Valid Ip\n";
	}

	else
	{
		print "Invalid Ip\n";
	}
}

