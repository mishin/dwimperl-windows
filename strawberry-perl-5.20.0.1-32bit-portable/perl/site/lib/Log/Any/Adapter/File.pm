use 5.008001;
use strict;
use warnings;

package Log::Any::Adapter::File;

# ABSTRACT: Simple adapter for logging to files
our $VERSION = '1.032';

use Config;
use Fcntl qw/:flock/;
use IO::File;
use Log::Any::Adapter::Util ();

use base qw/Log::Any::Adapter::Base/;

my $HAS_FLOCK = $Config{d_flock} || $Config{d_fcntl_can_lock} || $Config{d_lockf};

my $trace_level = Log::Any::Adapter::Util::numeric_level('trace');
sub new {
    my ( $class, $file, @args ) = @_;
    return $class->SUPER::new( file => $file, log_level => $trace_level, @args );
}

sub init {
    my $self = shift;
    if ( exists $self->{log_level} ) {
        $self->{log_level} = Log::Any::Adapter::Util::numeric_level( $self->{log_level} )
            unless $self->{log_level} =~ /^\d+$/;
    }
    else {
        $self->{log_level} = $trace_level;
    }
    my $file = $self->{file};
    open( $self->{fh}, ">>", $file )
      or die "cannot open '$file' for append: $!";
    $self->{fh}->autoflush(1);
}

foreach my $method ( Log::Any::Adapter::Util::logging_methods() ) {
    no strict 'refs';
    my $method_level = Log::Any::Adapter::Util::numeric_level( $method );
    *{$method} = sub {
        my ( $self, $text ) = @_;
        return if $method_level > $self->{log_level};
        my $msg = sprintf( "[%s] %s\n", scalar(localtime), $text );
        flock($self->{fh}, LOCK_EX) if $HAS_FLOCK;
        $self->{fh}->print($msg);
        flock($self->{fh}, LOCK_UN) if $HAS_FLOCK;
      }
}

foreach my $method ( Log::Any::Adapter::Util::detection_methods() ) {
    no strict 'refs';
    my $base = substr($method,3);
    my $method_level = Log::Any::Adapter::Util::numeric_level( $base );
    *{$method} = sub {
        return !!(  $method_level <= $_[0]->{log_level} );
    };
}

1;

__END__

=pod

=encoding UTF-8

=head1 NAME

Log::Any::Adapter::File - Simple adapter for logging to files

=head1 VERSION

version 1.032

=head1 SYNOPSIS

    use Log::Any::Adapter ('File', '/path/to/file.log');

    # or

    use Log::Any::Adapter;
    ...
    Log::Any::Adapter->set('File', '/path/to/file.log');

    # with minimum level 'warn'

    use Log::Any::Adapter (
        'File', '/path/to/file.log', log_level => 'warn',
    );

=head1 DESCRIPTION

This simple built-in L<Log::Any|Log::Any> adapter logs each message to the
specified file, with a datestamp prefix and newline appended. The file is
opened for append with autoflush on.  If C<flock> is available, the handle
will be locked when writing.

The C<log_level> attribute may be set to define a minimum level to log.

Category is ignored.

=head1 SEE ALSO

L<Log::Any|Log::Any>, L<Log::Any::Adapter|Log::Any::Adapter>

=head1 AUTHORS

=over 4

=item *

Jonathan Swartz <swartz@pobox.com>

=item *

David Golden <dagolden@cpan.org>

=back

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2014 by Jonathan Swartz and David Golden.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
