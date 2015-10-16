# ABSTRACT: Compute difference between two revisions

package Pinto::Difference;

use Moose;
use MooseX::StrictConstructor;
use MooseX::Types::Moose qw(ArrayRef Bool);
use MooseX::MarkAsMethods ( autoclean => 1 );

use Pinto::DifferenceEntry;
use Pinto::Constants qw(:diff);
use Pinto::Types qw(DiffStyle);
use Pinto::Util qw(itis default_diff_style);

use overload ( q{""} => 'to_string' );

#------------------------------------------------------------------------------

our $VERSION = '0.11'; # VERSION

#------------------------------------------------------------------------------

has left => (
    is       => 'ro',
    isa      => 'Pinto::Schema::Result::Revision',
    required => 1,
);

has right => (
    is       => 'ro',
    isa      => 'Pinto::Schema::Result::Revision',
    required => 1,
);

has entries => (
    traits   => [qw(Array)],
    handles  => { entries => 'elements' },
    isa      => ArrayRef ['Pinto::DifferenceEntry'],
    builder  => '_build_diffs',
    init_arg => undef,
    lazy     => 1,
);

has additions => (
    traits  => [qw(Array)],
    handles => { additions => 'elements' },
    isa     => ArrayRef ['Pinto::DifferenceEntry'],
    default => sub { [ grep { $_->op eq '+' } shift->entries ] },
    init_arg => undef,
    lazy     => 1,
);

has deletions => (
    traits  => [qw(Array)],
    handles => { deletions => 'elements' },
    isa     => ArrayRef ['Pinto::DifferenceEntry'],
    default => sub { [ grep { $_->op eq '-' } shift->entries ] },
    init_arg => undef,
    lazy     => 1,
);

has is_different => (
    is       => 'ro',
    isa      => Bool,
    init_arg => undef,
    default  => sub { shift->entries > 0 },
    lazy     => 1,
);

has style => (
    is       => 'ro',
    isa      => DiffStyle,
    default  => \&default_diff_style,
);

#------------------------------------------------------------------------------

around BUILDARGS => sub {
    my $orig  = shift;
    my $class = shift;
    my $args  = $class->$orig(@_);

    # The left and right attributes can also be Stack objects.
    # In those cases, we just use the head revision of the Stack

    for my $side (qw(left right)) {
        if ( $args->{$side}->isa('Pinto::Schema::Result::Stack') ) {
            $args->{$side} = $args->{$side}->head;
        }
    }

    return $args;
};

#------------------------------------------------------------------------------

sub _build_diffs {
    my ($self) = @_;

    # We want to find the registrations that are "different" in either
    # side.  Two registrations are the same if they have the same values in
    # the package, distribution, and is_pinned columns.  So we use these
    # columns to construct the keys of a hash.  The value is the id of
    # the registration.  For a concise diff, we just use the distribution
    # and is_pinned columns, which effectively groups the records so there
    # is only one diff entry per distribution.  In that case, the package
    # referenced by the registration won't be meaningful.

    my @fields = $self->style eq $PINTO_DIFF_STYLE_DETAILED
        ? qw(distribution package is_pinned)
        : qw(distribution is_pinned);

    my $cb = sub {
        my $value = $_[0]->id;
        my $key = join '|', map { $_[0]->get_column($_) } @fields;
        return ( $key => $value );
    };

    my $attrs = { select => [ 'id', @fields ] };
    my %left = $self->left->registrations( {}, $attrs )->as_hash($cb);
    my %right = $self->right->registrations( {}, $attrs )->as_hash($cb);

    # Now that we have hashes representing the left and right, we use
    # the keys as "sets" and compute the difference between them.  Keys
    # present on the right but not on the left have been added.  And
    # those present on left but not on the right have been deleted.

    my @add_ids = @right{ grep { not exists $left{$_}  } keys %right };
    my @del_ids = @left{  grep { not exists $right{$_} } keys %left };

    # Now we have the ids of all the registrations that were added or
    # deleted between the left and right revisions.  We use those ids to
    # requery the database and construct full objects for each of them.

    my @adds = $self->_create_entries( '+', $self->right, \@add_ids );
    my @dels = $self->_create_entries( '-', $self->left,  \@del_ids );

    # Strictly speaking, the registrations are an unordered list.  But
    # the diff is more readable if we group registrations together by
    # distribution name.

    my @diffs = sort @dels, @adds;

    return \@diffs;
}

#------------------------------------------------------------------------------

sub _create_entries {
    my ( $self, $type, $side, $ids ) = @_;

    # The number of ids is potentially pretty big (1000's) and we
    # can't use that many values in an IN clause.  So we insert all
    # those ids into a temporary table.

    my $tmp_tbl = "__diff_${$}__";
    my $dbh     = $self->right->result_source->schema->storage->dbh;
    $dbh->do("CREATE TEMP TABLE $tmp_tbl (reg INTEGER NOT NULL)");

    my $sth = $dbh->prepare("INSERT INTO $tmp_tbl VALUES( ? )");
    $sth->execute($_) for @{$ids};

    # Now fetch the actual Registration objects (with all their
    # related objects) for each id in the temp table.  Finally,
    # map all the Registrations into DifferenceEntry objects.

    my $where   = { 'me.id' => { in => \"SELECT reg from $tmp_tbl" } };
    my $reg_rs  = $side->registrations($where)->with_distribution->with_package;

    my @entries = map { Pinto::DifferenceEntry->new( op => $type,
                                                     registration => $_ ) } $reg_rs->all;

    $dbh->do("DROP TABLE $tmp_tbl");

    return @entries;
}

#------------------------------------------------------------------------------

sub foreach {
    my ( $self, $cb ) = @_;

    $cb->($_) for $self->entries;

    return $self;
}

#------------------------------------------------------------------------------

sub to_string {
    my ($self) = @_;

    my $format = $self->style eq $PINTO_DIFF_STYLE_CONCISE
        ? '%o[%F] %a/%f'
        : '';

    return join("\n", map {$_->to_string($format) } $self->entries) . "\n";
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

Pinto::Difference - Compute difference between two revisions

=head1 VERSION

version 0.11

=head1 AUTHOR

Jeffrey Ryan Thalhammer <jeff@stratopan.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2015 by Jeffrey Ryan Thalhammer.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
