#!/usr/bin/perl -w
#############################################################################
## Name:        samples/trivial/trivial.pl
## Purpose:     Trivial wxPerl sample
## Author:      Mattia Barbon
## Modified by:
## Created:     24/09/2006
## RCS-ID:      $Id: trivial.pl 2057 2007-06-18 23:03:00Z mbarbon $
## Copyright:   (c) 2006 Mattia Barbon
## Licence:     This program is free software; you can redistribute it and/or
##              modify it under the same terms as Perl itself
#############################################################################

use strict;

use Wx;

my $app = Wx::SimpleApp->new;
my $frame = Wx::Frame->new( undef, -1, "Trivial Sample" );
$frame->Show;
$app->MainLoop;
