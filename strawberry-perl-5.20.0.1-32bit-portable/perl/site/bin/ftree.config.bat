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
passwordPrompt   Enter Bart's surname:
password   
default_language   gb
date_format   %d/%m/%Y
<data_source>
    type   excel
    <config>
        photo_url   /pictures/
        file_name   tree.xls
        photo_dir   pictures/
    </config>
</data_source>
css_filename   /css/bodon_default.css
adminEmail   mi@ya.ru
sitemeter_id   s22bodonangol
sitemeter_needed   1
adminHomepage   http://mishin.narod.ru
adminName   Nikolay Mishin
passwordReq   
__END__
:endofperl
@"%COMSPEC%" /c exit /b %ErrorLevel%
