# ABSTRACT: show available stacks

package App::Pinto::Command::stacks;

use strict;
use warnings;

use Pinto::Util qw(interpolate);

#-----------------------------------------------------------------------------

use base 'App::Pinto::Command';

#------------------------------------------------------------------------------

our $VERSION = '0.11'; # VERSION

#------------------------------------------------------------------------------

sub opt_spec {
    my ( $self, $app ) = @_;

    return ( [ 'format=s' => 'Format of the listing (See POD for details)' ], );
}

#------------------------------------------------------------------------------

sub validate_args {
    my ( $self, $opts, $args ) = @_;

    $self->usage_error('No arguments are allowed')
        if @{$args};

    $opts->{format} = interpolate( $opts->{format} )
        if exists $opts->{format};

    return 1;
}

#------------------------------------------------------------------------------
1;

__END__

=pod

=encoding UTF-8

=for :stopwords Jeffrey Ryan Thalhammer

=head1 NAME

App::Pinto::Command::stacks - show available stacks

=head1 VERSION

version 0.11

=head1 SYNOPSIS

  pinto --root=REPOSITORY_ROOT stacks [OPTIONS]

=head1 DESCRIPTION

This command lists the names (and some other details) of all the
stacks currently available in the repository.

=head1 COMMAND ARGUMENTS

None.

=head1 COMMAND OPTIONS

=over 4

=item --format=FORMAT_SPECIFICATION

Format each record in the listing with C<printf>-style placeholders.
Valid placeholders are:

  Placeholder    Meaning
  -----------------------------------------------------------------------------
  %k             Stack name
  %e             Stack description
  %M             Stack default status                             (*) = default
  %L             Stack lock status                                (!) = locked
  %i             Stack head revision id prefix
  $I             Stack head revision id
  %g             Stack head revision message (full)
  %t             Stack head revision message title
  %b             Stack head revision message body
  %u             Stack head revision committed-on
  %j             Stack head revision committed-by
  %%             A literal '%'

=back

=head1 AUTHOR

Jeffrey Ryan Thalhammer <jeff@stratopan.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2015 by Jeffrey Ryan Thalhammer.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
