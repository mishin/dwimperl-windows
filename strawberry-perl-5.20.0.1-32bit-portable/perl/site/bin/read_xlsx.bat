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
﻿use Spreadsheet::Read;
use Data::Dumper;
use v5.14;
my $file_name='mishin_family.xls.xlsx';
my $book  = ReadData ($file_name); 
my $sheet = $book->[0];
say Dumper ($book);   __END__
:endofperl
@"%COMSPEC%" /c exit /b %ErrorLevel%
