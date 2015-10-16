# ABSTRACT: Base class for remote Actions

package Pinto::Remote::Action;

use Moose;
use MooseX::StrictConstructor;
use MooseX::MarkAsMethods ( autoclean => 1 );
use MooseX::Types::Moose qw(Str Maybe);

use URI;
use JSON;
use HTTP::Request::Common;

use Pinto::Result;
use Pinto::Constants qw(:protocol);
use Pinto::Util qw(current_time_offset);
use Pinto::Types qw(Uri);

#------------------------------------------------------------------------------

our $VERSION = '0.11'; # VERSION

#------------------------------------------------------------------------------

with qw(Pinto::Role::Plated Pinto::Role::UserAgent);

#------------------------------------------------------------------------------

has name => (
    is       => 'ro',
    isa      => Str,
    required => 1,
);

has root => (
    is       => 'ro',
    isa      => Uri,
    required => 1,
);

has args => (
    is      => 'ro',
    isa     => 'HashRef',
    default => sub { {} },
);

has username => (
    is       => 'ro',
    isa      => Str,
    required => 1
);

has password => (
    is       => 'ro',
    isa      => Maybe [Str],
    required => 1,
);

#------------------------------------------------------------------------------


sub execute {
    my ($self) = @_;

    my $request = $self->_make_request;
    my $result = $self->_send_request( req => $request );

    return $result;
}

#------------------------------------------------------------------------------

sub _make_request {
    my ( $self, %args ) = @_;

    my $action_name  = $args{name} || $self->name;
    my $request_body = $args{body} || $self->_make_request_body;

    my $uri = URI->new( $self->root );
    $uri->path_segments( '', 'action', lc $action_name );

    my $request = POST(
        $uri,
        Accept        => $PINTO_PROTOCOL_ACCEPT,
        Content       => $request_body,
        Content_Type  => 'form-data',

    );

    if ( defined $self->password ) {
        $request->authorization_basic( $self->username, $self->password );
    }

    return $request;
}

#------------------------------------------------------------------------------

sub _make_request_body {
    my ($self) = @_;

    return [ $self->_chrome_args, $self->_pinto_args, $self->_action_args ];
}

#------------------------------------------------------------------------------

sub _chrome_args {
    my ($self) = @_;

    my $chrome_args = {
        verbose  => $self->chrome->verbose,
        color    => $self->chrome->color,
        palette  => $self->chrome->palette,
        quiet    => $self->chrome->quiet
    };

    return ( chrome => encode_json($chrome_args) );

}

#------------------------------------------------------------------------------

sub _pinto_args {
    my ($self) = @_;

    my $pinto_args = {
        username    => $self->username,
        time_offset => current_time_offset,
    };

    return ( pinto => encode_json($pinto_args) );
}

#------------------------------------------------------------------------------

sub _action_args {
    my ($self) = @_;

    my $action_args = $self->args;

    return ( action => encode_json($action_args) );
}

#------------------------------------------------------------------------------

sub _send_request {
    my ( $self, %args ) = @_;

    my $request = $args{req} || $self->_make_request;
    my $status = 0;
    my $buffer = '';

    # Currying in some extra args to the callback...
    my $callback = sub { $self->_response_callback( \$status, \$buffer, @_ ) };
    my $response = $self->request( $request, $callback );

    if ( not $response->is_success ) {
        $self->error( $response->content );
        return Pinto::Result->new( was_successful => 0 );
    }

    return Pinto::Result->new( was_successful => $status );
}

#------------------------------------------------------------------------------

sub _response_callback {
    my ( $self, $status, $buffer, $data ) = @_;

    $data = ${$buffer}.$data;
    while($data =~ /\G([^\n]*)\n/gc) {
        my $line = $1;
        if ( $line eq $PINTO_PROTOCOL_STATUS_OK ) {
            ${$status} = 1;
        }
        elsif ( $line eq $PINTO_PROTOCOL_PROGRESS_MESSAGE ) {
            $self->chrome->show_progress;
        }
        elsif ( $line eq $PINTO_PROTOCOL_NULL_MESSAGE ) {
            # Do nothing, discard message
        }
        elsif ( $line =~ m{^ \Q$PINTO_PROTOCOL_DIAG_PREFIX\E (.*)}x ) {
            $self->chrome->diag($1);
        }
        else {
            $self->chrome->show($line);
        }
    }
    #Save leftovers, use them in next packet
    (${$buffer}) = ($data =~ /\G(.*)$/g);

    return 1;
}

#-----------------------------------------------------------------------------

__PACKAGE__->meta->make_immutable;

#------------------------------------------------------------------------------
1;

__END__

=pod

=encoding UTF-8

=for :stopwords Jeffrey Ryan Thalhammer

=head1 NAME

Pinto::Remote::Action - Base class for remote Actions

=head1 VERSION

version 0.11

=head1 METHODS

=head2 execute

Runs this Action on the remote server by serializing itself and
sending a POST request to the server.  Returns a L<Pinto::Result>.

=head1 AUTHOR

Jeffrey Ryan Thalhammer <jeff@stratopan.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2015 by Jeffrey Ryan Thalhammer.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
