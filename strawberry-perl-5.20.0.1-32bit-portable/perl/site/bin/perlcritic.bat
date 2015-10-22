@rem = '--*-Perl-*--
@echo off
if "%OS%" == "Windows_NT" goto WinNT
perl -x -S "%0" %1 %2 %3 %4 %5 %6 %7 %8 %9
goto endofperl
:WinNT
perl -x -S %0 %*
if NOT "%COMSPEC%" == "%SystemRoot%\system32\cmd.exe" goto endofperl
if %errorlevel% == 9009 echo You do not have Perl in your PATH.
if errorlevel 1 goto script_failed_so_exit_with_non_zero_val 2>nul
goto endofperl
@rem ';
#!c:\Users\TOSH\Documents\job\perl\strawberry-perl-5.20.0.1-32bit-PDL\perl\bin\perl.exe 
#line 15

package main;

use 5.006001;
use strict;
use warnings;

use Perl::Critic::Command qw< run >;

#-----------------------------------------------------------------------------

our $VERSION = '1.126';

#-----------------------------------------------------------------------------
# Begin program.  Don't run when loaded as a library

# This %ENV check is to allow perlcritic to function when bundled under PAR,
# which invokes this program not as the top stack frame. -- rjbs, 2008-08-11
exit run() if not caller or $ENV{PAR_0};

#-----------------------------------------------------------------------------
1;

__END__

#-----------------------------------------------------------------------------

=pod

=for stopwords DGR INI-style vim-fu minibuffer -noprofile API
-profileproto -profile-proto ben Jore formatter Peshak pbp Komodo
screenshots tty emacs gVIM plugin Perlish templating ActivePerl
ActiveState Twitter

=head1 NAME

C<perlcritic> - Command-line interface to critique Perl source.


=head1 SYNOPSIS

  perlcritic [-12345 | --brutal | --cruel | --harsh | --stern | --gentle]
             [--severity number | name] [{-p | --profile} file | --noprofile]
             [--top [ number ]] [--theme expression] [--include pattern]
             [--exclude pattern] [{-s | --single-policy} pattern]
             [--only | --noonly] [--profile-strictness {warn|fatal|quiet}]
             [--force | --noforce] [--statistics] [--statistics-only]
             [--count | -C] [--verbose {number | format}] [--allow-unsafe]
             [--color | --nocolor] [--pager pager] [--quiet]
             [--color-severity-highest color_specification]
             [--color-severity-high color_specification]
             [--color-severity-medium color_specification]
             [--color-severity-low color_specification]
             [--color-severity-lowest color_specification]
             [--files-with-violations | -l]
             [--files-without-violations | -L]
             [--program-extensions file_name_extension]
             {FILE | DIRECTORY | STDIN}

  perlcritic --profile-proto

  perlcritic { --list | --list-enabled | --list-themes | --doc pattern [...] }

  perlcritic { --help | --options | --man | --version }


=head1 DESCRIPTION

C<perlcritic> is a Perl source code analyzer.  It is the executable front-end
to the L<Perl::Critic> engine, which attempts to identify awkward, hard to
read, error-prone, or unconventional constructs in your code. Most of the
rules are based on Damian Conway's book B<Perl Best Practices>. However,
C<perlcritic> is B<not> limited to enforcing PBP, and it will even support
rules that contradict Conway.  All rules can easily be configured or disabled
to your liking.

This documentation only covers how to drive this command.  For all other
information, such as API reference and alternative interfaces, please see the
documentation for L<Perl::Critic> itself.


=head1 USAGE EXAMPLES

Before getting into all the gory details, here are some basic usage
examples to help get you started.

    # Report only most severe violations (severity = 5)
    perlcritic YourModule.pm

    # Same as above, but read input from STDIN
    perlcritic

    # Recursively process all Perl files beneath directory
    perlcritic /some/directory

    # Report slightly less severe violations too (severity >= 4)
    perlcritic -4 YourModule.pm

    # Same as above, but using named severity level
    perlcritic --stern YourModule.pm

    # Report all violations, regardless of severity (severity >= 1)
    perlcritic -1 YourModule.pm

    # Same as above, but using named severity level
    perlcritic --brutal YourModule.pm

    # Report only violations of things from "Perl Best Practices"
    perlcritic --theme pbp YourModule.pm

    # Report top 20 most severe violations (severity >= 1)
    perlcritic --top YourModule.pm

    # Report additional violations of Policies that match m/variables/xms
    perlcritic --include variables YourModule.pm

    # Use defaults from somewhere other than ~/.perlcriticrc
    perlcriticrc --profile project/specific/perlcriticrc YourModule.pm


=head1 ARGUMENTS

The arguments are paths to the files you wish to analyze.  You may specify
multiple files.  If an argument is a directory, C<perlcritic> will analyze all
Perl files below the directory.  If no arguments are specified, then input is
read from STDIN.


