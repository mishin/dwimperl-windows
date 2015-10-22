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
﻿# use Text::Iconv;
# my $converter = Text::Iconv -> new ("utf-8", "windows-1251");
 
# Text::Iconv is not really required.
# This can be any object with the convert method. Or nothing.
 
use Spreadsheet::XLSX;
 my $file_name='mishin_family.xls.xlsx';
my $excel = Spreadsheet::XLSX -> new ( $file_name);#, $converter);
 
foreach my $sheet (@{$excel -> {Worksheet}}) {
 
       printf("Sheet: %s\n", $sheet->{Name});
        
       $sheet -> {MaxRow} ||= $sheet -> {MinRow};
        
        foreach my $row ($sheet -> {MinRow} .. $sheet -> {MaxRow}) {
         
               $sheet -> {MaxCol} ||= $sheet -> {MinCol};
                
               foreach my $col ($sheet -> {MinCol} ..  $sheet -> {MaxCol}) {
                
                       my $cell = $sheet -> {Cells} [$row] [$col];
 
                       if ($cell) {
                           printf("( %s , %s ) => %s\n", $row, $col, $cell -> {Val});
                       }
 
               }
 
       }
 
}__END__
:endofperl
@"%COMSPEC%" /c exit /b %ErrorLevel%
