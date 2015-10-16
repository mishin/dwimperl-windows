use strict;
use warnings;

# this test was generated with Dist::Zilla::Plugin::Test::NoTabs 0.13

use Test::More 0.88;
use Test::NoTabs;

my @files = (
    'lib/App/Nopaste.pm',
    'lib/App/Nopaste/Command.pm',
    'lib/App/Nopaste/Service.pm',
    'lib/App/Nopaste/Service/Codepeek.pm',
    'lib/App/Nopaste/Service/Debian.pm',
    'lib/App/Nopaste/Service/Gist.pm',
    'lib/App/Nopaste/Service/Mojopaste.pm',
    'lib/App/Nopaste/Service/PastebinCom.pm',
    'lib/App/Nopaste/Service/Pastie.pm',
    'lib/App/Nopaste/Service/Shadowcat.pm',
    'lib/App/Nopaste/Service/Snitch.pm',
    'lib/App/Nopaste/Service/Ubuntu.pm',
    'lib/App/Nopaste/Service/ssh.pm',
    'script/nopaste',
    't/00-report-prereqs.dd',
    't/00-report-prereqs.t',
    't/000-load.t',
    't/001-subclass_cmd.t',
    't/002-encoding.t',
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
    'xt/release/pod-syntax.t',
    'xt/release/portability.t'
);

notabs_ok($_) foreach @files;
done_testing;
