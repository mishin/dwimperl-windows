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
use Clipboard;
my $END_STRING = 'endEndENDenDend';
my $should_quit = 0;
my $prev = Clipboard->paste;
my $total = '';
warn "To exit, hit ^C, or copy this string into the clipboard: $END_STRING\n";
$SIG{INT} = sub { $should_quit = 1 };
while (1) {
    my $cur = Clipboard->paste;
    $should_quit = 1 if $cur eq $END_STRING;
    last if $should_quit;
    if ($prev ne $cur) {
        print $cur, ' ';
        $total .= $cur . ' ';
    }
    $prev = $cur;
}
END {
    Clipboard->copy($total);
    print "\nClipboard accumulated.\n";
}

=head1 NAME

clipaccumulate - Make a bunch of little clipboards into one big one.

=head1 USAGE

The first thing it says (which goes to STDERR, so you can redirect into a file
if you want), is how to exit, which is by copying the magic "end" string into
the clipboard.  Crufty?  Yep.  You can still do Ctrl+C if you don't like this
(or if the string scrolls off the top of the screen).

The next thing it does is wait for the clipboard to change, at which point it
will print out the new data and go back to waiting for the clipboard to
change.

Then you copy the exit string, and it will fill the clipboard with all the
little pieces it saw along the way.

(Right now, it just joins everything with spaces in between - is this bugging
anyone?)

=head1 MOTIVATION

Hard to explain.  I run into cases where I wanted to make a bunch of small
notes that included all these different bits of info.  Instead of jotting them
down on a scrap of paper, I made this.

Let me know how it can be made better.

=head1 AUTHOR

Ryan King <rking@panoptic.com>

=head1 COPYRIGHT

Copyright (c) 2010.  Ryan King.  All rights reserved.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

See L<http://www.perl.com/perl/misc/Artistic.html>

__END__
:endofperl
