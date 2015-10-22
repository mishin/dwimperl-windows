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
#!perl
#line 29
use strict;
use warnings;
package
  cpan_upload;
# PODNAME: cpan-upload
# ABSTRACT: upload a distribution to the CPAN

use CPAN::Uploader;
use Getopt::Long::Descriptive 0.084;

#pod =head1 USAGE
#pod
#pod   usage: cpan-upload [options] file-to-upload-1 [ file-to-upload-2 ... ]
#pod     -v --verbose       enable verbose logging
#pod     -h --help          display this help message
#pod     --dry-run          do not actually upload anything
#pod
#pod     -u --user          your PAUSE username
#pod     -p --password      the password to your PAUSE account
#pod     -d --directory     a dir in your CPAN space in which to put the file
#pod     --http-proxy       URL of the http proxy to use in uploading
#pod     --ignore-errors    instead of aborting, continue to next file on error
#pod     -c --config        config file to use; defaults to ~/.pause
#pod     --md5              compute MD5 checksums of the files
#pod
#pod =head1 CONFIGURATION
#pod
#pod If you have a C<.pause> file in your home directory, it will be checked for a
#pod username and password.  It should look like this:
#pod
#pod   user EXAMPLE
#pod   password your-secret-password
#pod
#pod You can GnuPG-encrypt this file if you wish:
#pod
#pod     # Follow the prompts, setting your key as the "recipient"
#pod     # Use ^D once you've finished typing out your authentication information
#pod     gpg -ea > $HOME/.pause
#pod     # OR, encrypt a file you already created:
#pod     gpg -ea $HOME/.pause && mv $HOME/.pause{.asc,}
#pod
#pod =head1 SEE ALSO
#pod
#pod =over 4
#pod
#pod =item L<CPAN::Uploader>
#pod
#pod =item L<Config::Identity>
#pod
#pod =back
#pod
#pod =cut

my %arg;

# This nonsensical hack is to cope with Module::Install wanting to call
# cpan-upload -verbose; it should be made to use CPAN::Uploader instead.
$ARGV[0] = '--verbose' if @ARGV == 2 and $ARGV[0] eq '-verbose';

# Process arguments
my ($opt, $usage) = describe_options(
	"usage: %c [options] file-to-upload",

  [ "verbose|v" => "enable verbose logging" ],
  [ "help|h"    => "display this help message" ],
  [ "dry-run"   => "do not actually upload anything" ],
  [],
  [ "user|u=s"      => "your PAUSE username" ],
  [ "password|p=s"  => "the password to your PAUSE account" ],
  [ "directory|d=s" => "a dir in your CPAN space in which to put the files" ],
  [ "http-proxy=s"  => "URL of the http proxy to use in uploading" ],
  [ "ignore-errors" => "instead of aborting, continue to next file on error" ],
  [ "config|c=s"    => "config file to use; defaults to ~/.pause" ],
  [ "md5"           => "compute MD5 checksums of the files" ],
);

if ($opt->help) {
  print $usage->text;
  exit;
}

my $from_file = CPAN::Uploader->read_config_file($opt->config);

die "Please provide at least one file name.\n" . $usage unless @ARGV;

$arg{user} = $opt->_specified('user') ? $opt->user : $from_file->{user};

die "Please provide a value for --user\n" unless defined $arg{user};

$arg{user} = uc $arg{user};

$arg{password} = $opt->password if $opt->_specified('password');

if (
  ! $arg{password}
  and defined $from_file->{user}
  and ($arg{user} eq uc $from_file->{user})
) {
  $arg{password} = $from_file->{password};
}

$arg{debug}  = 1 if $opt->verbose;
$arg{subdir} = $opt->directory if defined $opt->directory;

$arg{ $_ } = $opt->$_ for grep { defined $opt->$_ } qw(dry_run http_proxy);

if (! $arg{password}) {
  require Term::ReadKey;
  local $| = 1;
  print "PAUSE Password: ";
  Term::ReadKey::ReadMode('noecho');
  chop($arg{password} = <STDIN>);
  Term::ReadKey::ReadMode('restore');
  print "\n";
}

my $md5;

foreach my $file (@ARGV) {
  my $ok = eval {
    CPAN::Uploader->upload_file(
      $file,
      \%arg,
    );
    1;
  };
  if ($ok) {
    if ($opt->md5) {
      if ($md5) {
        $md5->reset;
      } else {
        require Digest::MD5;
        $md5 = Digest::MD5->new;
      }
      open my $fh, '<', $file or die "can't open $file for reading: $!";
      my $digest = do {
        local $@;
        eval {
          $md5->addfile($fh)->hexdigest;
        };
      };
      if (defined $digest) {
        print "md5: $digest\n";
      }
    }
  } else {
    my $error = $@;
    die $@ unless $opt->ignore_errors;
    warn $@;
  }
}

__END__

=pod

=encoding UTF-8

=head1 NAME

cpan-upload - upload a distribution to the CPAN

=head1 VERSION

version 0.103010

=head1 USAGE

  usage: cpan-upload [options] file-to-upload-1 [ file-to-upload-2 ... ]
    -v --verbose       enable verbose logging
    -h --help          display this help message
    --dry-run          do not actually upload anything

    -u --user          your PAUSE username
    -p --password      the password to your PAUSE account
    -d --directory     a dir in your CPAN space in which to put the file
    --http-proxy       URL of the http proxy to use in uploading
    --ignore-errors    instead of aborting, continue to next file on error
    -c --config        config file to use; defaults to ~/.pause
    --md5              compute MD5 checksums of the files

=head1 CONFIGURATION

If you have a C<.pause> file in your home directory, it will be checked for a
username and password.  It should look like this:

  user EXAMPLE
  password your-secret-password

You can GnuPG-encrypt this file if you wish:

    # Follow the prompts, setting your key as the "recipient"
    # Use ^D once you've finished typing out your authentication information
    gpg -ea > $HOME/.pause
    # OR, encrypt a file you already created:
    gpg -ea $HOME/.pause && mv $HOME/.pause{.asc,}

=head1 SEE ALSO

=over 4

=item L<CPAN::Uploader>

=item L<Config::Identity>

=back

=head1 AUTHOR

Ricardo SIGNES <rjbs@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2015 by Ricardo SIGNES.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

__END__
:endofperl
