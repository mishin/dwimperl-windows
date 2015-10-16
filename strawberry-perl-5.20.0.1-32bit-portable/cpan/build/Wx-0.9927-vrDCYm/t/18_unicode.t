#!/usr/bin/perl -w

use strict;
use Wx;
use lib './t';
use Tests_Helper qw(in_frame);
use Test::More 'tests' => 12;
use encoding qw(iso-8859-1);
use Encode qw(is_utf8);

my $ascii   = 'Abcde';
my $ascii2  = 'XXX';
my $latin1  = '�bcd�';
my $unicode = "\x{1234}";

# needs to be upgraded to characters because wxPerl converts
# based upon the current locale, which might not be Latin-1
utf8::upgrade( $latin1 ); # safe beacuse it's latin1

in_frame(
    sub {
        my $self = shift;

        my $label = Wx::StaticText->new( $self, -1, $ascii );
        is( $label->GetLabel, $ascii );

        $label->SetLabel( $ascii2 );
        is( $label->GetLabel, $ascii2 );

        SKIP: {
            skip "Only meaningful in ANSI mode", 4
                if Wx::wxUNICODE;

            # it would be better to use the latin1 label, but it might
            # not round trip if the GUI locale is not latin1
            $label->SetLabel( $ascii );

            Wx::SetAlwaysUTF8( 1 );
            is( $label->GetLabel, $ascii );
            ok( is_utf8( $label->GetLabel ) );

            Wx::SetAlwaysUTF8( 0 );
            is( $label->GetLabel, $ascii );
            ok( !is_utf8( $label->GetLabel ) );
        };

        SKIP: {
            skip "Unicode support needed for the tests", 6
                unless Wx::wxUNICODE;
            skip "wrongly asserts under 2.5.x", 6
                if Wx::wxVERSION < 2.006;

            $label->SetLabel( $latin1 );
            is( $label->GetLabel, $latin1 );

            ok( is_utf8( $latin1 ) );
            ok( is_utf8( $label->GetLabel ) );

            $label->SetLabel( $unicode );
            is( $label->GetLabel, $unicode );

            ok( is_utf8( $unicode ) );
            ok( is_utf8( $label->GetLabel ) );
        }
    } );
