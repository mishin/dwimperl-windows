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
#!/usr/bin/perl -w
#line 29

=head1 NAME

module-starter - creates a skeleton module distribution

=cut

use warnings;
use strict;

use Module::Starter::App;

Module::Starter::App->run;

=head1 SYNOPSIS

module-starter [options]

Options:

    --module=module  Module name (required, repeatable)
    --distro=name    Distribution name (optional)
    --dir=dirname    Directory name to create new module in (optional)

    --builder=module Build with 'ExtUtils::MakeMaker' or 'Module::Build'
    --eumm           Same as --builder=ExtUtils::MakeMaker
    --mb             Same as --builder=Module::Build
    --mi             Same as --builder=Module::Install

    --author=name    Author's name (taken from getpwuid if not provided)
    --email=email    Author's email (taken from EMAIL if not provided)

    --ignores=type   Ignore type files to include (repeatable)
    --license=type   License under which the module will be distributed
                     (default is artistic2)
    --minperl=ver    Minimum Perl version required (optional;
                     default is 5.006)

    --fatalize       Generate code that causes all warnings to be fatal with:
                     use warnings FATAL => 'all'

    --verbose        Print progress messages while working
    --force          Delete pre-existing files if needed

    --help           Show this message

Available Licenses:

    perl, artistic, artistic2, mit, mozilla, mozilla2, bsd, freebsd, cc0,
    gpl, lgpl, gpl3, lgpl3, agpl3, apache, qpl
     
Available Ignore Types:

    cvs, git, hg, manifest, generic
    (NOTE: If manifest is included, the MANIFEST file will be skipped
    and only a MANIFEST.SKIP file will be included.)
     
Example:

    module-starter --module=Foo::Bar,Foo::Bat \
        --author="Andy Lester" --email=andy@petdance.com

=head1 DESCRIPTION

C<module-starter> is a command-line interface to L<Module::Starter>, which it
uses to perform all the work of creating distributions.  An alternate backend
for C<module-starter> can be specified with the C<--class> option.  Plugins to
the standard Module::Starter module can be specified with one or more
C<--plugin> options.

If no directory name is supplied, the distribution name will be used for the
directory.  If no distribution name is supplied, the first listed module name
will be used as the distribution name.

Multiple --builder options may be supplied to produce the files for multiple
builders.

=head1 CONFIGURATION

module-starter will look for a configuration file before reading its command
line parameters.  The default location is C<$HOME/.module-starter/config> but
if the MODULE_STARTER_DIR environment variable is set, module-starter will look
for C<config> in that directory.

The configuration file is just a list of names and values, separated by
colons.  Values that take lists are just space separated. Note that the
C<--ignores> command line parameter corresponds to the C<ignores_type>
configuration file entry. A sample configuration file might read:

 author: Ricardo SIGNES
 email:  rjbs@cpan.org
 ignores_type: git
 plugins: Module::Starter::Simple Module::Starter::Plugin::XYZ
 xyz_option: red green blue

This format may become more elaborate in the future, but a file of this type
should remain valid.

=cut


__END__
:endofperl
