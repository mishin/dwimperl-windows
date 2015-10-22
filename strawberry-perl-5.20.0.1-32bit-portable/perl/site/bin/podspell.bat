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
use warnings;
use Pod::Spell;

our $VERSION = '1.17'; # VERSION

if(@ARGV) {  # iterate over files, sending to STDOUT
  foreach my $x (@ARGV) {
    Pod::Spell->new->parse_from_file($x, '-');
  }
} else {     # take from STDIN, send to STDOUT
  Pod::Spell->new->parse_from_filehandle();
}

# ABSTRACT: pod spell checking command line interface
# PODNAME: podspell

__END__

=pod

=encoding UTF-8

=head1 NAME

podspell - pod spell checking command line interface

=head1 VERSION

version 1.17

=head1 SYNOPSIS

	% podspell Thing.pm | ispell

=head1 BUGS

Please report any bugs or feature requests on the bugtracker website
https://github.com/xenoterracide/pod-spell/issues

When submitting a bug or request, please include a test-file or a
patch to an existing test-file that illustrates the bug or desired
feature.

=head1 AUTHORS

=over 4

=item *

Sean M. Burke <sburke@cpan.org>

=item *

Caleb Cushing <xenoterracide@gmail.com>

=back

=head1 COPYRIGHT AND LICENSE

This software is Copyright (c) 2015 by Caleb Cushing.

This is free software, licensed under:

  The Artistic License 2.0 (GPL Compatible)

=cut

__END__
:endofperl
