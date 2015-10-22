@rem = '--*-Perl-*--
@echo off
if "%OS%" == "Windows_NT" goto WinNT
IF EXIST "%~dp0perl.exe" (
"%~dp0perl.exe" -x -S "%0" %1 %2 %3 %4 %5 %6 %7 %8 %9
) ELSE IF EXIST "%~dp0..\..\bin\perl.exe" (
"%~dp0..\..\bin\perl.exe" -x -S "%0" %1 %2 %3 %4 %5 %6 %7 %8 %9
) ELSE (
perl -x -S "%0" %1 %2 %3 %4 %5 %6 %7 %8 %9
)

goto endofperl
:WinNT
IF EXIST "%~dp0perl.exe" (
"%~dp0perl.exe" -x -S %0 %*
) ELSE IF EXIST "%~dp0..\..\bin\perl.exe" (
"%~dp0..\..\bin\perl.exe" -x -S %0 %*
) ELSE (
perl -x -S %0 %*
)

if NOT "%COMSPEC%" == "%SystemRoot%\system32\cmd.exe" goto endofperl
if %errorlevel% == 9009 echo You do not have Perl in your PATH.
if errorlevel 1 goto script_failed_so_exit_with_non_zero_val 2>nul
goto endofperl
@rem ';
#!perl
#line 29
    eval 'exec perl -S $0 "$@"'
        if 0;

use strict;
$|++;

use PDL::Config;

BEGIN {
   if ( not $PDL::Config{PDLDOC_IGNORE_AUTOLOADER} ) {
      require PDL::AutoLoader;
   }
}

use PDL::Doc::Perldl;
use File::Basename;

use vars qw( $VERSION );
$VERSION = '0.3';

my $bvalflag = $PDL::Config{WITH_BADVAL} || 0;

my %options = 
    ( a => \&apropos, 
      b => \&badinfo,
      h => \&help, s => \&sig, u => \&usage );

my $name = basename( $0 );
my $usage = <<"EOH";
Usage: $name [-a] [-b] [-h] [-s] [-u] <string>

This program provides command-line access to the PDL documentation.
If no flag is specified, -h is assumed.

  -a (apropos) searches the documentation for the string
  -b (badinfo) does the function support bad values?
  -h (help)    prints the help for the function/module/document
  -s (sig)     prints the signature of the function
  -u (usage)   gives usage information on the function

EOH

my $oflag = $#ARGV > -1 ? substr($ARGV[0],0,1) eq "-" : 0;
die $usage unless ($#ARGV == 0 and not $oflag) or ($#ARGV == 1 and $oflag);

my $option = "h";
if ( $oflag ) {
    $option = substr($ARGV[0],1,1);
    die $usage unless exists $options{$option};
    shift @ARGV;
}

&{$options{$option}}( $ARGV[0] );

exit;

__END__

=head1 NAME

pdldoc - shell interface to PDL documentation

=head1 SYNOPSIS

B<pdldoc> <text>

=cut

B<pdldoc> [B<-a>] [B<-b>] [B<-h>] [B<-s>] [B<-u>] <text>

=head1 DESCRIPTION

The aim of B<pdldoc> is to provide the same functionality
as the C<apropos>, C<help>, C<sig>, 

=cut

C<badinfo>, 
and C<usage> commands available in the L<perldl|PDL::perldl>
and L<pdl2|pdl2> shells.

Think of it as the PDL equivalent of C<perldoc -f>.

=head1 OPTIONS

=over 5

=item B<-h> help

print documentation about a PDL function or module or show a PDL manual.
This is the default option.

=item B<-a> apropos

Regex search PDL documentation database.

=cut

=item B<-b> badinfo

Information on the support for bad values provided by the function.

=cut

=item B<-s> sig

prints signature of PDL function.

=item B<-u> usage

Prints usage information for a PDL function.

=item C<$PDL::Config{PDLDOC_IGNORE_AUTOLOADER}>

This PDL configuration variable may be set in the perldl.conf
file to disable runtime search for documentation in
L<PDL::AutoLoader|PDL::AutoLoader> files.

=back

=head1 VERSION

This is pdldoc version 0.3.

=head1 AUTHOR

Doug Burke <burke at ifa dot hawaii dot edu>.
Chris Marshall <chm at cpan dot org>.

=cut


__END__
:endofperl