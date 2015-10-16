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
#!perl
#line 29
use strict;
use warnings;
use CPAN::Meta;
use Module::CPANfile;
use Getopt::Long qw(:config posix_default no_ignore_case gnu_compat);

my @phases = qw(configure build test develop runtime);
my @types  = qw(requires recommends suggests conflicts);

my %o = map { $_ => 1 } @phases, @types; # default all

GetOptions(
    "include-empty!", \$o{include_empty},
    "h|help", \$o{help},
    map { ("$_!", \$o{$_}) } (@phases, @types),
);

if ($o{help}) {
    if (eval { require Pod::Usage; 1 }) {
        Pod::Usage::pod2usage(1);
    } else {
        die "Usage: mymeta-cpanfile\n\nSee perldoc mymeta-cpanfile for more details.\n";
    }
}

sub get_mymeta {
    for my $file (qw( MYMETA.json MYMETA.yml META.json META.yml )) {
        next unless -r $file;
        my $meta = eval { CPAN::Meta->load_file($file) };
        return $meta if $meta;
    }
}

my $meta = get_mymeta or die "Could not locate any META files\n";

my $prereqs = $meta->prereqs;
my $filtered = {};

while (my($phase, $types) = each %$prereqs) {
    next unless $o{$phase};
    while (my($type, $reqs) = each %$types) {
        next unless $o{$type};
        $filtered->{$phase}{$type} = $reqs;
    }
}

my $cpanfile = Module::CPANfile->from_prereqs($filtered);
print $cpanfile->to_string($o{include_empty});

__END__

=head1 NAME

mymeta-cpanfile - Dump cpanfile out of (MY)META files

=head1 SYNOPSIS

  perl Makefile.PL # or Build.PL
  mymeta-cpanfile

  # Skip configures phase and suggests type
  mymeta-cpanfile --no-configure --no-suggests

  # Include empty blcok for phases without prereqs
  mymeta-cpanfile --include-empty

=head1 DESCRIPTION

This script reads prereqs metadata from MYMETA files in the current
directory and prints C<cpanfile> that represents the prereqs. Useful
when you want to migrate to using L<cpanfile> from existing
C<Makefile.PL> or C<Build.PL> with dependency specification.

This script is distributed with L<Module::CPANfile> since version 0.9021.

=head1 OPTIONS

=over 4

=item --configure, --build, --test, --runtime, --develop

Specify the phase to include/exclude. Defaults to include all phases,
but you can exclude some phases by specifying the options with
C<--no-> prefix, like C<--no-configure>.

=item --requires, --recommends, --suggests, --conflicts

Specify the type to include/exclude. Defaults to include all types,
but you can exclude some types by specifying the options with C<--no->
prefix, like C<--no-conflicts>.

=item --include-empty

By default, phases without any prereqs are not dumped, By giving this
option, cpanfile will have an empty block such as:

  on test => sub {

  };

Defaults to false.

=back

=head1 AUTHOR

Tatsuhiko Miyagawa

=head1 SEE ALSO

L<Module::CPANfile> L<cpanfile> L<App::mymeta_requires>

=cut


__END__
:endofperl
