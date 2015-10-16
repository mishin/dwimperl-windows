# This file is auto-generated by the Perl DateTime Suite time zone
# code generator (0.07) This code generator comes with the
# DateTime::TimeZone module distribution in the tools/ directory

#
# Generated from /tmp/UNiybD7GUE/africa.  Olson data version 2014c
#
# Do not edit this file directly.
#
package DateTime::TimeZone::Africa::Lome;
$DateTime::TimeZone::Africa::Lome::VERSION = '1.69';
use strict;

use Class::Singleton 1.03;
use DateTime::TimeZone;
use DateTime::TimeZone::OlsonDB;

@DateTime::TimeZone::Africa::Lome::ISA = ( 'Class::Singleton', 'DateTime::TimeZone' );

my $spans =
[
    [
DateTime::TimeZone::NEG_INFINITY, #    utc_start
59705855708, #      utc_end 1892-12-31 23:55:08 (Sat)
DateTime::TimeZone::NEG_INFINITY, #  local_start
59705856000, #    local_end 1893-01-01 00:00:00 (Sun)
292,
0,
'LMT',
    ],
    [
59705855708, #    utc_start 1892-12-31 23:55:08 (Sat)
DateTime::TimeZone::INFINITY, #      utc_end
59705855708, #  local_start 1892-12-31 23:55:08 (Sat)
DateTime::TimeZone::INFINITY, #    local_end
0,
0,
'GMT',
    ],
];

sub olson_version { '2014c' }

sub has_dst_changes { 0 }

sub _max_year { 2024 }

sub _new_instance
{
    return shift->_init( @_, spans => $spans );
}



1;

