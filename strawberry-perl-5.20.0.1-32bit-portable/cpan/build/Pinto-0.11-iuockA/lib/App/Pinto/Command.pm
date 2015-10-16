# ABSTRACT: Base class for pinto commands

package App::Pinto::Command;

use strict;
use warnings;

use IO::String;
use Pod::Usage qw(pod2usage);

#-----------------------------------------------------------------------------

use App::Cmd::Setup -command;

#-----------------------------------------------------------------------------

our $VERSION = '0.11'; # VERSION

#-----------------------------------------------------------------------------

sub usage_desc {
    my ( $class_or_self, @args ) = @_;

    my $class = ref $class_or_self || $class_or_self;
    my $file = $class . '.pm';
    $file =~ s{::}{/}xg;
    my $path = $INC{$file} or return;
    my $handle = IO::String->new;

    pod2usage( -output => $handle, -input => $path, -exitval => 'NOEXIT' );

    return ${ $handle->string_ref };
}

#-----------------------------------------------------------------------------

sub pinto {
    my ($self) = @_;
    return $self->app->pinto;
}

#-----------------------------------------------------------------------------

sub validate_args {
    my ( $self, $opts, $args ) = @_;

    $self->usage_error("Arguments are not allowed")
        if @{$args} and not $self->args_attribute;

    return 1;
}

#------------------------------------------------------------------------------

sub execute {
    my ( $self, $opts, $args ) = @_;

    my %args = $self->process_args($opts, $args);
    my $result = $self->pinto->run( $self->action_name, %{$opts}, %args );

    return $result->exit_status;
}

#-----------------------------------------------------------------------------

sub process_args {
    my ( $self, $opts, $args ) = @_;

    my $attr_name = $self->args_attribute or return;

    if ( !@{$args} && $self->args_from_stdin($opts) ) {
        return ( $attr_name => [ _args_from_fh( \*STDIN ) ] );
    }

    return ( $attr_name => $args );
}

#-----------------------------------------------------------------------------

sub action_name {
    my ($self) = @_;

    my $class  = ref $self;
    my $prefix = $self->command_namespace_prefix();

    $class =~ m/ ^ ${prefix}:: (.+) /mx
        or die "Unable to parse Action name from $class\n";

    # Convert foo::bar::baz -> Foo::Bar:Baz
    # TODO: consider using a regex to do the conversion
    my $action_name = join '::', map {ucfirst} split '::', $1;

    return $action_name;
}

#-----------------------------------------------------------------------------

sub _args_from_fh {
    my ($fh) = @_;

    my @args;
    while ( my $line = <$fh> ) {
        chomp $line;
        next if not length $line;
        next if $line =~ m/^ \s* [;#]/x;
        next if $line !~ m/\S/x;
        push @args, $line;
    }

    return @args;
}

#-------------------------------------------------------------------------------

sub args_attribute { return '' }

#-----------------------------------------------------------------------------

sub args_from_stdin { return 0 }

#-----------------------------------------------------------------------------

sub command_namespace_prefix { return __PACKAGE__ }

#-----------------------------------------------------------------------------
1;

__END__

=pod

=encoding UTF-8

=for :stopwords Jeffrey Ryan Thalhammer

=head1 NAME

App::Pinto::Command - Base class for pinto commands

=head1 VERSION

version 0.11

=head1 AUTHOR

Jeffrey Ryan Thalhammer <jeff@stratopan.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2015 by Jeffrey Ryan Thalhammer.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
