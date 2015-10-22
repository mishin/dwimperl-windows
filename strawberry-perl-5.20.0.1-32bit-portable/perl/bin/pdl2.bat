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
#!/usr/bin/env perl
#line 29

BEGIN {
   $ENV{DEVEL_REPL_PROFILE} = 'PDL::Perldl2::Profile::Perldl2';

   # This should be based on 
   $HOME = $ENV{HOME};             # Useful in shell
   if ($^O =~ /win32/i and
      (! defined($HOME)) or
      (defined($HOME) and $HOME eq "")) {
      $HOME = $ENV{USERPROFILE};
      $HOME =~ s/\\/\//g;
   }

   $ENV{PERLREPL_HISTFILE} = "$HOME/.perldl_hist";
   $ENV{PERLREPL_HISTLEN} = 500;
}

BEGIN {
   my $minversion = "1.003011";
   eval " use Devel::REPL $minversion ";
   if ($@) {
      my ($perldl) = $0;
      $perldl =~ s/pdl2$/perldl/;
      warn "pdl2: Devel::REPL version $minversion not found, running '$perldl' instead...\n";
      do $perldl;
      warn "pdl2: could not 'do $perldl'\n";
      $perldl =~ s{^[^/\\]*[/\\]}{};
      do $perldl;
      die "pdl2: could not 'do $perldl'\n";
   }
}

use PDL::Perldl2::Script 'run';

__END__

=head1 NAME

pdl2 - Simple shell (version 2) for PDL

=head1 SYNOPSIS

Use PDL interactively:

  %> pdl2

  pdl> $a = sequence(10)  # or any other perl or PDL command
  
  pdl> print "\$a = $a\n"; 
  $a = [0 1 2 3 4 5 6 7 8 9]

=head1 DESCRIPTION

The C<pdl2> program, also known as the Perldl2 shell, is a second
generation version of the original C<perldl> interactive PDL shell.
It attempts to be backward compatible in usage while providing
improved features, better support for Perl syntax, and an more
easily extended framework based on the L<Devel::REPL|Devel::REPL> shell.

If you have L<Devel::REPL|Devel::REPL> version 1.003011 or later, then C<pdl2>
will start with full functionality.  If L<Devel::REPL|Devel::REPL> is not
installed or found then C<pdl2> will print a warning and run
the legacy C<perldl> shell command instead.

By default, command lines beginning with the default prompt
of either C<pdl2> or C<perldl> (one of 'pdl> ', 'PDL> ', or
'perldl> ') will have the prefix string and surrounding
whitespace stripped.  This allows for easy cut-and-paste
from sample PDL shell sessions or other examples into another
PDL shell session.

=head1 FUNCTIONS

=head2 do_print

=for ref

Toggle print-by-default on and off (default value: off)

By default, C<pdl2> does not print the results of operations
since the results can be very large (e.g., a small 640x480
RGBA image is still more than 1_000_000 elements).  However,
for experimenting and debugging more complex structures,
it helps to see the results of I<every> operation.  The
C<do_print> routine allows you to toggle between the default
"quiet" operation and a full Read, Evaluate, Loop style.

=for example

  pdl> $a = pdl(3,2)

  pdl> do_print
  1
  pdl> $a = pdl(3,2)
  $PDL1 = [3 2];
  pdl> do_print

  pdl> $a = pdl(3,2)

=head1 VARIABLES

=over 4

=item $PDL::toolongtoprint

The maximal size pdls to print (defaults to 10000 elements).
This is not just a C<perldl> or C<pdl2> variable but it is
something that is usually needed in an interactive debugging
session.

=back

=head1 SEE ALSO

L<perldl>, L<Devel::REPL>

=cut

__END__
:endofperl