=head1 OPTIONS

Option names can be abbreviated to uniqueness and can be stated with singe or
double dashes, and option values can be separated from the option name by a
space or '=' (as with L<Getopt::Long>). Option names are also case-sensitive.

=over

=item C<--profile FILE> or C<-p FILE>

Directs C<perlcritic> to use a profile named by FILE rather than looking for
the default F<.perlcriticrc> file in the current directory or your home
directory.  See L<Perl::Critic/"CONFIGURATION"> for more information.

=item C<--noprofile>

Directs C<perlcritic> not to load any configuration file, thus reverting to
the default configuration for all Policies.

=item C<--severity N>

Directs C<perlcritic> to only apply Policies with a severity greater than
C<N>.  Severity values are integers ranging from 1 (least severe) to 5 (most
severe).  The default is 5.  For a given C<--profile>, decreasing the
C<--severity> will usually produce more violations. You can set the default
value for this option in your F<.perlcriticrc> file.  You can also redefine
the C<severity> for any Policy in your F<.perlcriticrc> file.  See
L<"CONFIGURATION"> for more information.

=item C<-5 | -4 | -3 | -2 | -1>

These are numeric shortcuts for setting the C<--severity> option.  For
example, C<"-4"> is equivalent to C<"--severity 4">.  If multiple shortcuts
are specified, then the most restrictive one wins.  If an explicit
C<--severity> option is also given, then all shortcut options are silently
ignored.  NOTE: Be careful not to put one of the number severity shortcut
options immediately after the C<--top> flag or C<perlcritic> will interpret it
as the number of violations to report.

=item C<--severity NAME>

If it is difficult for you to remember whether severity "5" is the most or
least restrictive level, then you can use one of these named values:

    SEVERITY NAME   ...is equivalent to...   SEVERITY NUMBER
    --------------------------------------------------------
    --severity gentle                           --severity 5
    --severity stern                            --severity 4
    --severity harsh                            --severity 3
    --severity cruel                            --severity 2
    --severity brutal                           --severity 1

=item C<--gentle | --stern | --harsh | --cruel | --brutal>

These are named shortcuts for setting the C<--severity> option.  For example,
C<"--cruel"> is equivalent to C<"--severity 2">.  If multiple shortcuts are
specified, then the most restrictive one wins.  If an explicit C<--severity>
option is also given, then all shortcut options are silently ignored.

=item C<--theme RULE>

Directs C<perlcritic> to apply only Policies with themes that satisfy the
C<RULE>.  Themes are arbitrary names for groups of related policies.  You can
combine theme names with boolean operators to create an arbitrarily complex
C<RULE>.  For example, the following would apply only Policies that have a
'bugs' AND 'pbp' theme:

    $> perlcritic --theme='bugs && pbp' MyModule.pm

Unless the C<--severity> option is explicitly given, setting C<--theme>
silently causes the C<--severity> to be set to 1.  You can set the default
value for this option in your F<.perlcriticrc> file. See
L<Perl::Critic/"POLICY THEMES"> for more information about themes.

=item C<--include PATTERN>

Directs C<perlcritic> to apply additional Policies that match the regex
C</PATTERN/imx>.  Use this option to temporarily override your profile and/or
the severity settings at the command-line.  For example:

    perlcritic --include=layout my_file.pl

This would cause C<perlcritic> to apply all the C<CodeLayout::*> policies even
if they have a severity level that is less than the default level of 5, or
have been disabled in your F<.perlcriticrc> file.  You can specify multiple
C<--include> options and you can use it in conjunction with the C<--exclude>
option.  Note that C<--exclude> takes precedence over C<--include> when a
Policy matches both patterns.  You can set the default value for this option
in your F<.perlcriticrc> file.

=item C<--exclude PATTERN>

Directs C<perlcritic> to not apply any Policy that matches the regex
C</PATTERN/imx>.  Use this option to temporarily override your profile and/or
the severity settings at the command-line.  For example:

    perlcritic --exclude=strict my_file.pl

This would cause C<perlcritic> to not apply the C<RequireUseStrict> and
C<ProhibitNoStrict> Policies even though they have the highest severity level.
You can specify multiple C<--exclude> options and you can use it in
conjunction with the C<--include> option.  Note that C<--exclude> takes
precedence over C<--include> when a Policy matches both patterns.  You can set
the default value for this option in your F<.perlcriticrc> file.

=item C<--single-policy PATTERN> or C<-s PATTERN>

Directs C<perlcritic> to apply just one Policy module matching the regex
C</PATTERN/ixms>, and exclude all other Policies.  This option has precedence
over the C<--severity>, C<--theme>, C<--include>, C<--exclude>, and C<--only>
options.  For example:

    perlcritic --single-policy=nowarnings my_file.pl

