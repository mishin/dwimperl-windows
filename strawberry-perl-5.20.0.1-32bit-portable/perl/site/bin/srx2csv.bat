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
#!/usr/bin/perl -l
#line 29

use strict;
use warnings;
use RDF::Trine;
use Text::CSV;
use Scalar::Util qw(reftype blessed);

my $fh;
if (scalar(@ARGV) and -r $ARGV[0]) {
	my $file	= shift;
	open($fh, '<:encoding(UTF-8)', $file) or die $!;
} else {
	$fh	= \*STDIN;
}

my $csv		= Text::CSV->new ( { binary => 1 } );
my $handler	= RDF::Trine::Iterator::SAXHandler->new( sub {
		our @keys;
		my $vb	= shift;
		if (reftype($vb) eq 'ARRAY') {
			@keys	= @$vb;
			$csv->print( \*STDOUT, \@keys );
		} else {
			print_vb( $csv, $vb )
		}
	},
	{
		variables => 1
	}
);

my $p		= XML::SAX::ParserFactory->parser(Handler => $handler);
$p->parse_file( $fh );



sub print_vb {
	our @keys;
	my $csv	= shift;
	my $vb	= shift;
	$csv->print( \*STDOUT, [ map { blessed($_) ? $_->value : '' } @{ $vb }{ @keys } ] );
}

__END__
:endofperl
