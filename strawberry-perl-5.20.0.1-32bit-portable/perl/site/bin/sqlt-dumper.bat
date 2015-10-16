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

# -------------------------------------------------------------------
# Copyright (C) 2002-2009 SQLFairy Authors
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License as
# published by the Free Software Foundation; version 2.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
# 02110-1301 USA.
#
# -------------------------------------------------------------------

=head1 NAME

sqlt-dumper - create a dumper script from a schema

=head1 SYNOPSIS

  sqlt-dumper -d Oracle [options] schema.sql > dumper.pl

  ./dumper.pl > data.sql

  Options:

    -h|--help         Show help and exit
    --skip=t1[,t2]    Skip tables in comma-separated list
    --skiplike=regex  Skip tables matching the regular expression
    -u|--user         Database username
    -p|--password     Database password
    --dsn             DSN for DBI

=head1 DESCRIPTION

This script uses SQL::Translator to parse the SQL schema and create a
Perl script that can connect to the database and dump the data as
INSERT statements (a la mysqldump) or MySQL's LOAD FILE syntax.  You may
specify tables to "skip" (also using a "skiplike" regular expression)
and the generated dumper script will not have those tables.  However,
these will also be options in the generated dumper, so you can wait to
specify these options when you dump your database.  The database
username, password, and DSN can be hardcoded into the generated
script, or part of the DSN can be intuited from the "database"
argument.

=cut

# -------------------------------------------------------------------

use strict;
use warnings;
use Pod::Usage;
use Getopt::Long;
use SQL::Translator;
use File::Basename qw(basename);

use vars '$VERSION';
$VERSION = '1.59';

my ( $help, $db, $skip, $skiplike, $db_user, $db_pass, $dsn );
GetOptions(
    'h|help'        => \$help,
    'd|f|from|db=s' => \$db,
    'skip:s'        => \$skip,
    'skiplike:s'    => \$skiplike,
    'u|user:s'      => \$db_user,
    'p|password:s'  => \$db_pass,
    'dsn:s'         => \$dsn,
) or pod2usage;

pod2usage(0) if $help;
pod2usage( 'No database driver specified' ) unless $db;
$db_user ||= 'username';
$db_pass ||= 'password';
$dsn     ||= "dbi:$db:_";

my $file            = shift @ARGV or pod2usage( -msg => 'No input file' );
my $t               = SQL::Translator->new(
    from            => $db,
    to              => 'Dumper',
    producer_args   => {
        skip        => $skip,
        skiplike    => $skiplike,
        db_user     => $db_user,
        db_password => $db_pass,
        dsn         => $dsn,
    }
);

print $t->translate( $file );

exit(0);

# -------------------------------------------------------------------

=pod

=head1 AUTHOR

Ken Youens-Clark E<lt>kclark@cpan.orgE<gt>.

=head1 SEE ALSO

perl, SQL::Translator, SQL::Translator::Producer::Dumper.

=cut

__END__
:endofperl
