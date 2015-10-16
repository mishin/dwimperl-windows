# ABSTRACT: List the contents of a stack

package Pinto::Action::List;

use Moose;
use MooseX::StrictConstructor;
use MooseX::MarkAsMethods ( autoclean => 1 );
use MooseX::Types::Moose qw(Str Bool);

use Pinto::Constants qw(:color);
use Pinto::Types qw(StackName StackDefault StackObject);

#------------------------------------------------------------------------------

our $VERSION = '0.11'; # VERSION

#------------------------------------------------------------------------------

extends qw( Pinto::Action );

#------------------------------------------------------------------------------

has stack => (
    is      => 'ro',
    isa     => StackName | StackDefault | StackObject,
    default => undef,
);

has pinned => (
    is  => 'ro',
    isa => Bool,
);

has authors => (
    is      => 'ro',
    isa     => Str,
);

has packages => (
    is  => 'ro',
    isa => Str,
);

has distributions => (
    is  => 'ro',
    isa => Str,
);

has all => (
    is      => 'ro',
    isa     =>  Bool,
    default => 0,
);

has format => (
    is      => 'ro',
    isa     => Str,
    default => '[%F] %-40p %12v %a/%f',
    lazy    => 1,
);

#------------------------------------------------------------------------------

sub _where {
    my ($self) = @_;

    my $where = {};
    if ($self->all) {

        if ( my $pkg_name = $self->packages ) {
            $where->{'me.name'} = {regexp => qr/$pkg_name/ };
        }

        if ( my $dist_name = $self->distributions ) {
            $where->{'distribution.archive'} = {regexp => qr/$dist_name/};
        }

        if ( my $authors = $self->authors ) {
            $where->{'distribution.author'} = {regexp => qr/$authors/i};
        }
    }
    else {

        my $stack = $self->repo->get_stack( $self->stack );
        $where = {revision => $stack->head->id};

        if ( my $pkg_name = $self->packages ) {
            $where->{'package.name'} = {regexp => qr/$pkg_name/};
        }

        if ( my $dist_name = $self->distributions ) {
            $where->{'distribution.archive'} = {regexp => qr/$dist_name/};
        }

        if ( my $authors = $self->authors ) {
            $where->{'distribution.author'} = {regexp => qr/$authors/i};
        }

        if ( my $pinned = $self->pinned ) {
            $where->{is_pinned} = 1;
        }
    }

    return $where;
}

#------------------------------------------------------------------------------

sub _attrs {
    my ($self) = @_;

    my $attrs = {};
    if ($self->all) {
        $attrs = { prefetch => [qw(distribution)], order_by => ['me.name'] };
    }
    else {
        $attrs = { prefetch => [qw(package distribution)] };
    }

    return $attrs;
}


#------------------------------------------------------------------------------

sub execute {
    my ($self) = @_;

    my $where   = $self->_where;
    my $attrs   = $self->_attrs;
    my $method  = 'search_' . ($self->all ? 'package' : 'registration');
    my $rs      = $self->repo->db->schema->$method( $where, $attrs );

    my $did_match = 0;
    while ( my $it = $rs->next ) {

        # $it could be a registration or a package object, depending
        # on whether we are listing a stack or the whole repository

        my $string = $it->to_string( $self->format );
        my $color  = undef;

        $color = $PINTO_PALETTE_COLOR_0
            if $it->distribution->is_local;

        $color = $PINTO_PALETTE_COLOR_1
            if $it->isa('Pinto::Schema::Result::Registration') && $it->is_pinned;

        $self->show( $string, { color => $color } );
        $did_match++;
    }

    # If there are any search criteria and nothing matched,
    # then the exit status should not be successful.
    $self->result->failed if keys %$where > 1 && !$did_match;

    return $self->result;
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

Pinto::Action::List - List the contents of a stack

=head1 VERSION

version 0.11

=head1 AUTHOR

Jeffrey Ryan Thalhammer <jeff@stratopan.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2015 by Jeffrey Ryan Thalhammer.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
