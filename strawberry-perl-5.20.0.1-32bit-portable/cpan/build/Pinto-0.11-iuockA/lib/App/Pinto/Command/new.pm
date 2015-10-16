# ABSTRACT: create a new empty stack

package App::Pinto::Command::new;

use strict;
use warnings;

#-----------------------------------------------------------------------------

use base 'App::Pinto::Command';

#------------------------------------------------------------------------------

our $VERSION = '0.11'; # VERSION

#------------------------------------------------------------------------------

sub opt_spec {
    my ( $self, $app ) = @_;

    return (
        [ 'default'                   => 'Make the new stack the default stack' ],
        [ 'description|d=s'           => 'Brief description of the stack' ],
        [ 'target-perl-version|tpv=s' => 'Target Perl version for this stack' ],
    );
}

#------------------------------------------------------------------------------

sub validate_args {
    my ( $self, $opts, $args ) = @_;

    $self->usage_error('Must specify exactly one stack')
        if @{$args} != 1;

    $opts->{stack} = $args->[0];

    return 1;
}

#------------------------------------------------------------------------------
1;

__END__

=pod

=encoding UTF-8

=for :stopwords Jeffrey Ryan Thalhammer

=head1 NAME

App::Pinto::Command::new - create a new empty stack

=head1 VERSION

version 0.11

=head1 SYNOPSIS

  pinto --root=REPOSITORY_ROOT new [OPTIONS] STACK

=head1 DESCRIPTION

This command creates a new empty stack.

See the L<copy|App::Pinto::Command::copy> command to create a new 
stack from another one, or the L<props|App::Pinto::Command::props> 
command to change a stack's properties after it has been created.

=head1 COMMAND ARGUMENTS

The required argument is the name of the stack you wish to create.
Stack names must be alphanumeric plus hyphens and underscores, and
are not case sensitive.

=head1 COMMAND OPTIONS

=over 4

=item --default

Also mark the new stack as the default stack.

=item --description=TEXT

=item -d TEXT

Use TEXT for the description of the stack.

=item --target-perl-version=VERSION

=item --tpv=VERSION

Sets the target perl version for the stack.  Pinto never pulls distributions
for prerequisites that are satisfied by the core of the target perl version.
VERSION must be a valid version number for an existing release of perl 5.
Defaults to the global target Perl version of this repository.

=back

=head1 AUTHOR

Jeffrey Ryan Thalhammer <jeff@stratopan.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2015 by Jeffrey Ryan Thalhammer.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
