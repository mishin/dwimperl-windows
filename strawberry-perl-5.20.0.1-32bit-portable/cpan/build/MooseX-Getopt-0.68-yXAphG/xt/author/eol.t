use strict;
use warnings;

# this test was generated with Dist::Zilla::Plugin::Test::EOL 0.17

use Test::More 0.88;
use Test::EOL;

my @files = (
    'lib/MooseX/Getopt.pm',
    'lib/MooseX/Getopt/Basic.pm',
    'lib/MooseX/Getopt/Dashes.pm',
    'lib/MooseX/Getopt/GLD.pm',
    'lib/MooseX/Getopt/Meta/Attribute.pm',
    'lib/MooseX/Getopt/Meta/Attribute/NoGetopt.pm',
    'lib/MooseX/Getopt/Meta/Attribute/Trait.pm',
    'lib/MooseX/Getopt/Meta/Attribute/Trait/NoGetopt.pm',
    'lib/MooseX/Getopt/OptionTypeMap.pm',
    'lib/MooseX/Getopt/ProcessedArgv.pm',
    'lib/MooseX/Getopt/Strict.pm',
    't/00-report-prereqs.dd',
    't/00-report-prereqs.t',
    't/001_basic.t',
    't/002_custom_option_type.t',
    't/003_inferred_option_type.t',
    't/004_nogetop.t',
    't/005_strict.t',
    't/006_metaclass_traits.t',
    't/007_nogetopt_trait.t',
    't/008_configfromfile.t',
    't/009_gld_and_explicit_options.t',
    't/010_dashes.t',
    't/011_process_argv.t',
    't/100_gld_default_bug.t',
    't/101_argv_bug.t',
    't/102_basic_basic.t',
    't/103_uc_bug.t',
    't/104_override_usage.t',
    't/105_uc_bug_more.t',
    't/106_no_ignore_case.t',
    't/107_no_auto_help.t',
    't/107_union_bug.t',
    't/108_usage_attr.t',
    't/109_help_flag.t',
    't/110_sort_usage_by_attr_order.t',
    't/111_gld_pass_through.t',
    't/112_configfile_constructor_arg.t',
    't/112_configfile_constructor_arg.yml',
    't/113_moosex_strictconstructor.t',
    't/zzz-check-breaks.t'
);

eol_unix_ok($_, { trailing_whitespace => 1 }) foreach @files;
done_testing;
