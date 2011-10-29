#! /usr/bin/perl 
use strict;
use warnings;

$^I=".bak";

while(<>)

{
	if(/^#!/)
	{	$_ .="\n Copyright (C) 2011 by kewlmanani \n"; 
	}
	print;
}
