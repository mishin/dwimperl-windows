# ABSTRACT: Add a local distribution into the repository

package Pinto::Action::Add;

use Moose;
use MooseX::StrictConstructor;
use MooseX::Types::Moose qw(Bool ArrayRef Str);
use MooseX::MarkAsMethods ( autoclean => 1 );
use Try::Tiny;

use Pinto::Util qw(sha256 current_author_id throw);
use Pinto::Types qw(AuthorID FileList);

#------------------------------------------------------------------------------

our $VERSION = '0.11'; # VERSION

#------------------------------------------------------------------------------

extends qw( Pinto::Action );

#------------------------------------------------------------------------------

has author => (
    is      => 'ro',
    isa     => AuthorID,
    default => sub { $_[0]->pausecfg->{user} || current_author_id },
    coerce  => 1,
    lazy    => 1,
);

has archives => (
    isa      => FileList,
    traits   => [qw(Array)],
    handles  => { archives => 'elements' },
    required => 1,
    coerce   => 1,
);

has no_fail => (
    is      => 'ro',
    isa     => Bool,
    default => 0,
);

has no_index => (
    is      => 'ro',
    isa     => ArrayRef [Str],
    default => sub { [] }
);

#------------------------------------------------------------------------------

with qw( Pinto::Role::PauseConfig Pinto::Role::Committable Pinto::Role::Puller );

#------------------------------------------------------------------------------

sub BUILD {
    my ( $self, $args ) = @_;

    my @missing = grep { not -e $_ } $self->archives;
    $self->error("Archive $_ does not exist") for @missing;

    my @unreadable = grep { -e $_ and not -r $_ } $self->archives;
    $self->error("Archive $_ is not readable") for @unreadable;

    throw "Some archives are missing or unreadable"
        if @missing or @unreadable;

    return $self;
}

#------------------------------------------------------------------------------

sub execute {
    my ($self) = @_;

    for my $archive ( $self->archives ) {

        try {
            $self->repo->svp_begin;
            my $dist = $self->_add($archive);
            push @{$self->affected}, $dist if $dist;
        }
        catch {
            throw $_ unless $self->no_fail;
            $self->result->failed( because => $_ );

            $self->repo->svp_rollback;

            $self->error("$_");
            $self->error("Archive $archive failed...continuing anyway");
        }
        finally {
            my ($error) = @_;
            $self->repo->svp_release unless $error;
        };
    }

    $self->chrome->progress_done;

    return $self;
}

#------------------------------------------------------------------------------

sub _add {
    my ( $self, $archive ) = @_;

    my $dist;
    if ( my $dupe = $self->_check_for_duplicate($archive) ) {
        $self->warning("$archive is the same as $dupe -- using $dupe instead");
        $dist = $dupe;
    }
    else {
        $self->info("Adding $archive to the repository");
        $dist = $self->repo->add_distribution( archive => $archive, author => $self->author );
        $self->_apply_exclusions($dist);
    }

    $self->notice( "Registering $dist on stack " . $self->stack );
    ($dist, undef, undef) = $self->pull( target => $dist );    # Registers dist and pulls prereqs

    return $dist;
}

#------------------------------------------------------------------------------

sub _check_for_duplicate {
    my ( $self, $archive ) = @_;

    my $sha256 = sha256($archive);
    my $dupe = $self->repo->db->schema->search_distribution( { sha256 => $sha256 } )->first;

    return if not defined $dupe;
    return $dupe if $archive->basename eq $dupe->archive;

    throw "Archive $archive is the same as $dupe but with different name";
}

#-----------------------------------------------------------------------------

sub _apply_exclusions {
    my ( $self, $dist ) = @_;

    my @rules = map { s/^\/// ? qr/$_/ : $_ } @{ $self->no_index };

    my $matcher = sub {
        my ( $rule, $pkg ) = @_;
        return ref $rule eq 'Regexp'
            ? $pkg->name =~ $rule
            : $pkg->name eq $rule;
    };

    my @pkgs = $dist->packages;
    for my $rule (@rules) {
        for my $pkg (@pkgs) {
            next unless $matcher->( $rule, $pkg );
            $self->warning("Excluding matching package $pkg from index");
            $pkg->delete;
        }
    }

    throw "Distribution $dist has no packages left"
        if $dist->packages->count == 0;

    return $self;
}

#------------------------------------------------------------------------------

__PACKAGE__->meta->make_immutable;

#-----------------------------------------------------------------------------
1;

__END__

=pod

=encoding UTF-8

=for :stopwords Jeffrey Ryan Thalhammer

=head1 NAME

Pinto::Action::Add - Add a local distribution into the repository

=head1 VERSION

version 0.11

=head1 AUTHOR

Jeffrey Ryan Thalhammer <jeff@stratopan.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2015 by Jeffrey Ryan Thalhammer.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
