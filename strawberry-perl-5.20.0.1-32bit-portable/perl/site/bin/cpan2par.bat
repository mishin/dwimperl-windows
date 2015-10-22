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

use Getopt::Long qw/GetOptions/;
use PAR::Dist::FromCPAN;

our $VERSION = '1.10';

=pod

=head1 NAME

cpan2par - Create PAR distributions from CPAN

=head1 SYNOPSIS

cpan2par --help

cpan2par [-v -f -t -o DIR] -p MODULEPATTERN

=head1 DESCRIPTION

This script creates PAR distributions from any number of modules
from CPAN. The only mandatory parameter is a pattern matching the
modules you wish to create PAR distributions from. This works the
same way as, for example C<cpan install MODULEPATTERN>.

=head2 Parameters

  -v --verbose
    Sets the verbose mode.
  -p --pattern
    The module pattern to use.
  -o --out
    Sets the output directory. (default: .)
  -f --follow
    Follow dependencies and recursively generate PAR distributions.
  -t --test
    Indicates whether the modules' tests will be run before the PAR
    distribution is created.
  -m --merge
    Merge all modules into the main PAR distribution instead
    of creating separate .par files for each dependency.
    (This step is carried out at the end. If something goes wrong,
     it will be skipped.)
  --no-docs
    Strip all documentation (man pages, html documentation) from the
    resulting PAR distribution.
    (This step is carried out at the end. If something goes wrong,
     it will be skipped.)
  -s --skip
    Skip modules that match this regex. (May be specified multiple
    times.)
  -a --auto-detect-pure-perl
    Auto-detect whether a distribution is pure-Perl (i.e. does not
    contain portions that require a C compiler) and flag the
    produced distribution as such by changing its name.
  --perl --perlversion
    Defaults to your version of Perl. Used to determine
    which modules are core perl and thus will be skipped.
    Set this to 0 to package all core modules as well.

=head1 SEE ALSO

This tool is implemented using the L<PAR::Dist::FromCPAN> module. Please
refer to that module's documentation for details on how this all works.

PAR has a mailing list, <par@perl.org>, that you can write to; send
an empty mail to <par-subscribe@perl.org> to join the list and
participate in the discussion.

Please send bug reports to <bug-par-dist-fromcpan@rt.cpan.org>.

The official PAR website may be of help, too: http://par.perl.org

=head1 AUTHOR

Steffen Mueller, E<lt>smueller at cpan dot orgE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2006-2009 by Steffen Mueller

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.6 or,
at your option, any later version of Perl 5 you may have available.

=cut

my $usage = <<"HERE";
$0 --help          # for help

$0 [-v -f -t -o DIR -m --no-docs] -p MODULEPATTERN

This script creates PAR distributions from any number of modules
from CPAN. The only mandatory parameter is a pattern matching the
modules you wish to create PAR distributions from. This works the
same way as, for example "cpan install MODULEPATTERN".

-v --verbose
  Sets the verbose mode.
-o --out
  Sets the output directory. (default: .)
-f --follow
  Follow dependencies and recusrively generate PAR distributions.
-t --test
  Indicates whether the modules' tests will be run before the PAR
  distribution is created.
-p --pattern
  The module pattern to use.
-m --merge
  Merge all modules into the main PAR distribution instead
  of creating separate .par files for each dependency.
  (This step is carried out at the end. If something goes wrong,
   it will be skipped.)
--no-docs
  Strip all documentation (man pages, html documentation) from the
  resulting PAR distribution.
  (This step is carried out at the end. If something goes wrong,
   it will be skipped.)
-s --skip
  Skip modules that match this regex. (May be specified multiple
  times.)
-a --auto-detect-pure-perl
  Auto-detect whether a distribution is pure-Perl (i.e. does not
  contain portions that require a C compiler) and flag the
  produced distribution as such by changing its name.
--perl --perlversion
  Defaults to your version of Perl. Used to determine
  which modules are core perl and thus will be skipped.
  Set this to 0 to package all core modules as well.
HERE

my $pattern;
my $outdir = '.';
my $follow = 0;
my $run_tests = 0;
my $v = 0;
my $merge = 0;
my $nodocs = 0;
my $auto_detect_pure_perl = 0;
my $perl_version = $^V;
my @skip;
GetOptions(
	'h|help' => sub { print $usage; exit(1) },
	'o|out=s' => \$outdir,
	'p|pattern=s' => \$pattern,
	'f|follow' => \$follow,
	'v|verbose' => \$v,
	't|test' => \$run_tests,
	'm|merge' => \$merge,
	'no-docs' => \$nodocs,
	's|skip=s' => \@skip,
        'a|auto-detect-pure-perl' => \$auto_detect_pure_perl,
        'perl|perl_version|perlversion|perl-version=s' => \$perl_version,
);

if (not defined $pattern) {
    $pattern = shift @ARGV;
}

if (not defined $pattern) {
    print "You need to supply a module pattern. Try --help for help.\n";
    exit(1);
}

cpan_to_par(
	pattern => $pattern,
	($follow                ? (follow     => 1      ) : ()),
	($v                     ? (verbose    => 1      ) : ()),
	($run_tests             ? (test       => 1      ) : ()),
	(defined($outdir)       ? (out        => $outdir) : ()),
	($merge                 ? (merge      => 1      ) : ()),
	($nodocs                ? (strip_docs => 1      ) : ()),
	(@skip                  ? (skip       => \@skip ) : ()),
        ($auto_detect_pure_perl ? (auto_detect_pure_perl => 1) : ()),
        perl_version => $perl_version,
);


__END__
:endofperl
