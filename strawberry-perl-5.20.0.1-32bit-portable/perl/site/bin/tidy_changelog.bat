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

use CPAN::Changes;

use Getopt::Long qw(GetOptions);
use Pod::Usage   qw(pod2usage);

GetOptions( \my %opt,
   'next!',
   'token:s',
   'headers!',
   'reverse',
   'check',
   'help',
) or pod2usage( -verbose => 2 );
pod2usage( -verbose => 2 ) if $opt{help};

$opt{token} ||= qr/\{\{\$NEXT\}\}/;

my $changelog = shift;

unless ( $changelog ) {
    # try to guess it
    opendir my $dir, '.';
    my @files = grep { -f $_ and /^change/i } readdir $dir;
    die "changelog not provided and couldn't be guessed\n"
        unless @files == 1;

    $changelog = shift @files;
    warn "changelog not provided, guessing '$changelog'\n\n";
}

if ($opt{check}) {
    require Test::CPAN::Changes;
    require Test::More;
    Test::CPAN::Changes::changes_file_ok();
    exit;
}

my $changes = CPAN::Changes->load(
    $changelog,
    ( next_token => $opt{token} ) x $opt{next},
);

if( $opt{headers} ) {
    $_->clear_changes for $changes->releases;
}

print $changes->serialize(
    reverse => $opt{reverse},
);

__END__

=head1 NAME

tidy_changelog - command-line tool for CPAN::Changes

=head1 SYNOPSIS

    $ tidy_changelog Changelog

=head1 DESCRIPTION

Takes a changelog file, parse it using L<CPAN::Changes> and prints out
the resulting output.  If a file is not given, the program will see if
there is one file in the current directory beginning by 'change'
(case-insensitive) and, if so, assume it to be the changelog.

=head1 ARGUMENTS

=head2 --next

If provided, assumes that there is a placeholder
header for an upcoming next release. The placeholder token
is given via I<--token>.

=head2 --token

Regular expression to use to detect the token for an upcoming
release if I<--next> is used. If not explicitly given, defaults
to C<\{\{\$NEXT\}\}>.

=head2 --headers

If given, only print out the release header lines, without any of the
changes.

=head2 --reverse

Prints the releases in reverse order (from the oldest to latest).


=head2 --check

Only check if the changelog is formatted properly using the changes_file_ok
function of L<Test::CPAN::Changes>.


=head2 --help

This help


__END__
:endofperl
