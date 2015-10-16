# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl 1.t'

#########################

# change 'tests => 1' to 'tests => last_test_to_print';

use Test::More; # tests => 5;
#BEGIN { use_ok('Sys::SigAction') };

use Sys::SigAction;
#########################

# Insert your test code below, the Test::More module is use()ed here so read
# its man page ( perldoc Test::More ) for help writing this test script.

use strict;
#use warnings;

use Carp qw( carp cluck croak confess );
use Data::Dumper;
use Sys::SigAction qw( set_sig_handler );
use POSIX  ':signal_h' ;

my @levels = ( 0 ,0 ,0 ,0 );
sub sighandler { print "level 1\n" ; $levels[1] = 2; }

#plan is a follows:
#
#  A test that sets signal handlers in nested blocks, and tests that
#  at each level of nesting, the signal handler at the next level up
#  is still valid (for the same signal).  The idea is that the scope of
#  the block prevents the next level up signal handle from being overwritten.
#
#global... should be good at the end...

my $tests = 4;
plan tests => $tests;
my $ctx0 = set_sig_handler( SIGALRM ,sub { print "level 0\n" ; $levels[0] = 1; } );

eval {
   my $ctx1 = set_sig_handler( 'ALRM' ,'sighandler' ); 
   #print Dumper( $ctx1 );
   if ( 1 ) { 
      eval {
         my $ctx2 = set_sig_handler( SIGALRM ,sub { print "level 2\n"; $levels[2] = 3; } );
         eval {
            my $ctx3 = set_sig_handler( 'ALRM' ,sub {  print "level 3\n"; $levels[3] = 4; } );
            kill ALRM => $$;
            #undef $ctx3;
         };
         if ($@) { warn "handler died: $@\n"; }
         kill ALRM => $$;
      };
      if ( $@ ) { warn "error: $@\n"; }
   }
   kill ALRM => $$;
};
if ( $@ ) { warn "error: $@\n"; }


eval {
   kill ALRM => $$;
};
if ($@ ) { warn "error :$@\n"; }

my $i = 0;
foreach my $level ( @levels )
{
   ok( $level ,"level $i is not 0" );
   print "level $i = $level\n" ;
   $i++;
}

exit;