This would cause C<perlcritic> to apply just the C<ProhibitNoWarnings> Policy,
regardless of the severity level setting.  No other Policies would be applied.

This is equivalent to what one might intend by...

    perlcritic --exclude=. --include=nowarnings my_file.pl

... but this won't work because the C<--exclude> option overrides the
C<--include> option.

The equivalent of this option can be accomplished by creating a custom profile
containing only the desired policy and then running...

    perlcritic --profile=customprofile --only my_file.pl

=item C<--top [ N ]>

Directs C<perlcritic> to report only the top C<N> Policy violations in each
file, ranked by their severity.  If C<N> is not specified, it defaults to 20.
If the C<--severity> option (or one of the shortcuts) is not explicitly given,
the C<--top> option implies that the minimum severity level is "1" (i.e.
"brutal"). Users can redefine the severity for any Policy in their
F<.perlcriticrc> file.  See L<"CONFIGURATION"> for more information.  You can
set the default value for this option in your F<.perlcriticrc> file.  NOTE: Be
careful not to put one of the severity shortcut options immediately after the
C<--top> flag or C<perlcritic> will interpret it as the number of violations
to report.

=item C<--force>

Directs C<perlcritic> to ignore the magical C<"## no critic"> annotations in
the source code. See L<"BENDING THE RULES"> for more information.  You can set
the default value for this option in your F<.perlcriticrc> file.

=item C<--statistics>

Causes several statistics about the code being scanned and the violations
found to be reported after any other output.

=item C<--statistics-only>

Like the C<--statistics> option, but suppresses normal output and only shows
the statistics.

=item C<--verbose N | FORMAT>

Sets the verbosity level or format for reporting violations.  If given a
number (C<N>), C<perlcritic> reports violations using one of the predefined
formats described below.  If given a string (C<FORMAT>), it is interpreted to
be an actual format specification.  If the C<--verbose> option is not
specified, it defaults to either 4 or 5, depending on whether multiple files
were given as arguments to C<perlcritic>.  You can set the default value for
this option in your F<.perlcriticrc> file.

    Verbosity     Format Specification
    -----------   -------------------------------------------------------
     1            "%f:%l:%c:%m\n",
     2            "%f: (%l:%c) %m\n",
     3            "%m at %f line %l\n",
     4            "%m at line %l, column %c.  %e.  (Severity: %s)\n",
     5            "%f: %m at line %l, column %c.  %e.  (Severity: %s)\n",
     6            "%m at line %l, near '%r'.  (Severity: %s)\n",
     7            "%f: %m at line %l near '%r'.  (Severity: %s)\n",
     8            "[%p] %m at line %l, column %c.  (Severity: %s)\n",
     9            "[%p] %m at line %l, near '%r'.  (Severity: %s)\n",
    10            "%m at line %l, column %c.\n  %p (Severity: %s)\n%d\n",
    11            "%m at line %l, near '%r'.\n  %p (Severity: %s)\n%d\n"

Formats are a combination of literal and escape characters similar to the way
C<sprintf> works.  See L<String::Format|String::Format> for a full explanation
of the formatting capabilities.  Valid escape characters are:

    Escape    Meaning
    -------   ------------------------------------------------------------
    %c        Column number where the violation occurred
    %d        Full diagnostic discussion of the violation
    %e        Explanation of violation or page numbers in PBP
    %F        Just the name of the file where the violation occurred.
    %f        Path to the file where the violation occurred.
    %l        Line number where the violation occurred
    %m        Brief description of the violation
    %P        Full name of the Policy module that created the violation
    %p        Name of the Policy without the Perl::Critic::Policy:: prefix
    %r        The string of source code that caused the violation
    %C        The class of the PPI::Element that caused the violation
    %s        The severity level of the violation

The purpose of these formats is to provide some compatibility with text
editors that have an interface for parsing certain kinds of input. See
L<"EDITOR INTEGRATION"> for more information about that.

=item C<--list>

Displays a condensed listing of all the L<Perl::Critic::Policy> modules that
are found on this machine.  This option lists I<all> Policies, regardless of
your F<.perlcriticrc> or command line options.  For each Policy, the name,
default severity and default themes are shown.

=item C<--list-enabled>

Displays a condensed listing of all the L<Perl::Critic::Policy> modules that
I<would> be enforced, if you were actually going to critique a file with this
command. This is useful when you've constructed a complicated command or
modified your F<.perlcriticrc> file and you want to see exactly which Policies
are going to be enforced (or not enforced, as the case may be). For each
Policy, the name, default severity and default themes are shown.

=item C<--list-themes>

Displays a list of all the themes of the L<Perl::Critic::Policy> modules that
are found on this machine.

=item C<--profile-proto>

