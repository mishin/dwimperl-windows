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
﻿$book = [
    # Entry 0 is the overall control hash
    { sheets  => 2,
      sheet   => {
        "Sheet 1"  => 1,
        "Sheet 2"  => 2,
        },
      type    => "xls",
      parser  => "Spreadsheet::ParseExcel",
      version => 0.59,
      error   => undef,
      },
    # Entry 1 is the first sheet
    { label   => "Sheet 1",
      maxrow  => 2,
      maxcol  => 4,
      cell    => [ undef,
        [ undef, 1 ],
        [ undef, undef, undef, undef, undef, "Nugget" ],
        ],
      attr    => [],
      merged  => [],
      A1      => 1,
      B5      => "Nugget",
      },
	  ]__END__
:endofperl
@"%COMSPEC%" /c exit /b %ErrorLevel%
