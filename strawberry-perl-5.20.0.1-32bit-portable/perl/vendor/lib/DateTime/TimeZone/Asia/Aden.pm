# This file is auto-generated by the Perl DateTime Suite time zone
# code generator (0.07) This code generator comes with the
# DateTime::TimeZone module distribution in the tools/ directory

#
# Generated from /tmp/UNiybD7GUE/asia.  Olson data version 2014c
#
# Do not edit this file directly.
#
package DateTime::TimeZone::Asia::Aden;
$DateTime::TimeZone::Asia::Aden::VERSION = '1.69';
use strict;

use Class::Singleton 1.03;
use DateTime::TimeZone;
use DateTime::TimeZone::OlsonDB;

@DateTime::TimeZone::Asia::Aden::ISA = ( 'Class::Singleton', 'DateTime::TimeZone' );

my $spans =
[
    [
DateTime::TimeZone::NEG_INFINITY, #    utc_start
61504520406, #      utc_end 1949-12-31 21:00:06 (Sat)
DateTime::TimeZone::NEG_INFINITY, #  local_start
61504531200, #    local_end 1950-01-01 00:00:00 (Sun)
10794,
0,
'LMT',
    ],
    [
61504520406, #    utc_start 1949-12-31 21:00:06 (Sat)
DateTime::TimeZone::INFINITY, #      utc_end
61504531206, #  local_start 1950-01-01 00:00:06 (Sun)
DateTime::TimeZone::INFINITY, #    local_end
10800,
0,
'AST',
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
