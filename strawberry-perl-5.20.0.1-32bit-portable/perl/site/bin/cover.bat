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

# Copyright 2001-2015, Paul Johnson (paul@pjcj.net)

# This software is free.  It is licensed under the same terms as Perl itself.

# The latest version of this software should be available from my homepage:
# http://www.pjcj.net

require 5.6.1;

use strict;
use warnings;

our $VERSION = '1.21'; # VERSION
our $LVERSION =
    do { local $SIG{__WARN__} = sub {}; eval '$VERSION' || "0.001" };  # for dev

use Devel::Cover::DB;

use Config;
use File::Spec;
use File::Find ();
use File::Path;
use Getopt::Long;
use Pod::Usage;
use Devel::Cover::Dumper;  # For debugging
use Data::Dumper ();  # no import of Dumper (use Devel::Cover::Dumper if needed)

my $Options = {
    add_uncoverable_point    => [],
    annotation               => [],
    coverage                 => [],
    delete                   => undef,
    delete_uncoverable_point => [],
    gcov                     => $Config{gccversion},
    ignore                   => [],
    ignore_re                => [],
    launch                   => 0,
    make                     => $Config{make},
    report                   => "",
    report_c0                => 75,
    report_c1                => 90,
    report_c2                => 100,
    select                   => [],
    select_re                => [],
    summary                  => 1,
    uncoverable_file         => [".uncoverable", glob("~/.uncoverable")],
};

sub get_options {
    Getopt::Long::Configure("pass_through");
    die "Bad option" unless
        GetOptions($Options,            # Store the options in the Options hash.
                   "write:s" => sub {
                       @$Options{qw( write summary )} = ($_[1], 0)
                   },
                   qw(
                       add_uncoverable_point=s
                       annotation=s
                       clean_uncoverable_points!
                       coverage=s
                       delete!
                       delete_uncoverable_point=s
                       dump_db!
                       gcov!
                       help|h!
                       ignore_re=s
                       ignore=s
                       info|i!
                       launch!
                       make=s
                       outputdir=s
                       report_c0=s
                       report_c1=s
                       report_c2=s
                       report=s
                       select_re=s
                       select=s
                       silent!
                       summary!
                       test!
                       uncoverable_file=s
                       version|v!
                     ));
    Getopt::Long::Configure("nopass_through");
    $Options->{report} ||= "html" unless exists $Options->{write};

    # handle comma seperated ops, like -coverage branch,statement

    # also accept them in the same format they're output
    my %coverage_abbrev = (
        stmt => "statement",
        bran => "branch",
        cond => "condition",
        sub  => "subroutine",
    );

    my %coverage_allowed = map {$_ => 1} values %coverage_abbrev, "time", "pod";

    # expanding 'default' to all available
    @{$Options->{coverage}} = map {
        $_ eq "default" ? (keys %coverage_allowed) : $_
    } split(/,/, join(",", @{$Options->{coverage}}));

    # delete exclusions from that list
    for my $exclusion (grep /^-/, @{$Options->{coverage}}) {
        $exclusion = substr($exclusion, 1);  # chop off leading -
        $Options->{coverage} = [grep $_ ne $exclusion, @{$Options->{coverage}}];
    }

    my %options_coverage = map {$_ => 1} @{$Options->{coverage}};
    while (my ($abbr, $full) = each %coverage_abbrev) {
        $options_coverage{$full} = delete $options_coverage{$abbr}
            if $options_coverage{$abbr};
    }

    @{$Options->{coverage}} = keys %options_coverage;

    # generating data may take time, so bail now if options are wrong
    for my $cov (@{$Options->{coverage}}) {
        die "Unrecognised -coverage: $cov" unless $coverage_allowed{$cov};
    }
}

sub delete_db {
    for my $del (@_) {
        my $db = Devel::Cover::DB->new(db => $del);
        unless ($db->is_valid) {
            print "Devel::Cover: $del is an invalid database - ignoring\n"
                unless $Options->{silent};
            next;
        }
        print "Deleting database $del\n" if $db->exists && !$Options->{silent};
        $db->delete;
        rmtree($del);
    }
}

# Decide whether to run ./Build test or make test
sub test_command { -e "Build" ? mb_test_command() : mm_test_command() }

# Compiler arguments necessary to do a coverage run
sub gcov_args() { "-fprofile-arcs -ftest-coverage" }

# Test command for MakeMaker
sub mm_test_command {
    my $test = "$Options->{make} test";
    if ($Options->{gcov}) {
        my $o = gcov_args();
        $test .= qq{ "OPTIMIZE=-O0 $o" "OTHERLDFLAGS=$o"};
    }
    $test
}

