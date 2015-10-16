use strict;
use warnings;

# this test was generated with Dist::Zilla::Plugin::Test::CheckBreaks 0.011

use Test::More 0.88;

SKIP: {
    eval 'require Moose::Conflicts; Moose::Conflicts->check_conflicts';
    skip('no Moose::Conflicts module found', 1) if not $INC{'Moose/Conflicts.pm'};

    diag $@ if $@;
    pass 'conflicts checked via Moose::Conflicts';
}

pass 'no x_breaks data to check';

done_testing;
