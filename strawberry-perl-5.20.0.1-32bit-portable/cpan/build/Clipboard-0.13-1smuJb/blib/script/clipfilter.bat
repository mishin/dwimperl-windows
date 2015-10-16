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
my %methods = (
    -html => sub { require CGI; CGI::escapeHTML($_[0]) },
    -uri => sub { require URI::Escape; URI::Escape::uri_escape($_[0]) },
);

my $result = filter($ARGV[0], Clipboard->paste);
Clipboard->copy($result);
print $result, "\n... is now in the clipboard.\n";

sub filter {
    my ($method, $data) = @_;
    if (exists $methods{$method}) {
        return $methods{$method}->($data);
    } else {
        require IPC::Open2;
        my ($child_out, $child_in);
        my $cmd_text = join ' ', @ARGV; # just for error message output
        my $pid = IPC::Open2::open2($child_out, $child_in, @ARGV)
            or die "Couldn't open pipe to `$cmd_text`: $!";

        print $child_in $data or die "Couldn't write to `$cmd_text`: $?";
        close $child_in or die "Couldn't close 'in' for `$cmd_text`: $?";
        my $ret = join '', <$child_out>; # Hrmm... error handling?
        close $child_out or die "Couldn't close 'out' for `$cmd_text`: $?";

        waitpid($pid, 0);
        die "Child error for `$cmd_text`: $?" if $? >> 8;
        return $ret;
    }
}

=head1 NAME

clipfilter - Run various conversions for your clipboard data.

=head1 USAGE

    # (copy some stuff)
    $ clipfilter -html
    # (paste, with html entities substituted in)
    
    # or URI-escaping:
    $ clipfilter -uri

    # or pipe through an arbitrary program, like `tac`, the backwards cat:
    $ clipfilter tac
    # Note: currently, this just dumps everything to open2() and reads
    # everything back. It could possibly create a deadlock, but I haven't
    # found the case that causes this, yet.

=head1 MOTIVATION

A very frequent user pattern is to copy something, edit it in some rote way,
and then paste it back. Writing your own filter scripts will make it even more
useful.

=head1 BUGS

Current weirdness when piping this to some programs, like 'wc' and 'tail'.
I will work on this.

=head1 AUTHOR

Ryan King <rking@panoptic.com>

=head1 COPYRIGHT

Copyright (c) 2010.  Ryan King.  All rights reserved.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

See L<http://www.perl.com/perl/misc/Artistic.html>

__END__
:endofperl
