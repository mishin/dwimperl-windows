@rem = '--*-Perl-*--
@echo off
if "%OS%" == "Windows_NT" goto WinNT
IF EXIST "%~dp0perl.exe" (
"%~dp0perl.exe" -x -S "%0" %1 %2 %3 %4 %5 %6 %7 %8 %9
) ELSE IF EXIST "%~dp0..\..\bin\perl.exe" (
"%~dp0..\..\bin\perl.exe" -x -S "%0" %1 %2 %3 %4 %5 %6 %7 %8 %9
) ELSE (
perl -x -S "%0" %1 %2 %3 %4 %5 %6 %7 %8 %9
)

goto endofperl
:WinNT
IF EXIST "%~dp0perl.exe" (
"%~dp0perl.exe" -x -S %0 %*
) ELSE IF EXIST "%~dp0..\..\bin\perl.exe" (
"%~dp0..\..\bin\perl.exe" -x -S %0 %*
) ELSE (
perl -x -S %0 %*
)

if NOT "%COMSPEC%" == "%SystemRoot%\system32\cmd.exe" goto endofperl
if %errorlevel% == 9009 echo You do not have Perl in your PATH.
if errorlevel 1 goto script_failed_so_exit_with_non_zero_val 2>nul
goto endofperl
@rem ';
#!/usr/bin/env perl
#line 29

use v5.10.1;

use strict;
use warnings;

use File::Copy qw/ copy /;
use Getopt::Long::Descriptive;
use IO::Handle;
use Pod::Readme;

=head1 NAME

pod2readme - Intelligently generate a README file from POD

=head1 USAGE

    pod2readme [-cfho] [long options...] input-file [output-file] [target]

        Intelligently generate a README file from POD

        -t --target     target type (default: 'readme')
        -f --format     output format (default: 'text')
        -b --backup     backup output file
        -o --output     output filename (default based on target)
        -c --stdout     output to stdout (console)
        -F --force      only update if files are changed
        -h --help       print usage and exit

=head1 SYNOPSIS

    pod2readme -f markdown lib/MyApp.pm

=head1 DESCRIPTION

This utility will use L<Pod::Readme> to extract a F<README> file from
a POD document.

It works by extracting and filtering the POD, and then calling the
appropriate filter program to convert the POD to another format.

=head1 OPTIONS

=head2 C<--backup>

By default, C<pod2readme> will back up the output file. To disable
this, use the C<--no-backup> option.

=head2 C<--output>

Specifies the name of the output file. If omitted, it will use the
second command line argument, or default to the C<--target> plus the
corresponding extention of the C<--format>.

For all intents, the default is F<README>.

If a format other than "text" is chosen, then the appropriate
extention will be added, e.g. for "markdown", the default output file
is F<README.md>.

=head2 C<--target>

The target of the filter, which defaults to "readme".

=head2 C<--format>

The output format, which defaults to "text".

Other supposed formats are "html", "latex", "man", "markdown", "pod",
"rtf", and "xhtml".

=head2 C<--stdout>

If enabled, it will output to the console instead of C<--output>.

=head2 C<--force>

By default, the F<README> will be generated if the source files have
been changed.  Using C<--force> will force the file to be updated.

Note: POD format files will always be updated.

=head2 C<--help>

Prints the usage and exits.

=head1 SEE ALSO

L<pod2text>, L<pod2markdown>.

=cut

my %FORMATS = (
    'html'     => { class => 'Pod::Simple::HTML', },
    'latex'    => { class => 'Pod::Simple::LaTeX' },
    'man'      => { class => 'Pod::Man' },
    'markdown' => { class => 'Pod::Markdown' },
    'pod'      => { class => undef },
    'rtf'      => { class => 'Pod::Simple::RTF' },
    'text'     => { class => 'Pod::Simple::Text' },
    'xhtml'    => { class => 'Pod::Simple::XHTML' },
);

sub validate_format {
    my $value = shift;
    if ( exists $FORMATS{$value} ) {
        return $value;
    }
    else {
        die "Invalid format: '${value}'\n";
    }
}

my ( $opt, $usage ) = describe_options(
    '%c %o input-file [output-file] [target]',
    [],
    ['Intelligently generate a README file from POD'],
    [],
    [ 'target|t=s' => "target type (default: 'readme')" ],
    [
        'format|f=s' => "output format (default: 'text')",
        {
            default   => 'text',
            callbacks => { format => \&validate_format },
        }
    ],
    [ 'backup|b!' => "backup output file", { default => 1 } ],
    [ 'output|o' => "output filename (default based on target)" ],
    [ 'stdout|c' => "output to stdout (console)" ],
    [ 'force|F!' => "only update if files are changed" ],
    [ 'help|h'   => "print usage and exit" ],
);

die $usage if $opt->help;

my %args = ( force => $opt->force );

if ( my $input = shift @ARGV ) {
    $args{input_file} = $input;
}

my $format = $FORMATS{ $opt->format };
unless ($format) {
    say sprintf( "Unknown format: '\%s'", $opt->format );
    die $usage;
}

my $output = $opt->output || shift @ARGV;
my $target = $opt->target || shift @ARGV || 'readme';

$args{target} = $target;

if ( my $class = $format->{class} ) {
    $args{translation_class} = $class;
}

if ( $opt->stdout ) {
    my $fh = IO::Handle->new;
    if ( $fh->fdopen( fileno(STDOUT), 'w' ) ) {
        $args{translate_to_fh} = $fh;
    }
    else {
        die "Cannot get a filehandle for STDOUT";
    }
}
else {
    $args{translate_to_file} = $output if $output;
}

my $pr = Pod::Readme->new(%args);

$output ||= $pr->translate_to_file;

if ( $opt->backup && $output && -e $output ) {
    copy( $output, $output . '.bak' );
}

$pr->run();

__END__
:endofperl
