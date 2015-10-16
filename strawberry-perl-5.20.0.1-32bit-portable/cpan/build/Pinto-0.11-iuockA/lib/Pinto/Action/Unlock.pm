# ABSTRACT: Unlock a stack to allow future changes

package Pinto::Action::Unlock;

use Moose;
use MooseX::StrictConstructor;
use MooseX::MarkAsMethods ( autoclean => 1 );

use Pinto::Types qw(StackName StackDefault StackObject);

#------------------------------------------------------------------------------

our $VERSION = '0.11'; # VERSION

#------------------------------------------------------------------------------

extends qw( Pinto::Action );

#------------------------------------------------------------------------------

with qw( Pinto::Role::Transactional );

#------------------------------------------------------------------------------

has stack => (
    is      => 'ro',
    isa     => StackName | StackDefault | StackObject,
    default => undef,
);

#------------------------------------------------------------------------------

sub execute {
    my ($self) = @_;

    my $stack = $self->repo->get_stack( $self->stack );

    if ( !$stack->is_locked ) {
        $self->warning("Stack $stack is not locked");
        return $self->result;
    }

    $stack->unlock;
    return $self->result->changed;
}

#------------------------------------------------------------------------------

__PACKAGE__->meta->make_immutable;

#------------------------------------------------------------------------------

1;

__END__

=pod

=encoding UTF-8

=for :stopwords Jeffrey Ryan Thalhammer

=head1 NAME

Pinto::Action::Unlock - Unlock a stack to allow future changes

=head1 VERSION

version 0.11

=head1 AUTHOR

Jeffrey Ryan Thalhammer <jeff@stratopan.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2015 by Jeffrey Ryan Thalhammer.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
