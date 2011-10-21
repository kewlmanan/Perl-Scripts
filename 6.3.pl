#! /usr/bin/perl 
use strict;
use warnings;

&main;

sub main
{
	my $key="University";
	my $val="UC Irvine";
	&print;
	&add($key,$val);
	&print;
}

sub print{

foreach ( sort keys %ENV)
{	
	my $keylen= length($_);
	my $vallen= length($ENV{$_});

	print " $_ ----  $ENV{$_} \n";

#	print"keylen = $keylen and vallen = $vallen\n";
}
}

sub add
{
	$ENV{$_[0]}=$_[1];
}

=for comment
sub xyz
{

my ($ref1,$ref2)=@_;


foreach (@{$ref1})
{
	$keylen = length ($_)
	$vallen = 
}
foreach (@{$ref2})
{
	$vallen = length ($_)


}

=cut