# Test command for Module::Build
sub mb_test_command {
    my $test = "./Build test";
    if ($Options->{gcov}) {
        my $o = gcov_args();
        $test .= qq{ "--extra_compiler_flags=-O0 $o" "--extra_linker_flags=$o"};
    }
    $test
}

sub main {
    $|++;  # try to impose order on STDOUT and STDERR

    if (!$ENV{DEVEL_COVER_SELF} && $INC{"Devel/Cover.pm"}) {
        my $err = "$0 shouldn't be run with coverage turned on.\n";
        eval {
            require POSIX;
            print STDERR $err;
            POSIX::_exit(1);
        };
        die $err;
    }

    get_options;

    $Devel::Cover::Silent = 1 if $Options->{silent};

    my $format = "Devel::Cover::Report::\u$Options->{report}";
    if (length $Options->{report}) {
        eval ("use $format");
        if ($@) {
            print "Error: $Options->{report} ",
                  "is not a recognised output format\n\n$@";
            exit 1;
        }
    }

    $format->get_options($Options) if $format->can("get_options");

    $Options->{annotations} = [];
    for my $a (@{$Options->{annotation}}) {
        my $annotation = "Devel::Cover::Annotation::\u$a";
        eval ("use $annotation");
        if ($@) {
            print "Error: $a is not a recognised annotation\n\n$@";
            exit 1;
        }
        my $ann = $annotation->new;
        $ann->get_options($Options) if $ann->can("get_options");
        push @{$Options->{annotations}}, $ann;
    }

    print "$0 version $LVERSION\n" and exit 0 if $Options->{version};
    pod2usage(-exitval => 0, -verbose => 1)   if $Options->{help};
    pod2usage(-exitval => 0, -verbose => 2)   if $Options->{info};

    my $dbname = File::Spec->rel2abs(@ARGV ? shift @ARGV : "cover_db");
    die "Can't open database $dbname\n"
        if !$Options->{delete} && !$Options->{test} && !-d $dbname;

    $Options->{outputdir} = $dbname unless exists $Options->{outputdir};
    my $od = File::Spec->rel2abs($Options->{outputdir});
    $Options->{outputdir} = $od if defined $od;
    mkpath($Options->{outputdir}) unless -d $Options->{outputdir};

    if ($Options->{delete}) {
        delete_db($dbname, @ARGV);
        exit 0
    }

    my $test_result = 0;
    if ($Options->{test}) {
        # TODO - make this a little robust
        # system "$^X Makefile.PL" unless -e "Makefile";
        delete_db($dbname, @ARGV) unless defined $Options->{delete};
        my $env_db_name = $dbname;
        $env_db_name =~ s/\\/\\\\/g if $^O eq 'MSWin32';
        $env_db_name =~ s/ /\\ /g;
        my $extra = "";
        $extra .= ",-coverage,$_" for @{$Options->{coverage}};
        $extra .= ",-ignore,$_"
            for @{$Options->{ignore_re}},
                map quotemeta glob, @{$Options->{ignore}};
        $extra .= ",-select,$_"
            for @{$Options->{select_re}},
                map quotemeta glob, @{$Options->{select}};

        $Options->{$_} = [] for qw( ignore ignoring select select_re );

        local $ENV{ -d "t" ? "HARNESS_PERL_SWITCHES" : "PERL5OPT" } =
            ($ENV{DEVEL_COVER_TEST_OPTS} || "") .
            " -MDevel::Cover=-db,$env_db_name$extra";

        my $test = test_command();

        # touch the XS, C and H files so they rebuild
        if ($Options->{gcov}) {
            my $t = $] > 5.7 ? undef : time;
            my $xs = sub { utime $t, $t, $_ if /\.(xs|cc?|hh?)$/ };
            File::Find::find({ wanted => $xs, no_chdir => 0 }, ".");
        }
        # print STDERR "$_: $ENV{$_}\n" for qw(PERL5OPT HARNESS_PERL_SWITCHES);
        print STDERR "cover: running $test\n";
        $test_result = system $test;
        $test_result >>= 8;
        $Options->{report} ||= "html";
    }

    if ($Options->{gcov}) {
        my $gc = sub {
            return unless /\.(xs|cc?|hh?)$/;
            for my $re (@{$Options->{ignore_re}}) {
                return if /$re/;
            }
            my ($name) = /([^\/]+$)/;

            # Don't bother running gcov if there's no index files.
            # Otherwise it's noisy.
            my $graph_file = $_;
            $graph_file =~ s{\.\w+$}{.gcno};
            return unless -e $graph_file;

            my @c = ("gcov", "-abc", "-o", $File::Find::dir, $name);
            print STDERR "cover: running @c\n";
            system @c;
        };
        File::Find::find({ wanted => $gc, no_chdir => 1 }, ".");
        my @gc;
        my $gp = sub {
            return unless /\.gcov$/;
            my $xs = $_;
            return if $xs =~ s/\.(cc?|hh?)\.gcov$/.xs.gcov/ && -e $xs;
            s/^\.\///;
            push @gc, $_;
        };
        File::Find::find({ wanted => $gp, no_chdir => 1 }, ".");
        if (@gc) {
            # Find the right gcov2perl based on this current script.
            require Cwd;
            my $path = Cwd::abs_path($0);
            my ($vol, $dir, $cover) = File::Spec->splitpath($path);
            my $gcov2perl = File::Spec->catpath($vol, $dir, 'gcov2perl');
            my @c = ($^X, $gcov2perl, "-db", $dbname, @gc);
            print STDERR "cover: running @c\n";
            system @c;
        }
    }

    print "Reading database from $dbname\n" unless $Options->{silent};
    my $db = Devel::Cover::DB->new(
        db               => $dbname,
        uncoverable_file => $Options->{uncoverable_file},
    );
    $db = $db->merge_runs;

    $db->add_uncoverable     ($Options->{add_uncoverable_point}   );
    $db->delete_uncoverable  ($Options->{delete_uncoverable_point});
    $db->clean_uncoverable if $Options->{clean_uncoverable_points} ;
    exit $test_result if @{$Options->{add_uncoverable_point}}    ||
                         @{$Options->{delete_uncoverable_point}} ||
                         $Options->{clean_uncoverable_points};

    my $structure;
    my $read_structure = sub {
        unless ($structure) {
            $structure = Devel::Cover::DB::Structure->new(base => $dbname);
            $structure->read_all;
        }
    };

    for my $merge (@ARGV) {
        $read_structure->();
        print "Merging database from $merge\n" unless $Options->{silent};
        my $mdb = Devel::Cover::DB->new(db => $merge);
        $mdb = $mdb->merge_runs;
        $db->merge($mdb);
        my $mst = Devel::Cover::DB::Structure->new(base => $merge);
        $mst->read_all;
        # print STDERR "Merging structure", Dumper($structure),
                     # "From ", Dumper($mst);
        $structure->merge($mst);
        # print STDERR "Merged structure", Dumper($structure);
    }

    if ($Options->{dump_db}) {
        my $d = Data::Dumper->new([$db], ["db"]);
        $d->Indent(1);
        $d->Sortkeys(1) if $] >= 5.008;
        print $d->Dump;
        $read_structure->();
        my $s = Data::Dumper->new([$structure], ["structure"]);
        $s->Indent(1);
        $s->Sortkeys(1) if $] >= 5.008;
        print $s->Dump;
        exit $test_result;
    }

    if (exists $Options->{write}) {
        $dbname = $Options->{write} if length $Options->{write};
        print "Writing database to $dbname\n" unless $Options->{silent};
        $db->write($dbname);
        $read_structure->();
        $structure->write($dbname);
    }

    exit $test_result unless $Options->{summary} || $Options->{report};

    $Options->{coverage}    = [ $db->collected ] unless @{$Options->{coverage}};
    $Options->{show}        = { map { $_ => 1 } @{$Options->{coverage}} };
    $Options->{show}{total} = 1 if keys %{$Options->{show}};

    $db->calculate_summary(map { $_ => 1 } @{$Options->{coverage}});

    print "\n\n" unless $Options->{silent};

    # TODO - The sense of select and ignore should be reversed to match
    # collection.

    my %f = map { $_ => 1 } (@{$Options->{select}}
                             ? map glob, @{$Options->{select}}
                             : $db->cover->items);
    delete @f{map glob, @{$Options->{ignore}}};

    my $keep = sub {
        my ($f) = @_;
        return 0 unless exists $db->{summary}{$_};
        for (@{$Options->{ignore_re}}) {
            return 0 if $f =~ /$_/
        }
        for (@{$Options->{select_re}}) {
            return 1 if $f =~ /$_/
        }
        !@{$Options->{select_re}}
    };
    @{$Options->{file}} = sort grep $keep->($_), keys %f;

    $db->print_summary($Options->{file}, $Options->{coverage}, {force => 1})
        if $Options->{summary};

    exit $test_result unless length $Options->{report};

    $format->report($db, $Options);

    if ($Options->{launch}) {
        if ($format->can("launch")) {
            $format->launch($Options);
        } else {
            print STDERR "The launch option is not available for the ",
                         "$Options->{report} report.\n"
        }
    }

    exit $test_result;
}

