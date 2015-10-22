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
#!/pro/bin/perl
#line 29

# xls2csv: Convert Microsoft Excel spreadsheet to CSV
#	   (m)'13 [24-10-2013] Copyright H.M.Brand 2008-2015

use strict;
use warnings;

sub usage
{
    my $err = shift and select STDERR;
    print "usage: $0 [ -o file.csv ] file.xls\n";
    @_ and print join "\n", @_, "";
    exit $err;
    } # usage

use Getopt::Long qw( :config bundling nopermute passthrough );
my $csv;
my $opt_f;
GetOptions (
    "help|?"	=> sub { usage 0; },
    "o|c=s"	=> \$csv,
    "f"		=> \$opt_f,
    ) or usage 1;

my $xls = shift or usage 1, "No input file";
-r $xls         or usage 1, "Input file unreadable";
-s $xls         or usage 1, "Input file empty";

$csv or ($csv = $xls) =~ s/\.xls$/.csv/i;
if (-f $csv) {
    $opt_f or die "$csv already exists\n";
    unlink $csv;
    }

print STDERR "Converting $xls to $csv ...\n";
open STDOUT, ">", $csv;
exec "xlscat", "-c", $xls;

__END__
:endofperl