Displays an expanded listing of all the L<Perl::Critic::Policy> modules that
are found on this machine.  For each Policy, the name, default severity and
default themes are shown, as well as the name of any additional parameters
that the Policy supports.  The format is suitable as a prototype for your
F<.perlcriticrc> file.

=item C<--only>

Directs perlcritic to apply only Policies that are explicitly mentioned in
your F<.perlcriticrc> file.  This is useful if you want to use just a small
subset of Policies without having to disable all the others.  You can set the
default value for this option in your F<.perlcriticrc> file.

=item C<--profile-strictness {warn|fatal|quiet}>

Directs perlcritic how to treat certain recoverable problems found in a
F<.perlcriticrc> or file specified via the C<--profile> option. Valid values
are C<warn> (the default), C<fatal>, and C<quiet>.  For example, perlcritic
normally only warns about profiles referring to non-existent Policies, but
this option can make this situation fatal. You can set the default value for
this option in your F<.perlcriticrc> file.

=item C<--count>

=item C<-C>

Display only the number of violations for each file.  Use this feature to get
a quick handle on where a large pile of code might need the most attention.

=item C<--Safari>

Report "Perl Best Practice" citations as section numbers from
L<http://safari.oreilly.com> instead of page numbers from the actual book.
NOTE: This feature is not implemented yet.

=item C<--color>
=item C<--colour>

This option is on when outputting to a tty.  When set, Severity 5 and 4 are
colored red and yellow, respectively.  Colorization only happens if
L<Term::ANSIColor> is installed and it only works on non-Windows environments.
Negate this switch to disable color.  You can set the default value for this
option in your F<.perlcriticrc> file.

=item C<--pager PAGER_COMMAND_STRING>

If set, perlcritic will pipe it's output to the given PAGER_COMMAND_STRING.
You can set the default value for this option in your F<.perlcriticrc> file.

Setting a pager turns off color by default.  You will have to turn color on
explicitly.  If you want color, you'll probably also want to tell your pager
to display raw characters.  For C<less> and C<more>, use the -R switch.

=item C<--color-severity-highest COLOR_SPECIFICATION>

Specifies the color to be used for highest severity violations, as a
Term::ANSIColor color specification. Can also be specified as C<--colour-
severity-highest>, C<--color-severity-5>, or C<--colour-severity-5>.

=item C<--color-severity-high COLOR_SPECIFICATION>

Specifies the color to be used for high severity violations, as a
Term::ANSIColor color specification. Can also be specified as C<--colour-
severity-high>, C<--color-severity-4>, or C<--colour-severity-4>.

=item C<--color-severity-medium COLOR_SPECIFICATION>

Specifies the color to be used for medium severity violations, as a
Term::ANSIColor color specification. Can also be specified as C<--colour-
severity-medium>, C<--color-severity-3>, or C<--colour-severity-3>.

=item C<--color-severity-low COLOR_SPECIFICATION>

Specifies the color to be used for low severity violations, as a
Term::ANSIColor color specification. Can also be specified as C<--colour-
severity-low>, C<--color-severity-2>, or C<--colour-severity-2>.

=item C<--color-severity-lowest COLOR_SPECIFICATION>

Specifies the color to be used for lowest severity violations, as a
Term::ANSIColor color specification. Can also be specified as C<--colour-
severity-lowest>, C<--color-severity-1>, or C<--colour-severity-1>.

=item C<--files-with-violations>

Display only the names of files with violations.  Use this feature with
--single-policy to find files that contain violations of a given policy. Can
also be specified as C<--l>.

=item C<--files-without-violations>

Display only the names of files without violations.  Use this feature with
--single-policy to find files that do not contain violations of a given
policy. Can also be specified as C<--L>.

=item C<--program-extensions file_name_extension>

Tell C<perlcritic> to treat files whose names end in the given file name
extension as programs, not as modules. If a leading '.' is desired it must be
explicitly specified, e.g.

    --program-extensions .pl

The matching is case-sensitive, and the option may be specified as many times
as desired, e.g.

    --program-extensions .pl --program-extensions .cgi

The above can also be done by quoting the file name extensions:

    --program-extensions '.pl .cgi'

Files whose name ends in '.PL' will always be considered programs.

=item C<--doc PATTERN>

Displays the perldoc for all L<Perl::Critic::Policy> modules that match
C<m/PATTERN/ixms>.  Since Policy modules tend to have rather long names, this
just provides a more convenient way to say something like: C<"perldoc
Perl::Critic::Policy::ValuesAndExpressions::RequireUpperCaseH
eredocTerminator"> at the command prompt.

=item C<--allow-unsafe>

