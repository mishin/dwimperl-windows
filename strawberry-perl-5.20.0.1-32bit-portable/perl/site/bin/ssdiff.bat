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

use strict;
use warnings;

sub usage
{
    my $err = shift and select STDERR;
    print "usage: $0 [--verbose[=1]] file.xls file.xlsx\n";
    exit $err;
    } # usage

use Getopt::Long qw(:config bundling);
my $opt_v = 1;
GetOptions (
    "help|?"		=> sub { usage (0); },
    "v|verbose:2"	=> \$opt_v,
    ) or usage (1);

my $file1 = shift or usage (1);
my $file2 = shift or usage (1);

binmode STDOUT, ":encoding(utf-8)";

use List::Util qw( max );
use Spreadsheet::Read;
my $ss1 = ReadData ($file1) or die "Cannot read $file1: $!\n";
my $ss2 = ReadData ($file2) or die "Cannot read $file2: $!\n";

print "< $file1\t($ss1->[0]{sheets} sheets)\n";
print "> $file2\t($ss2->[0]{sheets} sheets)\n";
foreach my $s (1 .. max map { $_->[0]{sheets} } $ss1, $ss2) {
    my $s1 = $ss1->[$s];
    my $s2 = $ss2->[$s];
    unless ($s1) {
	print "$s: not in $file1\n";
	last;
	}
    unless ($s2) {
	print "$s: not in $file2\n";
	last;
	}

    printf "Sheet %d\n\t< %5d x %5d %s\n\t> %5d x %5d %s\n", $s,
	$s1->{maxcol}, $s1->{maxrow}, $s1->{label},
	$s2->{maxcol}, $s2->{maxrow}, $s2->{label};

    my $mc = max map { $_->{maxcol} } $s1, $s2;
    foreach my $r (1 ..  max map { $_->{maxrow} } $s1, $s2) {
	if ($r > $s1->{maxrow}) {
	    print "$s: EOS in $file1 at row $r\n";
	    last;
	    }
	if ($r > $s2->{maxrow}) {
	    print "$s: EOS in $file2 at row $r\n";
	    last;
	    }
	my @r1 = Spreadsheet::Read::row ($s1, $r);
	my @r2 = Spreadsheet::Read::row ($s2, $r);
	foreach my $c (1 ..  $mc) {
	    my $c1 = $r1[$c];
	    my $c2 = $r2[$c];
	    if (defined $c1) {
		if (defined $c2) {
		    $c1 eq $c2 and next;
		    print "$s: ($r, $c)\n\t< $c1\n\t> $c2\n";
		    next;
		    }
		print "$s: ($r, $c)\n\t< $c1\n\t> -- undefined --\n";
		next;
		}
	    defined $c2 or next;
	    print "$s: ($r, $c)\n\t< -- undefined --\n\t> $c2\n";
	    }
	}
    }

__END__
:endofperl