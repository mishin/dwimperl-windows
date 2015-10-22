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
#!/usr/local/bin/perl -w
#line 29
###########################################
# google-drive-init
# Mike Schilli, 2014 (m@perlmeister.com)
###########################################
use strict;
use lib 'lib';

use OAuth::Cmdline::GoogleDrive;
use OAuth::Cmdline::Mojo;

my $oauth = OAuth::Cmdline::GoogleDrive->new(
    client_id     => "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",
    client_secret => "YYYYYYYYYYYYYYYYYYYYYYYY",
    login_uri     => "https://accounts.google.com/o/oauth2/auth",
    token_uri     => "https://accounts.google.com/o/oauth2/token",
    scope         => "https://www.googleapis.com/auth/drive",
    access_type   => "offline",
);

my $app = OAuth::Cmdline::Mojo->new(
    oauth => $oauth,
);

$app->start( 'daemon', '-l', $oauth->local_uri );

__END__
:endofperl