This option directs C<perlcritic> to allow the use of Policies that have been
marked as "unsafe".  Unsafe Policies may result in risky operations by
compiling and executing the code they analyze.  All the Policies that ship in
the core L<Perl::Critic> distribution are safe.  However, third- party
Policies, such as those in the L<Perl::Critic::Dynamic> distribution are not
safe. Note that "safety" is honorary -- if a Policy author marks a Policy as
safe, it is not a guarantee that it won't do nasty things.  B<If you don't
trust your Policies and the code you are analyzing, then do not use this
switch>.

=item C<--quiet>

Suppress the "source OK" message when no violations are found.

=item C<--help>

=item C<-?>

=item C<-H>

Displays a brief summary of options and exits.

=item C<--options>

Displays the descriptions of the options and exits.  While this output is
long, it it nowhere near the length of the output of C<--man>.

=item C<--man>

Displays the complete C<perlcritic> manual and exits.

=item C<--version>

=item C<-V>

Displays the version number of C<perlcritic> and exits.

=back

=head1 CONFIGURATION

Most of the settings for Perl::Critic and each of the Policy modules can be
controlled by a configuration file.  The default configuration file is called
F<.perlcriticrc>.  C<perlcritic> will look for this file in the current
directory first, and then in your home directory. Alternatively, you can set
the C<PERLCRITIC> environment variable to explicitly point to a different file
in another location.  If none of these files exist, and the C<--profile>
option is not given on the command-line, then all Policies will be loaded with
their default configuration.

The format of the configuration file is a series of INI-style blocks that
contain key-value pairs separated by "=". Comments should start with "#" and
can be placed on a separate line or after the name-value pairs if you desire.

Default settings for perlcritic itself can be set B<before the first named
block.> For example, putting any or all of these at the top of your
F<.perlcriticrc> file will set the default value for the corresponding
command-line argument.

    severity  = 3                                     #Integer or named level
    only      = 1                                     #Zero or One
    force     = 0                                     #Zero or One
    verbose   = 4                                     #Integer or format spec
    top       = 50                                    #A positive integer
    theme     = (pbp + security) * bugs               #A theme expression
    include   = NamingConventions ClassHierarchies    #Space-delimited list
    exclude   = Variables  Modules::RequirePackage    #Space-delimited list

The remainder of the configuration file is a series of blocks like this:

    [Perl::Critic::Policy::Category::PolicyName]
    severity = 1
    set_themes = foo bar
    add_themes = baz
    arg1 = value1
    arg2 = value2

C<Perl::Critic::Policy::Category::PolicyName> is the full name of a module
that implements the policy.  The Policy modules distributed with Perl::Critic
have been grouped into categories according to the table of contents in Damian
Conway's book B<Perl Best Practices>. For brevity, you can omit the
C<'Perl::Critic::Policy'> part of the module name.

C<severity> is the level of importance you wish to assign to the Policy.  All
Policy modules are defined with a default severity value ranging from 1 (least
severe) to 5 (most severe).  However, you may disagree with the default
severity and choose to give it a higher or lower severity, based on your own
coding philosophy.  You can set the C<severity> to an integer from 1 to 5, or
use one of the equivalent names:

    SEVERITY NAME ...is equivalent to... SEVERITY NUMBER
    ----------------------------------------------------
    gentle                                             5
    stern                                              4
    harsh                                              3
    cruel                                              2
    brutal                                             1

C<set_themes> sets the theme for the Policy and overrides its default theme.
The argument is a string of one or more whitespace-delimited alphanumeric
words.  Themes are case-insensitive.  See L<"POLICY THEMES"> for more
information.

C<add_themes> appends to the default themes for this Policy.  The argument is
a string of one or more whitespace-delimited words. Themes are case-
insensitive.  See L<"POLICY THEMES"> for more information.

The remaining key-value pairs are configuration parameters that will be passed
into the constructor of that Policy.  The constructors for most Policy modules
do not support arguments, and those that do should have reasonable defaults.
See the documentation on the appropriate Policy module for more details.

Instead of redefining the severity for a given Policy, you can completely
disable a Policy by prepending a '-' to the name of the module in your
configuration file.  In this manner, the Policy will never be loaded,
regardless of the C<--severity> given on the command line.

A simple configuration might look like this:

    #--------------------------------------------------------------
    # I think these are really important, so always load them

    [TestingAndDebugging::RequireUseStrict]
    severity = 5

    [TestingAndDebugging::RequireUseWarnings]
    severity = 5

    #--------------------------------------------------------------
    # I think these are less important, so only load when asked

    [Variables::ProhibitPackageVars]
    severity = 2

    [ControlStructures::ProhibitPostfixControls]
    allow = if unless  # My custom configuration
    severity = cruel   # Same as "severity = 2"

    #--------------------------------------------------------------
    # Give these policies a custom theme.  I can activate just
    # these policies by saying "perlcritic --theme 'larry || curly'"

    [Modules::RequireFilenameMatchesPackage]
    add_themes = larry

    [TestingAndDebugging::RequireTestLabels]
    add_themes = curly moe

    #--------------------------------------------------------------
    # I do not agree with these at all, so never load them

    [-NamingConventions::Capitalization]
    [-ValuesAndExpressions::ProhibitMagicNumbers]

    #--------------------------------------------------------------
    # For all other Policies, I accept the default severity,
    # so no additional configuration is required for them.

