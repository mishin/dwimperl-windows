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
#!c:\Users\TOSH\Documents\job\perl\strawberry-perl-5.20.0.1-32bit-PDL\perl\bin\perl.exe 
#line 15
use strict;
use Dist::Milla::App;

Dist::Milla::App->run;

__END__

=head1 NAME

milla - wrapper for Milla profile

=head1 DESCRIPTION

C<milla> is a command line wrapper for L<Dist::Milla>. It's a wrapper
for C<dzil>, but with overriding default arguments for some commands
such as C<new>, C<release> and C<install>.

Specifically:

=over 4

=item *

C<milla new> is equivalent to C<dzil new -P Milla>

=item *

C<milla install> is equivalent to C<dzil install --install-command="cpanm .">

=item *

C<milla release> is equivalent to C<DZIL_CONFIRMRELEASE_DEFAULT=1 dzil release>

=back

Other commands would behave exactly the same as C<dzil>.

=cut


__END__
:endofperl
