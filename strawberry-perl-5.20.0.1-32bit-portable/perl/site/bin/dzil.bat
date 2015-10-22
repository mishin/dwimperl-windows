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
package
  dzil;
use Dist::Zilla::App;
# Let dzil --version know what to report:
$main::VERSION = $Dist::Zilla::App::VERSION;

# PODNAME:  dzil
# ABSTRACT: do stuff with your dist
Dist::Zilla::App->run;

#pod =head1 OVERVIEW
#pod
#pod For help with Dist::Zilla, start with http://dzil.org/ or by running "dzil
#pod commands"
#pod
#pod =cut

__END__

=pod

=encoding UTF-8

=head1 NAME

dzil - do stuff with your dist

=head1 VERSION

version 5.037

=head1 OVERVIEW

For help with Dist::Zilla, start with http://dzil.org/ or by running "dzil
commands"

=head1 AUTHOR

Ricardo SIGNES <rjbs@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2015 by Ricardo SIGNES.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

__END__
:endofperl