Note that all policies included with the Perl::Critic distribution that have
integer parameters accept underscores ("_") in their values, as with Perl
numeric literals.  For example,

    [ValuesAndExpressions::RequireNumberSeparators]
    min_value = 1_000

For additional configuration examples, see the F<perlcriticrc> file that is
included in this F<examples> directory of this distribution.

Damian Conway's own Perl::Critic configuration is also included in this
distribution as F<examples/perlcriticrc-conway>.


=head1 THE POLICIES

A large number of Policy modules are distributed with Perl::Critic. They are
described briefly in the companion document L<Perl::Critic::PolicySummary> and
in more detail in the individual modules themselves.  Say C<"perlcritic --doc
PATTERN"> to see the perldoc for all Policy modules that match the regex
C<m/PATTERN/ixms>

There are a number of distributions of additional policies on CPAN. If
L<Perl::Critic> doesn't contain a policy that you want, some one may have
already written it.  See L<Perl::Critic/"SEE ALSO"> for a list of some of
these distributions.


=head1 POLICY THEMES

Each Policy is defined with one or more "themes".  Themes can be used to
create arbitrary groups of Policies.  They are intended to provide an
alternative mechanism for selecting your preferred set of Policies. For
example, you may wish disable a certain set of Policies when analyzing test
programs.  Conversely, you may wish to enable only a specific subset of
Policies when analyzing modules.

The Policies that ship with Perl::Critic are have been divided into the
following themes.  This is just our attempt to provide some basic logical
groupings.  You are free to invent new themes that suit your needs.

    THEME             DESCRIPTION
    ------------------------------------------------------------------------
    core              All policies that ship with Perl::Critic
    pbp               Policies that come directly from "Perl Best Practices"
    bugs              Policies that that prevent or reveal bugs
    certrec           Policies that CERT recommends
    certrule          Policies that CERT considers rules
    maintenance       Policies that affect the long-term health of the code
    cosmetic          Policies that only have a superficial effect
    complexity        Policies that specificaly relate to code complexity
    security          Policies that relate to security issues
    tests             Policies that are specific to test programs

Say C<"perlcritic --list"> to get a listing of all available policies and the
themes that are associated with each one.  You can also change the theme for
any Policy in your F<.perlcriticrc> file.  See the L<"CONFIGURATION"> section
for more information about that.

Using the C<--theme> command-line option, you can create an arbitrarily
complex rule that determines which Policies to apply. Precedence is the same
as regular Perl code, and you can use parentheses to enforce precedence as
well.  Supported operators are:

    Operator    Altertative    Example
    -----------------------------------------------------------------
    &&          and            'pbp && core'
    ||          or             'pbp || (bugs && security)'
    !           not            'pbp && ! (portability || complexity)'

Theme names are case-insensitive.  If the C<--theme> is set to an empty
string, then it evaluates as true all Policies.


=head1 BENDING THE RULES

Perl::Critic takes a hard-line approach to your code: either you comply or you
don't.  In the real world, it is not always practical (or even possible) to
fully comply with coding standards.  In such cases, it is wise to show that
you are knowingly violating the standards and that you have a Damn Good Reason
(DGR) for doing so.

To help with those situations, you can direct Perl::Critic to ignore certain
lines or blocks of code by using annotations:

  require 'LegacyLibaray1.pl';  ## no critic
  require 'LegacyLibrary2.pl';  ## no critic

  for my $element (@list) {

      ## no critic

      $foo = "";               #Violates 'ProhibitEmptyQuotes'
      $barf = bar() if $foo;   #Violates 'ProhibitPostfixControls'
      #Some more evil code...

      ## use critic

      #Some good code...
      do_something($_);
  }

The C<"## no critic"> annotations direct Perl::Critic to ignore the remaining
lines of code until a C<"## use critic"> annotation is found. If the C<"## no
critic"> annotation is on the same line as a code statement, then only that
line of code is overlooked.  To direct perlcritic to ignore the C<"## no
critic"> annotations, use the C<--force> option.

