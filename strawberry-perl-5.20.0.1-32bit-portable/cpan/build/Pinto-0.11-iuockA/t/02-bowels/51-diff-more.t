#!perl

use strict;
use warnings;

use Test::More;

use Pinto::Difference;

use lib 't/lib';
use Pinto::Tester;
use Pinto::Constants qw(:diff);
use Pinto::Tester::Util qw(make_dist_archive);

#------------------------------------------------------------------------------
my $dist1 = make_dist_archive('AUTHOR/Dist-1 = PkgA~1; PkgB~1');
my $dist2 = make_dist_archive('AUTHOR/Dist-2 = PkgB~2; PkgC~2');

my $t = Pinto::Tester->new;

$t->run_ok( Add  => { archives => $dist1, author => 'AUTHOR', stack => 'master' } );
$t->run_ok( Copy => { stack => 'master', to_stack => 'foo' } );
$t->run_ok( Add  => { archives => $dist2, author => 'AUTHOR', stack => 'foo' } );
$t->run_ok( Pin  => { targets => 'PkgC', stack => 'foo' } );

local $ENV{PINTO_DIFF_STYLE} = $PINTO_DIFF_STYLE_CONCISE;
#------------------------------------------------------------------------------

sub linere { map { qr{^ \Q$_\E $}mx } @_ }

subtest 'basic comparisons' => sub {

    my @expected = (
        '-[rl-] AUTHOR/Dist-1.tar.gz',
        '+[rl!] AUTHOR/Dist-2.tar.gz',
    );

    # Compare by revision id
    my $rev0 = $t->get_stack('master')->head->uuid;
    my $rev1 = $t->get_stack('foo')->head->uuid;
    $t->run_ok( Diff => { left => $rev0, right => $rev1 } );
    $t->stdout_like($_) for linere(@expected);

    # With abbreviated revision id
    $rev0 = substr( $rev0, 0, 4 );
    $rev1 = substr( $rev1, 0, 4 );
    $t->run_ok( Diff => { left => $rev0, right => $rev1 } );
    $t->stdout_like($_) for linere(@expected);

    # With stack name and revision id
    $t->run_ok( Diff => { left => 'master', right => $rev1 } );
    $t->stdout_like($_) for linere(@expected);

    # With a custom diff format
    $t->run_ok( Diff => { left => $rev0, right => $rev1, format => '%o[%F] %a/%f %s %S' } );
    $t->stdout_like($_) for linere(map { "$_ l LOCAL" } @expected);

};

#------------------------------------------------------------------------------
subtest 'basic comparisons with bogus data' => sub {

    # Error case: bogus stack name or revision id
    $t->run_throws_ok(
        Diff => { left => 'foo', right => 'bogus' },
        qr/does not match any stack or revision/
    );

    # Forcing revision IDs to have same prefix
    my $rev0 = $t->get_stack('master')->head;
    $rev0->update( { uuid => 'aaa' . $rev0->uuid } );

    my $rev1 = $t->get_stack('foo')->head;
    $rev1->update( { uuid => 'aaa' . $rev1->uuid } );

    # Error case: ambiguous revision IDs
    $t->run_throws_ok(
        Diff => { left => undef, right => 'aaa' },
        qr/is ambiguous/
    );

    # Error case: no default stack
    $t->run_ok( Default => { none => 1 } );
    $t->run_throws_ok(
        Diff => { left => undef, right => 'foo' },
        qr/default stack has not been set/
    );

};

#------------------------------------------------------------------------------

done_testing;
