#! /usr/bin/perl 
use strict;
use warnings;



my %db;
&read;
&printdb;


sub read
{
	open (handler,"<list");
	while (<handler>)
	{
		&increase($_);		
	}
	close handler;
}

sub increase
{
	my $word = shift(@_);
	my $count;
	if( exists $db{$word})
	{
		$count=$db{$word};
		$count=$count+1;
		$db{$word}=$count;	
	}
	else
	{
		$db{$word}=1;
	}
	
}

sub printdb
{
	foreach $_ (sort keys %db)   #Sorted
	{
		print " $_ was seen $db{$_}  times \n";
	}

	while( my ($word,$count) = each %db)   #Unsorted 
	{
		print " $word was seen $count times \n";
	}
}
