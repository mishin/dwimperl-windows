use strict;
use warnings;

# this test was generated with Dist::Zilla::Plugin::Test::NoTabs 0.09

use Test::More 0.88;
use Test::NoTabs;

my @files = (
    'lib/MooseX/SimpleConfig.pm',
    't/00-report-prereqs.dd',
    't/00-report-prereqs.t',
    't/01use.t',
    't/10simple.t',
    't/11default.t',
    't/12config_any_args.t',
    't/lib/MXDefaultConfigTest.pm',
    't/lib/MXDefaultMultipleConfigsTest.pm',
    't/lib/MXDriverArgsConfigTest.pm',
    't/lib/MXSimpleConfigTest.pm',
    't/multiple.t',
    't/zzz-check-breaks.t',
    'xt/author/00-compile.t',
    'xt/author/clean-namespaces.t',
    'xt/author/eol.t',
    'xt/author/no-tabs.t',
    'xt/author/pod-spell.t',
    'xt/release/changes_has_content.t',
    'xt/release/cpan-changes.t',
    'xt/release/distmeta.t',
    'xt/release/kwalitee.t',
    'xt/release/minimum-version.t',
    'xt/release/mojibake.t',
    'xt/release/pod-coverage.t',
    'xt/release/pod-no404s.t',
    'xt/release/pod-syntax.t',
    'xt/release/portability.t'
);

notabs_ok($_) foreach @files;
done_testing;
