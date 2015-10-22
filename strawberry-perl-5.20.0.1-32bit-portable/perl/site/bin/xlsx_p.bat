@rem = '--*-Perl-*--
@echo off
if "%OS%" == "Windows_NT" goto WinNT
perl -x -S "%0" %1 %2 %3 %4 %5 %6 %7 %8 %9
@set ErrorLevel=%ErrorLevel%
goto endofperl
:WinNT
perl -x -S %0 %*
@set ErrorLevel=%ErrorLevel%
if NOT "%COMSPEC%" == "%SystemRoot%\system32\cmd.exe" goto endofperl
if %errorlevel% == 9009 echo You do not have Perl in your PATH.
goto endofperl
@rem ';
#!perl
#line 16
﻿use Data::Dumper;
use Data::XLSX::Parser;
  my $file_name='mishin_family.xls.xlsx';
my $parser = Data::XLSX::Parser->new;
# $parser->add_row_event_handler(sub {
    # my ($row) = @_;
    # print Dumper $row;
# });
$parser->open($file_name);
my $cells = [];
$parser->add_row_event_handler(
    sub {
        my ($row) = @_;
        push @$cells, $row;
    }
);
print Dumper $cells;
# my $cells = [];
# $parser->add_row_event_handler(
    # sub {
        # my ($row) = @_;
        # push @$cells, $row;
    # }
# );
# $parser->parse($file_name);__END__
:endofperl
@"%COMSPEC%" /c exit /b %ErrorLevel%
