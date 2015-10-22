@rem = '--*-Perl-*--
@echo off
if "%OS%" == "Windows_NT" goto WinNT
perl -x -S "%0" %1 %2 %3 %4 %5 %6 %7 %8 %9
goto endofperl
:WinNT
perl -x -S %0 %*
if NOT "%COMSPEC%" == "%SystemRoot%\system32\cmd.exe" goto endofperl
if %errorlevel% == 9009 echo You do not have Perl in your PATH.
if errorlevel 1 goto script_failed_so_exit_with_non_zero_val 2>nul
goto endofperl
@rem ';
#!C:\Users\TOSH\Documents\job\perl\strawberry-perl-5.20.0.1-32bit-PDL\perl\bin\perl.exe 
#line 15
# $Id: stemmer.pl,v 1.1 2007/05/07 11:35:25 ask Exp $
# $Source: /opt/CVS/NoSnowball/examples/stemmer.pl,v $
# $Author: ask $
# $HeadURL$
# $Revision: 1.1 $
# $Date: 2007/05/07 11:35:25 $
use strict;
use warnings;
use Lingua::Stem::Snowball::No;
use vars qw($VERSION);
$VERSION = 1.2;

my $stemmer = Lingua::Stem::Snowball::No->new(use_cache => 1);
while (my $line = <>) {
	chomp $line;
	foreach my $word ((split m/\s+/xms, $line)) {
		my $stemmed = $stemmer->stem($word);
		print "$stemmed\n";
	}
}

__END__
:endofperl
