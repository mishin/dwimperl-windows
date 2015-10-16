# ABSTRACT: reset stack to a prior revision

package App::Pinto::Command::reset;

use strict;
use warnings;

#-----------------------------------------------------------------------------

use base 'App::Pinto::Command';

#------------------------------------------------------------------------------

our $VERSION = '0.11'; # VERSION

#------------------------------------------------------------------------------

sub command_names { return qw(reset) }

#------------------------------------------------------------------------------

sub opt_spec {
    my ( $self, $app ) = @_;

    return (
        [ 'force'      => 'Reset even if revision is not ancestor' ],
        [ 'stack|s=s'  => 'Reset this stack' ],
    );

}

#------------------------------------------------------------------------------

sub validate_args {
    my ( $self, $opts, $args ) = @_;

    $self->usage_error("Must specify a revision")
      if not @{$args};

    my $arg_count = @{$args};

    # If there is one arg, then it is revision and stack is default
    # If there are 2 args, then the 1st is stack and 2nd is revision

    $opts->{revision} = $arg_count == 1 ? $args->[0] : $args->[1];
    $opts->{stack}    = $arg_count == 2 ? $args->[0] : undef;

    return 1;
}

#------------------------------------------------------------------------------
1;

__END__

=pod

=encoding UTF-8

=for :stopwords Jeffrey Ryan Thalhammer

=head1 NAME

App::Pinto::Command::reset - reset stack to a prior revision

=head1 VERSION

version 0.11

=head1 SYNOPSIS

  pinto --root=REPOSITORY_ROOT reset [OPTIONS] REVISION

=head1 DESCRIPTION

!! THIS COMMAND IS EXPERIMENTAL !!

This command moves the head of the stack to a prior revision, thereby
discarding subsequent revisions.  See the
L<revert|App::Pinto::Command::revert> command to restore the stack to a prior
revision by creating a new revision.

=head1 COMMAND ARGUMENTS

The arguments are the name of the stack and the id of the revision to reset
to.  If the stack is not specified, then it defaults to whichever stack is
currently marked as the default.  The stack can also be specified using the
C<--stack> option.  Some examples:

  pinto ... reset af01256e          # Reset default stack to revision af01256e
  pinto ... reset mystack af01256e  # Reset mystack to revision af0125e

=head1 COMMAND OPTIONS

=over 4

=item --force

Force reset even if the revision is not actually an ancestor.  Normally, you
can only reset to a revision that the stack has actually been at.

=item --stack=NAME

=item -s NAME

Peform reset on the stack with the given NAME.  Defaults to the name of
whichever stack is currently marked as the default stack.  Use the
L<stacks|App::Pinto::Command::stacks> command to see the stacks in the
repository.  This option is silently ignored if the stack is specified as a
command argument instead.

=back

=head1 AUTHOR

Jeffrey Ryan Thalhammer <jeff@stratopan.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2015 by Jeffrey Ryan Thalhammer.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
