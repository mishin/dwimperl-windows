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
#!/usr/bin/perl
#line 29

use strict;
use Convert::UU 'uuencode';
my($file,$as_file) = @ARGV;
$as_file ||= $file;
my $stat = (stat $file)[2] or die "Couln't stat $file: $!";
my($mode) = sprintf "%04o", $stat & 07777;
open F, $file or die "Couldn't open $file: $!";
binmode(F);
print uuencode(\*F,$as_file,$mode);
close F;

__END__

=head1 NAME

 puuencode - perl replacement for uuencode

=head1 SYNOPSIS

 puuencode inputfile as_outputfile

=head1 DESCRIPTION

Puuencode reads the inputfile and writes a printable version of it to
STDOUT in uuencoded style. Nothing fancy, just a simple uuencode
replacement.

=head1 BUGS

This implementation is much slower than most uuencode programs written
in C. Its primary intention is to allow quick testing of the
underlying Convert::UU module.

=head1 SEE ALSO

puudecode(1), Convert::UU(3)

=head1 AUTHOR

Andreas Koenig E<lt>andreas.koenig@mind.deE<gt>

=cut

__END__
:endofperl
