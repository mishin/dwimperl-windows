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
package Perl::PrereqScanner::App;
# ABSTRACT: scan your working dir for likely prereqs
$Perl::PrereqScanner::App::VERSION = '1.023';
use strict;
use warnings;

use lib ();

use File::Find;
use List::Util qw{ max };
use Perl::PrereqScanner;
use CPAN::Meta::Requirements ();
use Scalar::Util qw(looks_like_number);

use Getopt::Long::Descriptive;

my ($opt, $usage) = describe_options(
  'scan-perl-prereqs %o [DIR|FILES]',
  [ 'pretty'   => 'format for human consumption, not toolchain' ],
  [ 'by-file'  => 'emit one stanza per file'  ],
  [ 'lib|I=s@' => 'specifies include paths, like perl\'s -I' ],

  [ 'version' => 'print usage message and exit' ],
  [ 'help'    => 'print version and exit' ],
);

lib->import(@{ $opt->lib }) if $opt->lib;

print('scan-perl-prereqs v' . (Perl::PrereqScanner->VERSION || 'DEV') . "\n")
  if $opt->version;
print($usage->text) if $opt->help;
exit if $opt->version or $opt->help;

foreach my $file ( @ARGV ? @ARGV : '.' ) {
    -d $file ? scan_dir( $file ) : scan_file( $file );
}

my %result;

sub scan_dir {
    find( {
        no_chdir => 1,
        wanted => sub { scan_file($_) if /\.(pl|PL|pm|cgi|psgi|t)$/ && -f $_ }
    }, shift );
}

sub scan_file {
    my $file = shift;

    my $key = $opt->by_file ? $file : '';
    $result{ $key } ||= CPAN::Meta::Requirements->new;

    $result{ $key }->add_requirements(
        Perl::PrereqScanner->new->scan_file($file)
    );
}

for my $file (sort keys %result) {
    print "## $file\n" if length $file and keys(%result) > 1;
    print_prereqs($result{$file});
}

sub print_prereqs {
    my $prereqs = shift->as_string_hash;

    if( $opt->pretty ) {
        my $max = max map { length } keys %$prereqs;
        printf( "%-${max}s = %s\n", $_, $prereqs->{$_} )
          for sort keys %$prereqs;
    } else {
        ### FIXME grossly insufficient filtering, should refactor/backport
        ### filtering from Dist::Zilla::Plugin::AutoPrereqs or something
        foreach ( sort keys %$prereqs ) {
            next if $_ eq 'perl';
            my $v = $prereqs->{$_} || 0;
            $v = qq{"$v"} unless looks_like_number($v);
            print($v eq '0' ? qq{$_\n} : qq{$_~$v\n});
        }
    }
}

exit;

#pod =head1 SYNOPSIS
#pod
#pod     scan-perl-prereqs [--by-file] [--pretty] [DIRS | FILES]
#pod
#pod Directories are traversed with L<File::Find> to collect all C<.pl>, C<.pm>,
#pod C<.psgi> and C<.t> files. If no directories or files are specified, the current
#pod working directory is scanned.
#pod
#pod The default is to print a single combined list suitable for piping to C<cpanm>
#pod or similar tools.
#pod
#pod The C<--by-file> switch will print results grouped by the files in which they
#pod were found.
#pod
#pod The C<--pretty> swith will print results in a more human-friendly format, with
#pod names and versions vertically aligned.
#pod
#pod =cut

__END__

=pod

=encoding UTF-8

=head1 NAME

Perl::PrereqScanner::App - scan your working dir for likely prereqs

=head1 VERSION

version 1.023

=head1 SYNOPSIS

    scan-perl-prereqs [--by-file] [--pretty] [DIRS | FILES]

Directories are traversed with L<File::Find> to collect all C<.pl>, C<.pm>,
C<.psgi> and C<.t> files. If no directories or files are specified, the current
working directory is scanned.

The default is to print a single combined list suitable for piping to C<cpanm>
or similar tools.

The C<--by-file> switch will print results grouped by the files in which they
were found.

The C<--pretty> swith will print results in a more human-friendly format, with
names and versions vertically aligned.

=head1 AUTHORS

=over 4

=item *

Jerome Quelin

=item *

Ricardo Signes <rjbs@cpan.org>

=back

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2009 by Jerome Quelin.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

__END__
:endofperl
