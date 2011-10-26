#! /usr/sbin/perl 

# Born out of my laziness!
# This script will make a new .pl file for you with basic headers in it 
# and also give it  the appropriate permission for it to run !

# USAGE : perl m.pl filename

use strict;

if( $#ARGV != 0)
{
	die " Correct usage is : perl m.pl filename \n Program stopped";
}


if ( -e $ARGV[0])
{
	die " File already exists \n";
}

my $filename=$ARGV[0].".pl";

open(handler,">$filename");

print handler "#! /usr/bin/perl \n";
print handler "use strict;\n";
print handler "use warnings;";

close (handler);
`chmod +x $filename`; 
