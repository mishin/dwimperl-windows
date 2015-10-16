#ABSTRACT: show difference between two stacks

package App::Pinto::Command::diff;

use strict;
use warnings;

#-----------------------------------------------------------------------------

use base 'App::Pinto::Command';

#------------------------------------------------------------------------------

our $VERSION = '0.11'; # VERSION

#------------------------------------------------------------------------------

sub command_names { return qw(diff) }

#------------------------------------------------------------------------------

sub opt_spec {
    my ( $self, $app ) = @_;

    return (
        [ 'diff-style=s' => 'Diff style (concise|detailed)' ],
        [ 'format=s'     => 'Format specification (see POD for details)' ],
    );
}

#------------------------------------------------------------------------------
sub validate_args {
    my ( $self, $opts, $args ) = @_;

    $self->usage_error('Must specify at least one stack or revision') if @{$args} < 1;

    $self->usage_error('Cannot specify more than two stacks or revisions') if @{$args} > 2;

    return 1;
}

#------------------------------------------------------------------------------

sub execute {
    my ( $self, $opts, $args ) = @_;

    # If there's only one argument, then the left argument
    # is assumed to be the default stack (i.e. undef)
    unshift @{$args}, undef if @{$args} == 1;

    my %stacks = ( left => $args->[0], right => $args->[1] );
    my $result = $self->pinto->run( $self->action_name, %{$opts}, %stacks );

    return $result->exit_status;
}

#------------------------------------------------------------------------------
1;

__END__

=pod

=encoding UTF-8

=for :stopwords Jeffrey Ryan Thalhammer

=head1 NAME

App::Pinto::Command::diff - show difference between two stacks

=head1 VERSION

version 0.11

=head1 SYNOPSIS

  pinto --root=REPOSITORY_ROOT diff [OPTIONS] LEFT [RIGHT]

=head1 DESCRIPTION

!! THIS COMMAND IS EXPERIMENTAL !!

This command shows the difference between two stacks or revisions, presented
in a format similar to diff[1].

=head1 COMMAND ARGUMENTS

Command arguments are the names of the stacks or revision IDs to compare. If
you specify a stack name, the head revision of that stack will be used.  If
you only specify one argument, then it is assumed to be the RIGHT and the head
revision of the default stack will be used as the LEFT.  Revision IDs can be
truncated to uniqueness.

=head1 COMMAND OPTIONS

=over 4

=item --diff-style=STYLE

Controls the style of the diff reports.  STYLE must be either C<concise> or
C<detailed>.  Concise reports show only one record for each distribution added
or deleted.  Detailed reports show one record for every package added or
deleted.

The default style is C<concise>.  However, the default style can be changed by
setting the C<PINTO_DIFF_STYLE> environment variable to your preferred STYLE.
This variable affects the default style for diff reports generated by all
other commands too.

=item --format=FORMAT

A C<printf>-style format string describing how individual lines of the diff are
to be printed.  For the description of the C<FORMAT>, please refer to
L<App::Pinto::Command::list/"COMMAND OPTIONS">.

The default format for C<concise> diffs is C<%o[%F] %a/%f>.  The default format
for C<detailed> diffs is C<%o[%F] %-40p %12v %a/%f>.

=back

=head2 EXAMPLES

 pinto diff foo                  # Compare of head of default stack with head of foo stack
 pinto diff foo bar              # Compare heads of both foo and bar stack.
 pinto diff 1ae834f              # Compare head of default stack with revision 1ae834f
 pinto diff foo 1ae834f          # Compare head of foo stack with revision 1ae834f
 pinto diff 663fd2a 1ae834f      # Compare revision 663fd2a with revision 1ae834f

=head1 AUTHOR

Jeffrey Ryan Thalhammer <jeff@stratopan.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2015 by Jeffrey Ryan Thalhammer.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
