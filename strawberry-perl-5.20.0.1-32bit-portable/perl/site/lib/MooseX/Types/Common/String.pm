package MooseX::Types::Common::String;
# ABSTRACT:  Commonly used string types
our $VERSION = '0.001013';
use strict;
use warnings;

use MooseX::Types -declare => [
  qw(SimpleStr
     NonEmptySimpleStr
     NumericCode
     LowerCaseSimpleStr
     UpperCaseSimpleStr
     Password
     StrongPassword
     NonEmptyStr
     LowerCaseStr
     UpperCaseStr)
];

use MooseX::Types::Moose qw/Str/;
use if MooseX::Types->VERSION >= 0.42, 'namespace::autoclean';

subtype SimpleStr,
  as Str,
  where { (length($_) <= 255) && ($_ !~ m/\n/) },
  message { "Must be a single line of no more than 255 chars" },
    ( $Moose::VERSION >= 2.0200
        ? inline_as {
            $_[0]->parent()->_inline_check( $_[1] ) . ' && '
                . qq{ ( (length($_[1]) <= 255) && ($_[1] !~ m/\n/) ) };
        }
        : ()
    );

subtype NonEmptySimpleStr,
  as SimpleStr,
  where { length($_) > 0 },
  message { "Must be a non-empty single line of no more than 255 chars" },
    ( $Moose::VERSION >= 2.0200
        ? inline_as {
            $_[0]->parent()->_inline_check( $_[1] ) . ' && '
                . qq{ (length($_[1]) > 0) };
        }
        : ()
    );

subtype NumericCode,
  as NonEmptySimpleStr,
  where { $_ =~ m/^[0-9]+$/ },
  message {
    'Must be a non-empty single line of no more than 255 chars that consists '
        . 'of numeric characters only'
  };

coerce NumericCode,
  from NonEmptySimpleStr,
  via { my $code = $_; $code =~ s/[[:punct:][:space:]]//g; return $code };

subtype Password,
  as NonEmptySimpleStr,
  where { length($_) > 3 },
  message { "Must be between 4 and 255 chars" },
    ( $Moose::VERSION >= 2.0200
        ? inline_as {
            $_[0]->parent()->_inline_check( $_[1] ) . ' && '
                . qq{ (length($_[1]) > 3) };
        }
        : ()
    );

subtype StrongPassword,
  as Password,
  where { (length($_) > 7) && (m/[^a-zA-Z]/) },
  message {"Must be between 8 and 255 chars, and contain a non-alpha char" },
    ( $Moose::VERSION >= 2.0200
        ? inline_as {
            $_[0]->parent()->_inline_check( $_[1] ) . ' && '
                . qq{ ( (length($_[1]) > 7) && ($_[1] =~ m/[^a-zA-Z]/) ) };
        }
        : ()
    );

subtype NonEmptyStr,
  as Str,
  where { length($_) > 0 },
  message { "Must not be empty" },
    ( $Moose::VERSION >= 2.0200
        ? inline_as {
            $_[0]->parent()->_inline_check( $_[1] ) . ' && '
                . qq{ (length($_[1]) > 0) };
        }
        : ()
    );

subtype LowerCaseStr,
  as NonEmptyStr,
  where { !/\p{Upper}/ms },
  message { "Must not contain upper case letters" },
    ( $Moose::VERSION >= 2.0200
        ? inline_as {
            $_[0]->parent()->_inline_check( $_[1] ) . ' && '
                . qq{ ( $_[1] !~ /\\p{Upper}/ms ) };
        }
        : ()
    );

coerce LowerCaseStr,
  from NonEmptyStr,
  via { lc };

subtype UpperCaseStr,
  as NonEmptyStr,
  where { !/\p{Lower}/ms },
  message { "Must not contain lower case letters" },
    ( $Moose::VERSION >= 2.0200
        ? inline_as {
            $_[0]->parent()->_inline_check( $_[1] ) . ' && '
                . qq{ ( $_[1] !~ /\\p{Lower}/ms ) };
        }
        : ()
    );

coerce UpperCaseStr,
  from NonEmptyStr,
  via { uc };

subtype LowerCaseSimpleStr,
  as NonEmptySimpleStr,
  where { !/\p{Upper}/ },
  message { "Must not contain upper case letters" },
    ( $Moose::VERSION >= 2.0200
        ? inline_as {
            $_[0]->parent()->_inline_check( $_[1] ) . ' && '
                . qq{ ( $_[1] !~ /\\p{Upper}/ ) };
        }
        : ()
    );

coerce LowerCaseSimpleStr,
  from NonEmptySimpleStr,
  via { lc };

subtype UpperCaseSimpleStr,
  as NonEmptySimpleStr,
  where { !/\p{Lower}/ },
  message { "Must not contain lower case letters" },
    ( $Moose::VERSION >= 2.0200
        ? inline_as {
            $_[0]->parent()->_inline_check( $_[1] ) . ' && '
                . qq{ ( $_[1] !~ /\\p{Lower}/ ) };
        }
        : ()
    );

coerce UpperCaseSimpleStr,
  from NonEmptySimpleStr,
  via { uc };

1;

__END__

=pod

=encoding UTF-8

=head1 NAME

MooseX::Types::Common::String - Commonly used string types

=head1 VERSION

version 0.001013

=head1 SYNOPSIS

    use MooseX::Types::Common::String qw/SimpleStr/;
    has short_str => (is => 'rw', isa => SimpleStr);

    ...
    #this will fail
    $object->short_str("string\nwith\nbreaks");

=head1 DESCRIPTION

A set of commonly-used string type constraints that do not ship with Moose by
default.

=over

=item * C<SimpleStr>

A C<Str> with no new-line characters.

=item * C<NonEmptySimpleStr>

A C<Str> with no new-line characters and length > 0

=item * C<LowerCaseSimpleStr>

A C<Str> with no new-line characters, length > 0 and no uppercase characters
A coercion exists via C<lc> from C<NonEmptySimpleStr>

=item * C<UpperCaseSimpleStr>

A C<Str> with no new-line characters, length > 0 and no lowercase characters
A coercion exists via C<uc> from C<NonEmptySimpleStr>

=item * C<Password>

=item * C<StrongPassword>

=item * C<NonEmptyStr>

A C<Str> with length > 0

=item * C<LowerCaseStr>

A C<Str> with length > 0 and no uppercase characters.
A coercion exists via C<lc> from C<NonEmptyStr>

=item * C<UpperCaseStr>

A C<Str> with length > 0 and no lowercase characters.
A coercion exists via C<uc> from C<NonEmptyStr>

=item * C<NumericCode>

A C<Str> with no new-line characters that consists of only Numeric characters.
Examples include, Social Security Numbers, Personal Identification Numbers, Postal Codes, HTTP Status
Codes, etc. Supports attempting to coerce from a string that has punctuation
or whitespaces in it ( e.g credit card number 4111-1111-1111-1111 ).

=back

=head1 SEE ALSO

=over

=item * L<MooseX::Types::Common::Numeric>

=back

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

=cut
