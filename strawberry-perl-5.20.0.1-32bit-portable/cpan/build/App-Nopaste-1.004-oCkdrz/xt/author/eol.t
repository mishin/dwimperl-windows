use strict;
use warnings;

# this test was generated with Dist::Zilla::Plugin::Test::EOL 0.17

use Test::More 0.88;
use Test::EOL;

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
    't/002-encoding.t'
);

eol_unix_ok($_, { trailing_whitespace => 1 }) foreach @files;
done_testing;
