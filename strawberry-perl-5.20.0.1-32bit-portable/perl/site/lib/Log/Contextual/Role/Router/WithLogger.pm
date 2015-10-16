package Log::Contextual::Role::Router::WithLogger;
$Log::Contextual::Role::Router::WithLogger::VERSION = '0.006005';
# ABSTRACT: Abstract interface between loggers and logging code blocks

use Moo::Role;

requires 'with_logger';

1;

__END__

=pod

=encoding UTF-8

=head1 NAME

Log::Contextual::Role::Router::WithLogger - Abstract interface between loggers and logging code blocks

=head1 VERSION

version 0.006005

=head1 AUTHOR

Arthur Axel "fREW" Schmidt <frioux+cpan@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2015 by Arthur Axel "fREW" Schmidt.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
