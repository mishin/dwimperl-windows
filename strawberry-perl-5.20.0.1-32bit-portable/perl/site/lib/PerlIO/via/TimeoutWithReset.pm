#
# This file is part of IO-Socket-Timeout
#
# This software is copyright (c) 2013 by Damien "dams" Krotkine.
#
# This is free software; you can redistribute it and/or modify it under
# the same terms as the Perl 5 programming language system itself.
#
package PerlIO::via::TimeoutWithReset;
{
  $PerlIO::via::TimeoutWithReset::VERSION = '0.17';
}

use strict;
use warnings;

use Errno qw(ECONNRESET ETIMEDOUT);
use base qw(PerlIO::via::Timeout);

sub READ {
    # params: SELF, BUF, LEN, FH
    my $prop = $_[0]->_fh2prop($_[3]);
    $prop->{_invalid}
      # There is a bug in PerlIO::via (possibly in PerlIO ?). We would like
      # to return -1 to signify error, but doing so doesn't work (it usually
      # segfault), it looks like the implementation is not complete. So we
      # return 0.
      and $! = ECONNRESET, return 0;
    my $rv = shift->SUPER::READ(@_);
    ($rv || 0) <= 0 && 0+$! == ETIMEDOUT
      and $prop->{_invalid} = 1;
    return $rv;
}

sub WRITE {
    # params: SELF, BUF, FH
    my $prop = $_[0]->_fh2prop($_[2]);
    $prop->{_invalid}
      and $! = ECONNRESET, return -1;
    my $rv = shift->SUPER::WRITE(@_);
    ($rv || 0) <= 0 && 0+$! == ETIMEDOUT
      and $prop->{_invalid} = 1;
    return $rv;
}

1;

__END__

=pod

=head1 NAME

PerlIO::via::TimeoutWithReset

=head1 VERSION

version 0.17

=head1 AUTHOR

Damien "dams" Krotkine

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2013 by Damien "dams" Krotkine.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
