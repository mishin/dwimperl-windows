#!perl

use strict;
use warnings;

use Test::More;
use Test::Exception;
use Path::Class;

use Pinto::Util qw(:all);
use Pinto::Constants qw(:all);

#-----------------------------------------------------------------------------
subtest 'validate globals' => sub {

    isnt( current_username, '__ME__', 'Actual user' );
    local $Pinto::Globals::current_username = '__ME__';
    is( current_username, '__ME__', 'Override user' );

    isnt( current_utc_time, -9, 'Actual time' );
    local $Pinto::Globals::current_utc_time = -9;
    is( current_utc_time, -9, 'Override time' );

    isnt( current_time_offset, -9, 'Actual time offset' );
    local $Pinto::Globals::current_time_offset = -9;
    is( current_time_offset, -9, 'Override time offset' );

    isnt( is_interactive, -9, 'Actual interactive state' );
    local $Pinto::Globals::is_interactive = -9;
    is( is_interactive, -9, 'Override interactive state' );

    local $Pinto::Globals::current_username = 'foo.bar-baz';
    is( current_author_id, 'FOOBARBAZ', 'Convert username to author id' );

};

#-----------------------------------------------------------------------------
subtest 'validate author path' => sub {

    my $author = 'joseph';
    my $expect = dir(qw(J JO JOSEPH));

    is( Pinto::Util::author_dir($author), $expect, 'Author dir path for joseph' );

};

#-----------------------------------------------------------------------------
subtest 'validate author path (short)' => sub {

    my $author = 'JO';
    my $expect = dir(qw(J JO JO));

    is( Pinto::Util::author_dir($author), $expect, 'Author dir path for JO' );

};

#-----------------------------------------------------------------------------
subtest 'validate author path with base' => sub {

    my $author = 'Mike';
    my @base   = qw(a b);
    my $expect = dir(qw(a b M MI MIKE));

    is( Pinto::Util::author_dir( @base, $author ), $expect, 'Author dir with base' );

};

#-----------------------------------------------------------------------------
subtest 'find distribution' => sub {

    my @cases = qw( A/AU/AUTHOR/Dist-1.0.tar.gz
        A/AU/AUTHOR/subdir/Dist-1.0.tar.gz
        whatever/authors/id/A/AU/AUTHOR/subdir/Dist-1.0.tar.gz
        http://foo.com/whatever/authors/id/A/AU/AUTHOR/subdir/Dist-1.0.tar.gz );

    my $expect_auth    = 'AUTHOR';
    my $expect_archive = 'Dist-1.0.tar.gz';

    for my $case (@cases) {
        my ( $got_auth, $got_archive ) = Pinto::Util::parse_dist_path($case);
        is( $got_auth,    $expect_auth,    "Parsed author from $case" );
        is( $got_archive, $expect_archive, "Parsed archive from $case" );
    }

};

#-----------------------------------------------------------------------------
subtest 'title_text()' => sub {

    is( title_text("foo"),      'foo' );
    is( title_text("foo\nbar"), 'foo' );
    is( title_text("\nbar"),    '' );

};

#-----------------------------------------------------------------------------
subtest 'body_text()' => sub {

    is( body_text("foo"),        '' );
    is( body_text("foo\n"),      '' );
    is( body_text("foo\nbar\n"), "bar\n" );

};

#-----------------------------------------------------------------------------
subtest 'indent_text()' => sub {

    is( indent_text("foo"), "foo" );
    is( indent_text( "foo\nbar",  2 ), "  foo\n  bar" );
    is( indent_text( "\nfoo\n\n", 2 ), "  \n  foo\n  \n" );

};

#-----------------------------------------------------------------------------
subtest 'truncate_text()' => sub {

    is( truncate_text( "foobar", 3 ), "foo..." );
    is( truncate_text( "foobar", 6 ), "foobar" );
    is( truncate_text( "foobar", 0 ), "foobar" );
    is( truncate_text( "foobar", 3, '-' ), "foo-" );

};

#-----------------------------------------------------------------------------
subtest 'is_blank()' => sub {

    is( is_blank(),             1 );
    is( is_blank(""),           1 );
    is( is_blank(" \n\t\r\f "), 1 );
    is( is_blank("foo"),        0 );

};

#-----------------------------------------------------------------------------
subtest 'diff styles' => sub {

    local $ENV{PINTO_DIFF_STYLE} = '';
    is default_diff_style, $PINTO_DIFF_STYLE_CONCISE, 
        'Got default diff style';

    local $ENV{PINTO_DIFF_STYLE} = 'detailed';
    is default_diff_style, $PINTO_DIFF_STYLE_DETAILED, 
        'Got default diff style from ENV';

    local $ENV{PINTO_DIFF_STYLE} = 'pretty';
    throws_ok { default_diff_style() } qr/\QPINTO_DIFF_STYLE (pretty) is invalid\E/, 
        'Invalid default diff style from ENV';

};

#-----------------------------------------------------------------------------

done_testing;

