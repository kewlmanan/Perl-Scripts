#! /usr/sbin/perl 

use strict;

if( $#ARGV != 0)
{
	die " Correct usage is : perl m.pl filename \n Program stopped";
}


if ( -e $ARGV[0])
{
	die " File already exists \n";
}

open(handler,">$ARGV[0]");

print handler "#! /usr/bin/perl \n";
print handler "use strict;";

close (handler);
`chmod +x $ARGV[0]`; 
