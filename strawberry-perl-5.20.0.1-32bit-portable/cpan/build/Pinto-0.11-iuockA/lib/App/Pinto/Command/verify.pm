package App::Pinto::Command::verify;

# ABSTRACT: report archives that are missing

use strict;
use warnings;

#-----------------------------------------------------------------------------

use base 'App::Pinto::Command';

#------------------------------------------------------------------------------

our $VERSION = '0.11'; # VERSION

#-----------------------------------------------------------------------------

1;

__END__

=pod

=encoding UTF-8

=for :stopwords Jeffrey Ryan Thalhammer

=head1 NAME

App::Pinto::Command::verify - report archives that are missing

=head1 VERSION

version 0.11

=head1 SYNOPSIS

  pinto --root=REPOSITORY_ROOT verify

=head1 DESCRIPTION

This command reports distributions that are defined in the repository
database, but the archives are not actually present.  This could occur
when L<Pinto> aborts unexpectedly due to an exception or you terminate
a command prematurely.

At the moment, it isn't clear how to fix this situation.  In a future
release you might be able to replace the archive for the distribution.
But for now, this command simply lets you know if something has gone
wrong in your repository.

=head1 COMMAND ARGUMENTS

None

=head1 COMMAND OPTIONS

None

=head1 AUTHOR

Jeffrey Ryan Thalhammer <jeff@stratopan.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2015 by Jeffrey Ryan Thalhammer.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
