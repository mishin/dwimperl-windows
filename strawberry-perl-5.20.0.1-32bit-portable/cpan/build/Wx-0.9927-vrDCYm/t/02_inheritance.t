#!/usr/bin/perl -w

use strict;
use Wx;
BEGIN { require Wx::ArtProvider if Wx::wxVERSION >= 2.005002; }
use lib './t';

use Test::More 'no_plan';
use Tests_Helper qw(:inheritance);

test_inheritance_all();

# Local variables: #
# mode: cperl #
# End: #
