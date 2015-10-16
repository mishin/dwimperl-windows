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

# Copyright 2002-2015, Paul Johnson (paul@pjcj.net)

# This software is free.  It is licensed under the same terms as Perl itself.

# The latest version of this software should be available from my homepage:
# http://www.pjcj.net

use 5.16.0;
use warnings;

our $VERSION = '1.21'; # VERSION

use Devel::Cover::Collection;

use Cwd qw( abs_path cwd );
use Fcntl ":flock";
use Getopt::Long;
use Pod::Usage;

# use Carp; $SIG{__DIE__} = \&Carp::confess;

$|++;

my $Options = {
    bin_dir         => abs_path($0) =~ s|/cpancover$||r,
    build           => 1,
    docker          => "docker",
    force           => 0,
    generate_html   => 0,
    latest          => 0,
    local           => 0,
    local_build     => 0,
    module          => [],
    output_file     => "index.html",
    report          => "html_basic",
    results_dir     => cwd(),
    timeout         => 1800,  # half an hour
    verbose         => 0,
    workers         => 0,
};

sub get_options {
    die "Bad option" unless GetOptions($Options, qw(
        bin_dir=s
        build!
        docker=s
        force!
        generate_html!
        help|h!
        info|i!
        latest!
        local!
        local_build!
        module_file=s
        module=s
        output_file=s
        report=s
        results_dir=s
        timeout=i
        verbose!
        version|v!
        workers=i
    ));

    say "$0 version " . __PACKAGE__->VERSION and exit 0 if $Options->{version};
    pod2usage(-exitval => 0, -verbose => 0)             if $Options->{help};
    pod2usage(-exitval => 0, -verbose => 2)             if $Options->{info};
}

sub newcp {
    my $self = shift;
    Devel::Cover::Collection->new(
        bin_dir         => $Options->{bin_dir},
        docker          => $Options->{docker},
        force           => $Options->{force},
        local           => $Options->{local},
        modules         => $Options->{module},
        output_file     => $Options->{output_file},
        report          => $Options->{report},
        results_dir     => $Options->{results_dir},
        timeout         => $Options->{timeout},
        verbose         => $Options->{verbose},
        workers         => $Options->{workers},
    )
}

sub main {
    # TODO - only one instance should run at a time
    get_options;

    if ($Options->{latest}) {
        my $cp = newcp;
        $cp->get_latest;
        return;
    }

    if ($Options->{local_build}) {
        my $cp = newcp;
        $cp->set_modules(@ARGV);
        $cp->local_build;
        return;
    }

    if ($Options->{module_file}) {
        my $cp = newcp;
        $cp->set_module_file($Options->{module_file});
        $cp->cover_modules;
    }

    if ($Options->{build}) {
        if (@ARGV) {
            my $cp = newcp;
            $cp->set_modules(@ARGV);
            $cp->cover_modules;
        } elsif (! -t STDIN) {
            my @modules;
            while (<>) {
                chomp;
                push @modules, split;
            }
            my $cp = newcp;
            $cp->set_modules(@modules);
            $cp->cover_modules;
        } else {
            my $cp = newcp;
            $cp->cover_modules;
        }
    }

    if ($Options->{generate_html}) {
        my $cp = newcp;
        $cp->generate_html;
    }

}

main

__END__

=head1 NAME

cpancover - report coverage statistics on CPAN modules

=head1 VERSION

version 1.21

=head1 SYNOPSIS

 cpancover -help -info -version
           -collect -redo_cpancover_html -redo_html -force
           -module module_name
           -results_dir /path/to/dir
           -outputdir /path/to/dir
           -outputfile filename.html
           -report report_name
           -local

=head1 DESCRIPTION


=head1 OPTIONS

The following command line options are supported:

 -h -help              - show help
 -i -info              - show documentation
 -v -version           - show version
 -collect              - collect coverage from modules       (on)
 -directory            - location of the modules             ($cwd)
 -force                - recollect coverage                  (off)
 -module               - modules to use                      (all in $directory)
 -outputdir            - where to store output               ($directory)
 -outputfile           - top level index                     (coverage.html)
 -redo_cpancover_html  - don't set default modules           (off)
 -redo_html            - force html generation for modules   (off)
 -report               - report to use                       (html_basic)
 -local                - use local (uninstalled) code        (off)

=head1 DETAILS


=head1 REQUIREMENTS

Collect coverage for results and create html, csv and json output.

The modules L<Template> and L<Parallel::Iterator> are required.

=head1 EXIT STATUS

The following exit values are returned:

0   All operations were completed successfully.

>0  An error occurred.

=head1 SEE ALSO

 L<Devel::Cover>

=head1 BUGS

 Incomplete.
 Undocumented.
 Needs to be redone properly.

=head1 LICENCE

Copyright 2002-2015, Paul Johnson (paul@pjcj.net)

This software is free.  It is licensed under the same terms as Perl itself.

The latest version of this software should be available from my homepage:
http://www.pjcj.net

=cut

__END__
:endofperl
