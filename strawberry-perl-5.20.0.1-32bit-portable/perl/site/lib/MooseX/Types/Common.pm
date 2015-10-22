package MooseX::Types::Common; # git description: v0.001012-15-ge054d66
# ABSTRACT: A library of commonly used type constraints
our $VERSION = '0.001013';
use strict;
use warnings;
use Carp ();

sub import {
    my $self = shift;
    return unless @_;
    Carp::cluck("Tried to import the symbols " . join(', ', @_)
        . " from MooseX::Types::Common.\nDid you mean "
        . "MooseX::Types::Common::String or MooseX::Type::Common::Numeric?");
}

1;

__END__

=pod

=encoding UTF-8

=head1 NAME

MooseX::Types::Common - A library of commonly used type constraints

=head1 VERSION

version 0.001013

=head1 SYNOPSIS

    use MooseX::Types::Common::String qw/SimpleStr/;
    has short_str => (is => 'rw', isa => SimpleStr);

    ...
    #this will fail
    $object->short_str("string\nwith\nbreaks");


    use MooseX::Types::Common::Numeric qw/PositiveInt/;
    has count => (is => 'rw', isa => PositiveInt);

    ...
    #this will fail
    $object->count(-33);

=head1 DESCRIPTION

A set of commonly-used type constraints that do not ship with Moose by default.

=head1 SEE ALSO

=over

=item * L<MooseX::Types::Common::String>

=item * L<MooseX::Types::Common::Numeric>

=item * L<MooseX::Types>

=item * L<Moose::Util::TypeConstraints>

=back

=head1 ORIGIN

This distribution was extracted from the L<Reaction> code base by Guillermo
Roditi (groditi).

=head1 AUTHORS

=over 4

=item *

Matt S Trout - mst (at) shadowcatsystems.co.uk (L<http://www.shadowcatsystems.co.uk/>)

=item *

K. James Cheetham <jamie@shadowcatsystems.co.uk>

=item *

Guillermo Roditi <groditi@gmail.com>

=back

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2015 by Matt S Trout - mst (at) shadowcatsystems.co.uk (L<http://www.shadowcatsystems.co.uk/>).

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=head1 CONTRIBUTORS

=for stopwords Karen Etheridge Justin Hunter Dave Rolsky Tomas Doran Graham Knop Denis Ibaev

=over 4

=item *

Karen Etheridge <ether@cpan.org>

=item *

Justin Hunter <justin.d.hunter@gmail.com>

=item *

Dave Rolsky <autarch@urth.org>

=item *

Tomas Doran <bobtfish@bobtfish.net>

=item *

Graham Knop <haarg@haarg.org>

=item *

Denis Ibaev <dionys@gmail.com>

=back

=cut
