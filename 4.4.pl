#! /usr/bin/perl 
use strict;
use 5.010;

my @userlist=();
&greet("fred");
&greet("barney");
&greet("wilma");

=for comment
sub greet
{
	my $user=shift(@_);
	state $last="";
	if( $last ne "" )
	{
		print " Hi $user ! $last is also here \n";
	}
	else
	{
		print " Hi $user ! You are the first one here \n";	
	}
 	$last = $user;
	
}
=cut


sub greet
{
	my $user=shift(@_);
	if( $#userlist < 0 )
	{
		print " Hi $user ! You are the first one here \n";
	}
	else
	{
		print " Hi $user ! I have seen @userlist \n";
	}	

	push(@userlist,$user);
	
}
