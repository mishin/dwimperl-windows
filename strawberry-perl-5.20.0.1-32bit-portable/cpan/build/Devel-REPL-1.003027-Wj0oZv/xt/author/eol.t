use strict;
use warnings;

# this test was generated with Dist::Zilla::Plugin::Test::EOL 0.18

use Test::More 0.88;
use Test::EOL;

my @files = (
    'examples/dbic_project_profile.pl',
    'lib/Devel/REPL.pm',
    'lib/Devel/REPL/Error.pm',
    'lib/Devel/REPL/Meta/Plugin.pm',
    'lib/Devel/REPL/Overview.pod',
    'lib/Devel/REPL/Plugin.pm',
    'lib/Devel/REPL/Plugin/B/Concise.pm',
    'lib/Devel/REPL/Plugin/Colors.pm',
    'lib/Devel/REPL/Plugin/Commands.pm',
    'lib/Devel/REPL/Plugin/Completion.pm',
    'lib/Devel/REPL/Plugin/CompletionDriver/Globals.pm',
    'lib/Devel/REPL/Plugin/CompletionDriver/INC.pm',
    'lib/Devel/REPL/Plugin/CompletionDriver/Keywords.pm',
    'lib/Devel/REPL/Plugin/CompletionDriver/LexEnv.pm',
    'lib/Devel/REPL/Plugin/CompletionDriver/Methods.pm',
    'lib/Devel/REPL/Plugin/CompletionDriver/Turtles.pm',
    'lib/Devel/REPL/Plugin/DDC.pm',
    'lib/Devel/REPL/Plugin/DDS.pm',
    'lib/Devel/REPL/Plugin/DumpHistory.pm',
    'lib/Devel/REPL/Plugin/FancyPrompt.pm',
    'lib/Devel/REPL/Plugin/FindVariable.pm',
    'lib/Devel/REPL/Plugin/History.pm',
    'lib/Devel/REPL/Plugin/Interrupt.pm',
    'lib/Devel/REPL/Plugin/LexEnv.pm',
    'lib/Devel/REPL/Plugin/MultiLine/PPI.pm',
    'lib/Devel/REPL/Plugin/Nopaste.pm',
    'lib/Devel/REPL/Plugin/OutputCache.pm',
    'lib/Devel/REPL/Plugin/PPI.pm',
    'lib/Devel/REPL/Plugin/Packages.pm',
    'lib/Devel/REPL/Plugin/Peek.pm',
    'lib/Devel/REPL/Plugin/ReadLineHistory.pm',
    'lib/Devel/REPL/Plugin/Refresh.pm',
    'lib/Devel/REPL/Plugin/ShowClass.pm',
    'lib/Devel/REPL/Plugin/Timing.pm',
    'lib/Devel/REPL/Plugin/Turtles.pm',
    'lib/Devel/REPL/Profile.pm',
    'lib/Devel/REPL/Profile/Default.pm',
    'lib/Devel/REPL/Profile/Minimal.pm',
    'lib/Devel/REPL/Profile/Standard.pm',
    'lib/Devel/REPL/Script.pm',
    'script/re.pl',
    't/00-report-prereqs.dd',
    't/00-report-prereqs.t',
    't/load_core.t',
    't/load_plugins.t',
    'xt/author/00-compile.t',
    'xt/author/clean-namespaces.t',
    'xt/author/eol.t',
    'xt/author/kwalitee.t',
    'xt/author/mojibake.t',
    'xt/author/no-tabs.t',
    'xt/release/changes_has_content.t',
    'xt/release/cpan-changes.t',
    'xt/release/distmeta.t',
    'xt/release/minimum-version.t',
    'xt/release/pod-no404s.t',
    'xt/release/pod-syntax.t',
    'xt/release/portability.t'
);

eol_unix_ok($_, { trailing_whitespace => 1 }) foreach @files;
done_testing;
