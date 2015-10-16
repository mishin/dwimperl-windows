# ABSTRACT: Report statistics about a Pinto repository

package Pinto::Statistics;

use Moose;
use MooseX::StrictConstructor;
use MooseX::MarkAsMethods ( autoclean => 1 );

use String::Format;

#------------------------------------------------------------------------------

our $VERSION = '0.11'; # VERSION

#------------------------------------------------------------------------------

has stack => (
    is       => 'ro',
    isa      => 'Pinto::Schema::Result::Stack',
    required => 1,
);

#------------------------------------------------------------------------------

sub total_distributions {
    my ($self) = @_;

    return $self->stack->repo->distribution_count;
}

#------------------------------------------------------------------------------

sub stack_distributions {
    my ($self) = @_;

    return $self->stack->distribution_count;
}

#------------------------------------------------------------------------------

sub total_packages {
    my ($self) = @_;

    return $self->stack->repo->package_count;
}

#------------------------------------------------------------------------------

sub stack_packages {
    my ($self) = @_;

    return $self->stack->package_count;
}

#------------------------------------------------------------------------------

# TODO: Other statistics to consider...
#
# foreign packages (total/indexed)
# local   packages (total/indexed)
# foreign dists    (total/indexed)
# local   dists    (total/indexed)
# avg pkgs per dist
# avg # pkg revisions
# authors
# most prolific author
# N most recently added dist

#------------------------------------------------------------------------------

sub to_string {
    my ( $self, $format ) = @_;

    my %fspec = (
        'D' => sub { $self->total_distributions },
        'd' => sub { $self->stack_distributions },
        'k' => sub { $self->stack },
        'P' => sub { $self->total_packages },
        'p' => sub { $self->stack_packages },
    );

    $format ||= $self->default_format();
    return String::Format::stringf( $format, %fspec );
}

#------------------------------------------------------------------------------

sub default_format {
    my ($self) = @_;

    return <<'END_FORMAT';

STATISTICS FOR THE "%k" STACK
-------------------------------------

                     Stack      Total
               ----------------------
     Packages  %10p  %10P
Distributions  %10d  %10D
END_FORMAT

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

Pinto::Statistics - Report statistics about a Pinto repository

=head1 VERSION

version 0.11

=head1 AUTHOR

Jeffrey Ryan Thalhammer <jeff@stratopan.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2015 by Jeffrey Ryan Thalhammer.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
