# This file is auto-generated by the Perl DateTime Suite time zone
# code generator (0.07) This code generator comes with the
# DateTime::TimeZone module distribution in the tools/ directory

#
# Generated from /tmp/UNiybD7GUE/australasia.  Olson data version 2014c
#
# Do not edit this file directly.
#
package DateTime::TimeZone::Pacific::Chuuk;
$DateTime::TimeZone::Pacific::Chuuk::VERSION = '1.69';
use strict;

use Class::Singleton 1.03;
use DateTime::TimeZone;
use DateTime::TimeZone::OlsonDB;

@DateTime::TimeZone::Pacific::Chuuk::ISA = ( 'Class::Singleton', 'DateTime::TimeZone' );

my $spans =
[
    [
DateTime::TimeZone::NEG_INFINITY, #    utc_start
59958193972, #      utc_end 1900-12-31 13:52:52 (Mon)
DateTime::TimeZone::NEG_INFINITY, #  local_start
59958230400, #    local_end 1901-01-01 00:00:00 (Tue)
36428,
0,
'LMT',
    ],
    [
59958193972, #    utc_start 1900-12-31 13:52:52 (Mon)
DateTime::TimeZone::INFINITY, #      utc_end
59958229972, #  local_start 1900-12-31 23:52:52 (Mon)
DateTime::TimeZone::INFINITY, #    local_end
36000,
0,
'CHUT',
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
