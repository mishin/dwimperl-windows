# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
use 5.005;
use ExtUtils::MakeMaker;
# add a number of tests to stop the smoke testers from reporting Failed
# in unsupported environments
#
print "Checking for Microsoft Windows... (not supported)\n";
if ( $^O =~ /MSWin32/ ) {
   die q{ 
   
   OS unsupported

   Sys::SigAction is not Supported on on $^O operating systems
   if you can make all or most of the tests work on this OS, then 
   please send patches to me, and I will consider them for a new 
   release that supports $^O.

   Note that smoke testers have had successful results in a Cygwin
   environment however.  So if you want to write scripts using
   signals on a Win32 environment consider Cygwin Bash.

   Lincoln
   };
}

print "Checking for multi-threaded Perl... (warning)\n";
use Config;
eval "use threads";
#belt and suspenders....
if ( ! $@ || $Config{usethreads} || $Config{useithreads} || $Config{use5005threads} ) {
   warn q{ 
   
   This perl has multithread support enabled, this is not a problem for
   single threaded perl applications.
   
   Please see "MULTITHREAD PERL" in the Sys::SigAction POD for more information.

   Lincoln

   };
}

print "Checking support for signals... (required)\n";
if ( ! defined $Config{sig_name} ) {
   die q{
       Signals are not supported in this OS or perl version.
   }
}

#is sigaction enabled?
print "Checking support for POSIX::sigaction... (required)\n";
if ( ( $] >= 5.008 ) && 
   ! ( $Config{useposix} && $Config{d_sigaction} ) ) {
   die q{ 
   
   This perl is not supported.
   Perl must be built with 'useposix' and 'sigaction' defined.

   };
}

print "Checking for armv5tejl... (not supported)\n";
#belt and suspenders....
if ( $Config{archname} =~ m/armv5tejl/ ) {
   die q{

   Sys::SigAction is not supported on armv5tejl systems.
   I have communicated with the smoke tester on this OS, 
   and we believe that the base perl implementation of 
   POSIX:sigaction is probably the root cause.

   if you want to use this module anyway, or work on getting
   it supported by fixing the perl port, you can uncomment out
   this section of Makefile.PL to build Sys::SigAction.

   };
}

print "Checking for cygwin... (masking signals is broken on some versions at least)\n";
if ( $^O =~ /cygwin/ ) {
   warn q(
   Smoke testers have discovered that t/mask.t fails on at least
   some verions cygwin. Specific versions of the os and perl
   are now protected... but others may be found. On these platforms
   masking signals probably does not work. See the hash reference
   \$broken_platforms for platforms known to be broken.

   );
}

my $SAAD = "lib/Sys/SigAction" ;
my $SAA = "$SAAD/Alarm.pm" ;
print "Writing $SAA\n" ;
mkdir $SAAD if ( not -d $SAAD );

open( SAH, ">$SAA" );
print SAH q(
package Sys::SigAction::Alarm;
require 5.005;
use strict;
#use warnings;
use vars qw( @ISA @EXPORT_OK );
require Exporter;
@ISA = qw( Exporter );
@EXPORT_OK = qw( ssa_alarm );
my $have_hires = scalar eval 'use Time::HiRes; Time::HiRes::ualarm(0); 1;';
use POSIX qw( INT_MAX ceil ) ;
my $hrworks; 
sub ssa_alarm($)
{
   my $secs = shift;
   #print  print "secs=$secs\n";

   if ( $hrworks and ($secs le (INT_MAX()/1_000_000.0) ) )
   {
      Time::HiRes::ualarm( $secs * 1_000_000 );
   }
   else
   {
      alarm( ceil( $secs ) );
   }
}

sub hires_works { return $hrworks; }; #test support

);

print "Looking for Time::HiRes with a working ualarm()... \n" ; 
use constant HR => eval 'use Time::HiRes; Time::HiRes::ualarm(0); 1;' ;
sub forever { pause(); }
sub handler { die "TIMEDOUT"; }
my $et, $st;
my $hr_works = 0;
if ( not HR )
{
   print q(
   Time::HiRes is not installed.
   High resolution timeouts disabled.
);
}
else {
   print "Testing Time::HiRes::ualarm()\n" ;
   $SIG{'ALRM'} = \&handler;
   eval {
      $st = Time::HiRes::time();
      eval {
         Time::HiRes::ualarm( 0.1 * 1_000_000 );
         forever();
      };
      Time::HiRes::ualarm( 0 );
      $et = Time::HiRes::time();
      #print "outside forever eval\n" ;
   };
   Time::HiRes::ualarm( 0 );
   my $delta = $et - $st;
   if ( $delta < 0.8 ) {
      print qq( 
   Time::HiRes::ualarm() exists and works.
   High resolution timeouts enabled." 
);
    $hr_works = 1;
   }
   else
   {
      warn qq(
   Time::HiRes exists on this platform but Time::HiRes::ualarm()
   appears to be broken.  High resolution timeouts disabled.
);
   }
}
print SAH '$hrworks = '."$hr_works; 1;\n" ;
close( SAH );
print "\nWrote $SAA\n" ;

if ( not $hr_works ) {
   warn qq(
   Fractional seconds in timeout_call() may be used but will be 
   raised to the next higher integer value with POSIX::ceil().
);
}

#ok... enough defensiveness... 
my $args = {
    'NAME'		=> 'Sys::SigAction',
    'VERSION_FROM'	=> 'lib/Sys/SigAction.pm', # finds $VERSION
    'PREREQ_PM'		=> {
       'Test::More'  =>  0
       ,POSIX => 0 
    }, # e.g., Module::Name => 1.1
    'ABSTRACT_FROM' => 'lib/Sys/SigAction.pm', # retrieve abstract from module
    'AUTHOR'     => 'Lincoln A. Baxter <lab-at-lincolnbaxter-dot-com>' 
};

print "MakeMaker version = $ExtUtils::MakeMaker::VERSION\n";
if ($ExtUtils::MakeMaker::VERSION >= 6.3002 ) {
   $args->{LICENSE} = 'perl';
}

WriteMakefile( %$args );