A bare C<"## no critic"> annotation disables all the active Policies.  If you
wish to disable only specific Policies, add a list of Policy names as
arguments just as you would for the C<"no strict"> or C<"no warnings"> pragma.
For example, this would disable the C<ProhibitEmptyQuotes> and
C<ProhibitPostfixControls> policies until the end of the block or until the
next C<"## use critic"> annotation (whichever comes first):

    ## no critic (EmptyQuotes, PostfixControls);

    # Now exempt from ValuesAndExpressions::ProhibitEmptyQuotes
    $foo = "";

    # Now exempt ControlStructures::ProhibitPostfixControls
    $barf = bar() if $foo;

    # Still subject to ValuesAndExpression::RequireNumberSeparators
    $long_int = 10000000000;

Since the Policy names are matched against the C<"## no critic"> arguments as
regular expressions, you can abbreviate the Policy names or disable an entire
family of Policies in one shot like this:

    ## no critic (NamingConventions)

    # Now exempt from NamingConventions::Capitalization
    my $camelHumpVar = 'foo';

    # Now exempt from NamingConventions::Capitalization
    sub camelHumpSub {}

The argument list must be enclosed in parentheses and must contain one or more
comma-separated barewords (i.e. don't use quotes).  The C<"## no critic">
annotations can be nested, and Policies named by an inner annotation will be
disabled along with those already disabled an outer annotation.

Some Policies like C<Subroutines::ProhibitExcessComplexity> apply to an entire
block of code.  In those cases, C<"## no critic"> must appear on the line
where the violation is reported.  For example:

    sub complicated_function {  ## no critic (ProhibitExcessComplexity)
        # Your code here...
    }

Some Policies like C<Documentation::RequirePodSections> apply to the entire
document, in which case violations are reported at line 1.  But if the file
requires a shebang line, it is impossible to put C<"## no critic"> on the
first line of the file.  This is a known limitation and it will be addressed
in a future release.  As a workaround, you can disable the affected policies
at the command-line or in your F<.perlcriticrc> file.  But beware that this
will affect the analysis of B<all> files.

Use this feature wisely.  C<"## no critic"> should be used in the smallest
possible scope, or only on individual lines of code. And you should always be
as specific as possible about which policies you want to disable (i.e. never
use a bare C<"## no critic">).  If Perl::Critic complains about your code, try
and find a compliant solution before resorting to this feature.


=head1 EDITOR INTEGRATION

For ease-of-use, C<perlcritic> can be integrated with your favorite text
editor.  The output-formatting capabilities of C<perlcritic> are specifically
intended for use with the "grep" or "compile" modes available in editors like
C<emacs> and C<vim>.  In these modes, you can run an arbitrary command and the
editor will parse the output into an interactive buffer that you can click on
and jump to the relevant line of code.

The Perl::Critic team thanks everyone who has helped integrate Perl-Critic
with their favorite editor.  Your contributions in particular have made Perl-
Critic a convenient and user-friendly tool for Perl developers of all stripes.
We sincerely appreciate your hard work.


=head2 EMACS

Joshua ben Jore has authored a minor-mode for emacs that allows you to run
perlcritic on the current region or buffer.  You can run it on demand, or
configure it to run automatically when you save the buffer. The output appears
in a hot-linked compiler buffer.  The code and installation instructions can
be found in the F<extras> directory inside this distribution.


=head2 VIM

Scott Peshak has published F<perlchecker.vim>, which is available at
L<http://www.vim.org/scripts/script.php?script_id=1731>.


=head2 gVIM

Fritz Mehner recently added support for C<perlcritic> to his fantastic gVIM
plugin.  In addition to providing a very Perlish IDE, Fritz's plugin enables
one-click access to C<perlcritic> and many other very useful utilities.  And
all is seamlessly integrated into the editor. See L<http://lug.fh-swf.de/vim
/vim-perl/screenshots-en.html> for complete details.


=head2 EPIC

EPIC is an open source Perl IDE based on the Eclipse platform. Features
include syntax highlighting, on-the-fly syntax check, content assist, code
completion, perldoc support, source formatting with L<Perl::Tidy|Perl::Tidy>,
code templates, a regular expression editing tool, and integration with the
Perl debugger.  Recent versions of EPIC also have built-in support for
Perl::Critic.  At least one Perl::Critic contributor swears by EPIC.  Go to
L<http://e-p-i-c.sourceforge.net> for more information about EPIC.

=head2 BBEdit

Josh Clark has produced an excellent Perl-Critic plugin for BBEdit. See
L<http://globalmoxie.com/projects/bbedit-perl-critic/index.shtml> for
download, installation, and usage instructions.  Apple users rejoice!


=head2 Komodo

Komodo is a proprietary IDE for Perl and several other dynamic languages.
Starting in version 5.1.1, Komodo has built-in support for Perl-Critic, if you
have the L<Perl::Critic> and L<criticism> modules installed.  Free trial
copies of Komodo can be obtained from the ActiveState website at
L<http://www.activestate.com>.


=head2 ActivePerl

ActivePerl includes a very slick graphical interface for configuring and
running Perl-Critic called C<perlcritic-gui>.  A free community edition of
ActivePerl can be obtained from the ActiveState website at
L<http://www.activestate.com>.


=head1 EXIT STATUS

If C<perlcritic> has any errors itself, exits with status == 1.  If there are
no errors, but C<perlcritic> finds Policy violations in your source code,
exits with status == 2.  If there were no errors and no violations were found,
exits with status == 0.


=head1 THE L<Perl::Critic> PHILOSOPHY

=over

Coding standards are deeply personal and highly subjective.  The goal of
Perl::Critic is to help you write code that conforms with a set of best
practices.  Our primary goal is not to dictate what those practices are, but
rather, to implement the practices discovered by others.  Ultimately, you make
the rules -- Perl::Critic is merely a tool for encouraging consistency.  If
there is a policy that you think is important or that we have overlooked, we
would be very grateful for contributions, or you can simply load your own
private set of policies into Perl::Critic.

=back


=head1 EXTENDING THE CRITIC

The modular design of Perl::Critic is intended to facilitate the addition of
new Policies.  You'll need to have some understanding of L<PPI>, but most
Policy modules are pretty straightforward and only require about 20 lines of
code.  Please see the L<Perl::Critic::DEVELOPER> file included in this
distribution for a step-by-step demonstration of how to create new Policy
modules.

If you develop any new Policy modules, feel free to send them to C<<
<team@perlcritic.com> >> and I'll be happy to consider putting them into the
Perl::Critic distribution.  Or if you would like to work on the Perl::Critic
project directly, you can fork our repository at L<http://github.com/Perl-
Critic/Perl- Critic.git>.

The Perl::Critic team is also available for hire.  If your organization has
its own coding standards, we can create custom Policies to enforce your local
guidelines.  Or if your code base is prone to a particular defect pattern, we
can design Policies that will help you catch those costly defects B<before>
they go into production. To discuss your needs with the Perl::Critic team,
just contact C<< <team@perlcritic.com> >>.


=head1 CONTACTING THE DEVELOPMENT TEAM

You are encouraged to subscribe to the mailing list; send a message to
L<mailto:users-subscribe@perlcritic.tigris.org>.  To prevent spam, you may be
required to register for a user account with Tigris.org before being allowed
to post messages to the mailing list. See also the mailing list archives at
L<http://perlcritic.tigris.org/servlets/SummarizeList?listName=users>. At
least one member of the development team is usually hanging around in
L<irc://irc.perl.org/#perlcritic> and you can follow Perl::Critic on Twitter,
at L<https://twitter.com/perlcritic>.


=head1 SEE ALSO

There are a number of distributions of additional Policies available. A few
are listed here:

L<Perl::Critic::More>

L<Perl::Critic::Bangs>

L<Perl::Critic::Lax>

L<Perl::Critic::StricterSubs>

L<Perl::Critic::Swift>

L<Perl::Critic::Tics>

These distributions enable you to use Perl::Critic in your unit tests:

L<Test::Perl::Critic>

L<Test::Perl::Critic::Progressive>

There is also a distribution that will install all the Perl::Critic related
modules known to the development team:

L<Task::Perl::Critic>


=head1 BUGS

Scrutinizing Perl code is hard for humans, let alone machines.  If you find
any bugs, particularly false-positives or false-negatives from a
Perl::Critic::Policy, please submit them at L<https://github.com/Perl-Critic
/Perl-Critic/issues>.  Thanks.

=head1 CREDITS

Adam Kennedy - For creating L<PPI>, the heart and soul of L<Perl::Critic>.

Damian Conway - For writing B<Perl Best Practices>, finally :)

Chris Dolan - For contributing the best features and Policy modules.

Andy Lester - Wise sage and master of all-things-testing.

Elliot Shank - The self-proclaimed quality freak.

Giuseppe Maxia - For all the great ideas and positive encouragement.

and Sharon, my wife - For putting up with my all-night code sessions.

Thanks also to the Perl Foundation for providing a grant to support Chris
Dolan's project to implement twenty PBP policies.
L<http://www.perlfoundation.org/april_1_2007_new_grant_awards>


=head1 AUTHOR

Jeffrey Ryan Thalhammer <jeff@imaginative-software.com>


=head1 COPYRIGHT

Copyright (c) 2005-2011 Imaginative Software Systems.  All rights reserved.

This program is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.  The full text of this license
can be found in the LICENSE file included with this module.

=cut

##############################################################################
# Local Variables:
#   mode: cperl
#   cperl-indent-level: 4
#   fill-column: 78
#   indent-tabs-mode: nil
#   c-indentation-style: bsd
# End:
# ex: set ts=8 sts=4 sw=4 tw=78 ft=perl expandtab shiftround :

__END__
:endofperl
