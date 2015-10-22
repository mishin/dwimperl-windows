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
#!/usr/local/perl5.002_01/bin/perl
#line 29

use strict;
use Convert::UU 'uudecode';
die "Usage: $0 file\n" unless @ARGV==1;
open F, $ARGV[0] or die "Couldn't open $ARGV[0]: $!";
my($uudecoded_string,$file,$mode) = uudecode(\*F);
open F, ">$file" or die "Can't open >$file: $!";
binmode(F);
print F $uudecoded_string;
close F;
chmod oct($mode), $file;

__END__

=head1 NAME

 puudecode - perl replacement for uudecode

=head1 SYNOPSIS

 puudecode inputfile

=head1 DESCRIPTION

Uudecode reads a uuencoded inputfile and writes the decoded string to
the file named in the uuencoded string. It changes the permissions to
the mode given in the uuencoded string.

=head1 BUGS

This implementation is much slower than most uudecode programs written
in C. Its primary intention is to allow quick testing of the
underlying Convert::UU module.

=head1 SEE ALSO

puuencode(1), Convert::UU(3)

=head1 AUTHOR

Andreas Koenig E<lt>andreas.koenig@anima.deE<gt>

=cut

__END__
:endofperl
