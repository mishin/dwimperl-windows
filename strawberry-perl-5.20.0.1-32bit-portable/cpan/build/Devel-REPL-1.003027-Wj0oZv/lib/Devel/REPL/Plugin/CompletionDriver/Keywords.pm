use strict;
use warnings;
package Devel::REPL::Plugin::CompletionDriver::Keywords;
# ABSTRACT: Complete Perl keywords and operators

our $VERSION = '1.003027';

use Devel::REPL::Plugin;
use Devel::REPL::Plugin::Completion;    # die early if cannot load
use B::Keywords qw/@Functions @Barewords/;
use namespace::autoclean;

sub BEFORE_PLUGIN {
    my $self = shift;
    $self->load_plugin('Completion');
}

around complete => sub {
  my $orig = shift;
  my ($self, $text, $document) = @_;

  my $last = $self->last_ppi_element($document);

  return $orig->(@_)
    unless $last->isa('PPI::Token::Word');

  # don't complete keywords on foo->method
  return $orig->(@_)
    if $last->sprevious_sibling
    && $last->sprevious_sibling->isa('PPI::Token::Operator')
    && $last->sprevious_sibling->content eq '->';

  my $re = qr/^\Q$last/;

  return $orig->(@_),
         grep { $_ =~ $re } @Functions, @Barewords;
};

1;

__END__

=pod

=encoding UTF-8

=head1 NAME

Devel::REPL::Plugin::CompletionDriver::Keywords - Complete Perl keywords and operators

=head1 VERSION

version 1.003027

=head1 AUTHOR

Shawn M Moore, C<< <sartak at gmail dot com> >>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2007 by Matt S Trout - mst (at) shadowcatsystems.co.uk (L<http://www.shadowcatsystems.co.uk/>).

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
