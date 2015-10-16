use strict;
use warnings;
package App::Nopaste::Service::Shadowcat;
# ABSTRACT: Service provider for Shadowcat - http://paste.scsys.co.uk/
our $VERSION = '1.004';
use base 'App::Nopaste::Service';

sub available {
    my $self = shift;
    my %args = @_;
    return !(exists($args{private}) && $args{private});
}

sub uri { "http://paste.scsys.co.uk" }

1;

__END__

=pod

=encoding UTF-8

=head1 NAME

App::Nopaste::Service::Shadowcat - Service provider for Shadowcat - http://paste.scsys.co.uk/

=head1 VERSION

version 1.004

=head1 AUTHOR

Shawn M Moore, <sartak@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2008 by Shawn M Moore.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
