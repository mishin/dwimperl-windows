# ABSTRACT: do nothing

package App::Pinto::Command::nop;

use strict;
use warnings;

#-----------------------------------------------------------------------------

use base 'App::Pinto::Command';

#------------------------------------------------------------------------------

our $VERSION = '0.11'; # VERSION

#------------------------------------------------------------------------------

sub opt_spec {
    my ( $self, $app ) = @_;

    return ( [ 'sleep=i' => 'seconds to sleep before exiting' ], );
}

#------------------------------------------------------------------------------

sub validate_args {
    my ( $self, $opts, $args ) = @_;

    $self->SUPER::validate_args( $opts, $args );

    $self->usage_error('Sleep time must be positive integer')
        if defined $opts->{sleep} && $opts->{sleep} < 1;

    return 1;
}

#------------------------------------------------------------------------------
1;

__END__

=pod

=encoding UTF-8

=for :stopwords Jeffrey Ryan Thalhammer

=head1 NAME

App::Pinto::Command::nop - do nothing

=head1 VERSION

version 0.11

=head1 SYNOPSIS

  pinto --root=REPOSITORY_ROOT nop [OPTIONS]

=head1 DESCRIPTION

This command is a no-operation.  It puts a shared lock on the
repository, but does not perform any operations.  This is really only
used for diagnostic purposes.  So don't worry about it too much.

=head1 COMMAND ARGUMENTS

None.

=head1 COMMAND OPTIONS

=over 4

=item --sleep N

Sleep for N seconds before releasing the lock and exiting.  Default is 0.

=back

=head1 AUTHOR

Jeffrey Ryan Thalhammer <jeff@stratopan.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2015 by Jeffrey Ryan Thalhammer.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
