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
﻿#!/usr/bin/perl -w

use Spreadsheet::ParseExcel;

use strict;

my $filename = shift || "test.xls";

my $e = new Spreadsheet::ParseExcel;
my $eBook = $e->Parse($filename);

my $sheets = $eBook->{SheetCount};
my ($eSheet, $sheetName);

foreach my $sheet (0 .. $sheets - 1) {
    $eSheet = $eBook->{Worksheet}[$sheet];
    $sheetName = $eSheet->{Name};
    print "Worksheet $sheet: $sheetName\n";
    next unless (exists ($eSheet->{MaxRow}) and (exists ($eSheet->{MaxCol})));
    foreach my $row ($eSheet->{MinRow} .. $eSheet->{MaxRow}) {
        foreach my $column ($eSheet->{MinCol} .. $eSheet->{MaxCol}) {
            next unless (defined $eSheet->{Cells}[$row][$column]);
            print $eSheet->{Cells}[$row][$column]->Value . " ";
        }
        print "\n";
    }
}__END__
:endofperl
@"%COMSPEC%" /c exit /b %ErrorLevel%