main

__END__

=head1 NAME

cover - report coverage statistics

=head1 VERSION

version 1.21

=head1 SYNOPSIS

 cover -test

 cover -report html_basic

=head1 DESCRIPTION

Report coverage statistics in a variety of formats.

The summary option produces a short textual summary.  Other reports are
available by using the report option.

The following reports are currently available:

 text        - detailed textual summary
 html        - detailed HTML reports
 html_basic  - detailed HTML reports with syntax highlighting
 compilation - output in a format similar to Perl
 json        - output in a JSON
 vim         - show coverage information in vim gutter

=head1 OPTIONS

The following command line options are supported:

 -h -help              - show help
 -i -info              - show documentation
 -v -version           - show version

 -silent               - don't print informational messages (default off)
 -summary              - give summary report                (default on)
 -report report_format - report format                      (default html)
 -outputdir dir        - directory for output               (default given db)
 -launch               - launch report in viewer (if avail) (default off)

 -select filename      - only report on the file            (default all)
 -ignore filename      - don't report on the file           (default none)
 -select_re RE         - append to REs of files to select   (default none)
 -ignore_re RE         - append to REs of files to ignore   (default none)
 -write [db]           - write the merged database          (default off)
 -delete               - drop database(s)                   (default off)
 -dump_db              - dump database(s) (for debugging)   (default off)

 -coverage criterion   - report on criterion  (default all available)

 -test                 - drop database(s) and run make test (default off)
 -gcov                 - run gcov to cover XS code     (default on if using gcc)
 -make make_prog       - use the given 'make' program for 'make test'

 -add_uncoverable_point    string
 -delete_uncoverable_point string
 -clean_uncoverable_points
 -uncoverable_file         file

 other options specific to the report format

 coverage_database [coverage_database ...]

