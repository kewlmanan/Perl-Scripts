#! /usr/bin/perl

use strict;

print "Enter the strings \n";
my @strings = <STDIN>;
@strings = sort @strings;
print "\nOutput\n";

print @strings;
chomp(@strings);

print "@strings"; #Prints contents on the same line

