#! /usr/bin/perl 
use strict;

&parsepath(@ARGV);

sub parsepath
{
	my @files=@_;
	my $size = @files;
	my $file; 	
	while($size>0)
	{
		$file=pop(@files);
		&readreverse($file);
		$size--;
	}
}

sub readreverse

{
	my $file=shift(@_);
	my @lines;
	open(handler,"<$file");
	while(<handler>)
	{
		unshift(@lines,$_);
	}	
	close handler;
	print @lines;
}
