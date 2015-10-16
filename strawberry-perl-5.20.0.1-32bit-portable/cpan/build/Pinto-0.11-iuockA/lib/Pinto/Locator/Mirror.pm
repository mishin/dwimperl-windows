# ABSTRACT: The package index of a repository

package Pinto::Locator::Mirror;

use Moose;
use MooseX::StrictConstructor;
use MooseX::Types::Moose qw(HashRef);
use MooseX::MarkAsMethods (autoclean => 1);

use URI;
use URI::Escape;

use Pinto::Types qw(Uri File);
use Pinto::Util qw(throw debug);
use Pinto::IndexReader;

use version;

#------------------------------------------------------------------------

our $VERSION = '0.11'; # VERSION

#------------------------------------------------------------------------

extends qw(Pinto::Locator);

#------------------------------------------------------------------------

with qw(Pinto::Role::UserAgent);

#------------------------------------------------------------------------

has index_file => (
    is         => 'ro',
    isa        => File,
    builder    => '_build_index_file',
    clearer    => '_clear_index_file',
    lazy       => 1,
);

has reader => (
    is        => 'ro',
    isa       => 'Pinto::IndexReader',
    default   => sub { Pinto::IndexReader->new(index_file => $_[0]->index_file)},
    clearer   => '_clear_reader',
    lazy      => 1,
);

#------------------------------------------------------------------------------

sub _build_index_file {
    my ($self) = @_;

    my $uri = $self->uri->canonical->as_string;
    $uri =~ s{ /*$ }{}mx;   # Remove trailing slash
    $uri = URI->new($uri);  # Reconstitute as URI object (why?)

    my $details_filename = '02packages.details.txt.gz';
    my $cache_dir = $self->cache_dir->subdir( URI::Escape::uri_escape($uri) );
    my $destination = $cache_dir->file($details_filename);
    my $source = URI->new( "$uri/modules/$details_filename" );

    $self->mirror($source => $destination);

    return $destination;
}

#------------------------------------------------------------------------

sub locate_package {
    my ($self, %args) = @_;

    my $target = $args{target};

    return unless my $found = $self->reader->packages->{$target->name};
    return unless $target->is_satisfied_by( $found->{version} );

    # Indexes from a Pinto repository have fake records for core modules, so
    # installers can decide if they need to update a dual-life module. If we
    # get one of those fake records, then we pretend we didn't see it. So if
    # we really do need a perl, some other upstream source will provide it.

    if ( $found->{path} =~ m{^F/FA/FAKE/perl} ) {
        my ($uri, $path) = ($self->uri, $found->{path});
        debug "Skipping fake perl found on $uri at $path";
        return;
    }

    $found = { %$found }; # Shallow clone
    $found->{package} = delete $found->{name};
    $found->{uri} = URI->new($self->uri . "/authors/id/$found->{path}");
    $found->{version} = version->parse($found->{version});
    delete $found->{path};

    return $found;
}

#------------------------------------------------------------------------

sub locate_distribution {
    my ($self, %args) = @_;

    my $target = $args{target};
    my $path  = $target->path;

    my @extensions = qw(tar.gz tar.bz2 tar gz tgz bz2 zip z);
    my $has_extension = $path =~ m/[.](?:tar|gz|tgz|zip|z|bz2)$/i;
    my @paths_to_try = $has_extension ? ($path) : map { "$path.$_" } @extensions;

    for my $path (@paths_to_try) {
        my $uri  = URI->new($self->uri . '/authors/id/' . $path);
        return {uri => $uri} if $self->head($uri)->is_success;
    }

    return;
}

#------------------------------------------------------------------------

sub refresh {
    my ($self) = @_;

    $self->index_file->remove;
    $self->_clear_index_file;
    $self->_clear_reader;

    return $self;
}
#------------------------------------------------------------------------

__PACKAGE__->meta->make_immutable;

#------------------------------------------------------------------------
1;

__END__

=pod

=encoding UTF-8

=for :stopwords Jeffrey Ryan Thalhammer

=head1 NAME

Pinto::Locator::Mirror - The package index of a repository

=head1 VERSION

version 0.11

=head1 AUTHOR

Jeffrey Ryan Thalhammer <jeff@stratopan.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2015 by Jeffrey Ryan Thalhammer.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