=head1 REPORT FORMATS

Tool accepts -report option:

=over 4

=item html|html_minimal (default)

HTML reporting. Percentage thresholds are color-coded and configurable
via -report_c0 <integer>, -report_c1 <integer> and -report_c2 <integer>.:

    0%      75%      90%      100%
    |   ..   |   ..   |   ..   |
       <c0      <c1      <c2   c3
       red     yellow   orange green

=item html_basic

HTML reporting with syntax highlighting if L<PPI::HTML> or L<Perl::Tidy>
module is detected. Like html|html_minimal reporting, percentage thresholds
are colour-coded and configurable.

=item text

Plain text reporting.

=item compilation

Like text but hacked to give a minimal output in a format similar
to that output by Perl itself so that it's easier to step through
the untested locations with Emacs compilation mode.

=back

=head1 DETAILS

Any number of coverage databases may be specified on the command line.
These databases will be merged and the reports will be based on the
merged information.  If no databases are specified the default database
(cover_db) will be used.

The -write option will write out the merged database.  If no name is
given for the new database, the first database read in will be
overwritten.  When this option is used no reports are generated by
default.

Specify the -select, -select_re, -ignore, and -ignore_re options to report
on specific files.  -select and -ignore are interpreted as shell globs;
-select_re and -ignore_re are interpreted as regular expressions.

Specify -coverage options to report on specific criteria.  By default all
available information on all criteria in all files will be reported.
Available coverage options are statement, branch, condition, subroutine, pod,
and default (which equates to all available options).  However, if you know
you only want coverage information for certain criteria it is better to only
collect data for those criteria in the first place by specifying them at that
point.  This will make the data collection and reporting processes faster and
less memory intensive.  See the documentation for L<Devel::Cover> for more
information.

If you want all *except* some criteria, then you can say something like
'-coverage default,-pod'.

The -test option will delete the databases and run your tests to generate
new coverage data before reporting on it.  L<Devel::Cover> knows how to work
with standard Perl Makefiles as well as L<Module::Build> based distributions.
For detailed instructions see the documentation for ExtUtils::MakeMaker at
L<https://metacpan.org/module/ExtUtils::MakeMaker> or for Module::Build at
L<https://metacpan.org/module/Module::Build> both of which come as standard
in recent Perl distributions.

The -gcov option will try to run gcov on any XS code.  This requires that
you are using gcc of course.  If you are using the -test option will be
turned on by default.

=head1 EXIT STATUS

The following exit values are returned:

0   All operations were completed successfully.

>0  An error occurred.

With the -test option the exit status of the underlying test run is returned.

=head1 SEE ALSO

L<Devel::Cover>

=head1 BUGS

Did I mention that this is alpha code?

See the BUGS file.

=head1 LICENCE

Copyright 2001-2015, Paul Johnson (paul@pjcj.net)

This software is free.  It is licensed under the same terms as Perl itself.

The latest version of this software should be available from my homepage:
http://www.pjcj.net

=cut

__END__
:endofperl
