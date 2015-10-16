use 5.008001;
use strict;
use warnings;

package Log::Any::Proxy;

# ABSTRACT: Log::Any generator proxy object
our $VERSION = '1.032';

use Log::Any::Adapter::Util ();

sub _default_formatter {
    my ( $cat, $lvl, $format, @params ) = @_;
    my @new_params =
      map { !defined($_) ? '<undef>' : ref($_) ? _dump_one_line($_) : $_ }
      @params;
    return sprintf( $format, @new_params );
}

sub _dump_one_line {
    my ($value) = @_;

    return Data::Dumper->new( [$value] )->Indent(0)->Sortkeys(1)->Quotekeys(0)
      ->Terse(1)->Useqq(1)->Dump();
}

sub new {
    my $class = shift;
    my $self = { formatter => \&_default_formatter, @_ };
    unless ( $self->{adapter} ) {
        require Carp;
        Carp::croak("$class requires an 'adapter' parameter");
    }
    unless ( $self->{category} ) {
        require Carp;
        Carp::croak("$class requires an 'category' parameter")
    }
    bless $self, $class;
    $self->init(@_);
    return $self;
}

sub init { }

for my $attr (qw/adapter filter formatter prefix/) {
    no strict 'refs';
    *{$attr} = sub { return $_[0]->{$attr} };
}

my %aliases = Log::Any::Adapter::Util::log_level_aliases();

# Set up methods/aliases and detection methods/aliases
foreach my $name ( Log::Any::Adapter::Util::logging_methods(), keys(%aliases) )
{
    my $realname    = $aliases{$name} || $name;
    my $namef       = $name . "f";
    my $is_name     = "is_$name";
    my $is_realname = "is_$realname";
    my $numeric     = Log::Any::Adapter::Util::numeric_level($realname);
    no strict 'refs';
    *{$is_name} = sub {
        my ($self) = @_;
        return $self->{adapter}->$is_realname;
    };
    *{$name} = sub {
        my ( $self, @parts ) = @_;
        my $message = join(" ", grep { defined($_) && length($_) } @parts );
        return unless length $message;
        $message = $self->{filter}->( $self->{category}, $numeric, $message )
          if defined $self->{filter};
        return unless defined $message and length $message;
        $message = "$self->{prefix}$message"
          if defined $self->{prefix} && length $self->{prefix};
        return $self->{adapter}->$realname($message);
    };
    *{$namef} = sub {
        my ( $self, @args ) = @_;
        return unless $self->{adapter}->$is_realname;
        my $message =
          $self->{formatter}->( $self->{category}, $numeric, @args );
        return unless defined $message and length $message;
        return $self->$name($message);
    };
}

1;


# vim: ts=4 sts=4 sw=4 et tw=75:

__END__

=pod

=encoding UTF-8

=head1 NAME

Log::Any::Proxy - Log::Any generator proxy object

=head1 VERSION

version 1.032

=head1 SYNOPSIS

    # prefix log messages
    use Log::Any '$log', prefix => 'MyApp: ';

    # transform log messages
    use Log::Any '$log', filter => \&myfilter;

    # format with String::Flogger instead of the default
    use String::Flogger;
    use Log::Any '$log', formatter => sub {
        my ($cat, $lvl, @args) = @_;
        String::Flogger::flog( @args );
    };

=head1 DESCRIPTION

Log::Any::Proxy objects are what modules use to produce log messages.  They
construct messages and pass them along to a configured adapter.

=head1 USAGE

=head2 Simple logging

Your library can do simple logging using logging methods corresponding to
the log levels (or aliases):

=over 4

=item *

trace

=item *

debug

=item *

info (inform)

=item *

notice

=item *

warning (warn)

=item *

error (err)

=item *

critical (crit, fatal)

=item *

alert

=item *

emergency

=back

Pass a string to be logged.  Do not include a newline.

    $log->info("Got some new for you.");

The log string will be tranformed via the C<filter> attribute (if any) and
the C<prefix> (if any) will be prepended.

B<NOTE>: While you are encouraged to pass a single string to be logged, if
multiple arguments are passed, they are concatenated with a space character
into a single string before processing.  This ensures consistency across
adapters, some of which may support multiple arguments to their logging
functions (and which concatenate in different ways) and some of which do
not.

=head2 Advanced logging

Your library can do advanced logging using logging methods corresponding to
the log levels (or aliases), but with an "f" appended:

=over 4

=item *

tracef

=item *

debugf

=item *

infof (informf)

=item *

noticef

=item *

warningf (warnf)

=item *

errorf (errf)

=item *

criticalf (critf, fatalf)

=item *

alertf

=item *

emergencyf

=back

When these methods are called, the adapter is first checked to see if it is
logging at that level.  If not, the method returns without logging.

Next, arguments are transformed to a message string via the C<formatter>
attribute.  The default acts like C<sprintf> with some helpful formatting.

Finally, the message string is logged via the simple logging functions, which
can transform or prefix as described above.

=head1 ATTRIBUTES

=head2 adapter

A L<Log::Any::Adapter> object to receive any messages logged.  This is
generated by L<Log::Any> and can not be overridden.

=head2 category

The category name of the proxy.  If not provided, L<Log::Any> will set it
equal to the calling when the proxy is constructed.

=head2 filter

A code reference to transform messages before passing them to a
Log::Any::Adapter.  It gets three arguments: a category, a numeric level
and a string.  It should return a string to be logged.

    sub {
        my ($cat, $lvl, $msg) = @_;
        return "[$lvl] $msg";
    }

If the return value is undef or the empty string, no message will be
logged.  Otherwise, the return value is passed to the logging adapter.

Numeric levels range from 0 (emergency) to 8 (trace).  Constant functions
for these levels are available from L<Log::Any::Adapter::Util>.

=head2 formatter

A code reference to format messages given to the C<*f> methods (C<tracef>,
C<debugf>, C<infof>, etc..)

It get three or more arguments: a category, a numeric level and the list
of arguments passsed to the C<*f> method.  It should return a string to
be logged.

    sub {
        my ($cat, $lvl, $format, @args) = @_;
        return sprintf($format, @args);
    }

The default formatter acts like C<sprintf>, except that undef arguments are
changed to C<< <undef> >> and any references or objects are dumped via
L<Data::Dumper> (but without newlines).

Numeric levels range from 0 (emergency) to 8 (trace).  Constant functions
for these levels are available from L<Log::Any::Adapter::Util>.

=head2 prefix

If defined, this string will be prepended to all messages.  It will not
include a trailing space, so add that yourself if you want.  This is less
flexible/powerful than L</filter>, but avoids an extra function call.

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
