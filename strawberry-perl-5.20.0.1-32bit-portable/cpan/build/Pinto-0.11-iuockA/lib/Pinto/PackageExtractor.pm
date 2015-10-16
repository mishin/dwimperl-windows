# ABSTRACT: Extract packages provided/required by a distribution archive

package Pinto::PackageExtractor;

use Moose;
use MooseX::StrictConstructor;
use MooseX::MarkAsMethods ( autoclean => 1 );

use Try::Tiny;
use Dist::Metadata;

use Pinto::Types qw(File Dir);
use Pinto::Util qw(debug throw whine);
use Pinto::ArchiveUnpacker;

#-----------------------------------------------------------------------------

our $VERSION = '0.11'; # VERSION

#-----------------------------------------------------------------------------

has archive => (
    is       => 'ro',
    isa      => File,
    required => 1,
    coerce   => 1,
);

has unpacker => (
    is       => 'ro',
    isa      => 'Pinto::ArchiveUnpacker',
    default  => sub { Pinto::ArchiveUnpacker->new( archive => $_[0]->archive ) },
    init_arg => undef,
    lazy     => 1,
);

has work_dir => (
    is       => 'ro',
    isa      => Dir,
    default  => sub { $_[0]->unpacker->unpack },
    init_arg => undef,
    lazy     => 1,
);

has dm => (
    is       => 'ro',
    isa      => 'Dist::Metadata',
    default  => sub { Dist::Metadata->new( dir => $_[0]->work_dir, include_inner_packages => 1 ) },
    init_arg => undef,
    lazy     => 1,
);

#-----------------------------------------------------------------------------

sub provides {
    my ($self) = @_;

    my $archive = $self->archive;
    my $basename = $archive->basename;
    debug "Extracting packages provided by archive $basename";

    my $mod_info = try {

        # Some modules get their VERSION by loading some other
        # module from lib/.  So make sure that lib/ is in @INC
        my $lib_dir = $self->work_dir->subdir('lib');
        local @INC = ( $lib_dir->stringify, @INC );

        # TODO: Run this under Safe to protect ourselves
        # from evil.  See ANDK/pause/pmfile.pm for example
        $self->dm->module_info;    # returned from try{}
    }
    catch {
        throw "Unable to extract packages from $basename: $_";
    };

    my @provides;
    for my $package ( sort keys %{$mod_info} ) {

        my $info    = $mod_info->{$package};
        my $version = version->parse( $info->{version} );
        debug "Archive $basename provides: $package-$version";

        push @provides, { 
            name    => $package, 
            version => $version,
            file    => $info->{file},
        };
    }

    @provides = $self->__apply_workarounds(@provides);

    whine "$basename contains no packages and will not be in the index" 
        if not @provides;

    return @provides;
}

#-----------------------------------------------------------------------------

sub requires {
    my ($self) = @_;

    my $archive = $self->archive;
    debug "Extracting packages required by archive $archive";

    my $prereqs_meta = try { $self->dm->meta->prereqs } 
                     catch { throw "Unable to extract prereqs from $archive: $_" };

    my @prereqs;
    for my $phase ( keys %{$prereqs_meta} ) {

        # TODO: Also capture the relation (suggested, requires, recomends, etc.)
        # But that will require a schema change to add another column to the table.

        my $prereqs_for_phase = $prereqs_meta->{$phase}        || {};
        my $required_prereqs  = $prereqs_for_phase->{requires} || {};

        for my $package ( sort keys %{$required_prereqs} ) {

            my $version = $required_prereqs->{$package};
            debug "Archive $archive requires ($phase): $package~$version";

            push @prereqs, { 
                name    => $package, 
                version => $version,
                phase   => $phase, 
            };

        }
    }

    my $base = $archive->basename;

    whine "$base appears to be a bundle.  Prereqs for bundles cannot be determined automatically"
        if $base =~ m/^ Bundle- /x;

#    whine "$base uses dynamic configuration so prereqs may be incomplete"
#        if $self->dm->meta->dynamic_config;

    return @prereqs;
}

#-----------------------------------------------------------------------------

sub metadata {
    my ($self) = @_;

    my $archive = $self->archive;
    debug "Extracting metadata from archive $archive";

    my $metadata = try { $self->dm->meta } catch { throw "Unable to extract metadata from $archive: $_" };

    return $metadata;
}

#=============================================================================
# TODO: Generalize these workarounds and/or move them into a separate module

sub __apply_workarounds {
    my ($self, @provides) = @_;

    return $self->__common_sense_workaround(@provides)
        if $self->archive->basename =~ m/^ common-sense /x;

    return $self->__fcgi_workaround(@provides)
        if $self->archive->basename =~ m/^ FCGI-\d /x;

    return $self->__eumm_workaround(@provides)
        if $self->archive->basename =~ m/ ExtUtils-MakeMaker /x;

    return @provides;
}

#-----------------------------------------------------------------------------

sub __common_sense_workaround {
    my ($self) = @_;

    my ($version) = ( $self->archive->basename =~ m/common-sense- ([\d_.]+) \.tar\.gz/x );

    return {
        name    => 'common::sense',
        file    => 'sense.pm.PL',
        version => version->parse($version),
    };
}

#-----------------------------------------------------------------------------

sub __fcgi_workaround {
    my ($self) = @_;

    my ($version) = ( $self->archive->basename =~ m/FCGI- ([\d_.]+) \.tar\.gz/x );

    return {
        name    => 'FCGI',
        file    => 'FCGI.PL',
        version => version->parse($version),
    };
}

#-----------------------------------------------------------------------------

sub __eumm_workaround {
  my ($self, @provides) = @_;

  # See https://github.com/thaljef/Pinto/issues/204 
  return grep { $_->{name} ne "version" } @provides;
}

#-----------------------------------------------------------------------------

__PACKAGE__->meta->make_immutable;

#-----------------------------------------------------------------------------

1;

__END__

=pod

=encoding UTF-8

=for :stopwords Jeffrey Ryan Thalhammer

=head1 NAME

Pinto::PackageExtractor - Extract packages provided/required by a distribution archive

=head1 VERSION

version 0.11

=head1 AUTHOR

Jeffrey Ryan Thalhammer <jeff@stratopan.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2015 by Jeffrey Ryan Thalhammer.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
