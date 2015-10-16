# ABSTRACT: Curate a repository of Perl modules

package Pinto;

use Moose;
use MooseX::StrictConstructor;
use MooseX::MarkAsMethods ( autoclean => 1 );

use Try::Tiny;
use Class::Load;

use Pinto::Result;
use Pinto::Repository;
use Pinto::Chrome::Term;
use Pinto::Types qw(Dir);
use Pinto::Util qw(throw);

#------------------------------------------------------------------------------

# HACK: On perl-5.14.x (and possibly others) Package::Stash::XS has some funky
# behavior that causes Class::Load to think that certain modules are already
# loaded when they actually are not.  I don't know why it happens.  But loading
# those modules here explicitly prevents the problem. The module may or may not
# actually be used depending on your platform, and forcibly loading it anyway
# seems  to be innocuous.  We use Class::Load quite a lot in Pinto, so this same
# bug may manifest in other places too.  For  the moment, this these are the
# only ones that I'm aware of.

use Devel::StackTrace;
use DateTime::TimeZone::Local::Unix;

#------------------------------------------------------------------------------

our $VERSION = '0.11'; # VERSION

#------------------------------------------------------------------------------

with qw( Pinto::Role::Plated );

#------------------------------------------------------------------------------

has root => (
    is      => 'ro',
    isa     => Dir,
    default => $ENV{PINTO_REPOSITORY_ROOT},
    coerce  => 1,
);

has repo => (
    is      => 'ro',
    isa     => 'Pinto::Repository',
    default => sub { Pinto::Repository->new( root => $_[0]->root ) },
    lazy    => 1,
);

#------------------------------------------------------------------------------

around BUILDARGS => sub {
    my $orig  = shift;
    my $class = shift;
    my $args  = $class->$orig(@_);

    # Grrr.  Gotta avoid passing undefs to Moose
    my @chrome_attrs = qw(verbose quiet color);
    my %chrome_args = map { $_ => delete $args->{$_} }
        grep { exists $args->{$_} } @chrome_attrs;

    $args->{chrome} ||= Pinto::Chrome::Term->new(%chrome_args);

    return $args;
};

#------------------------------------------------------------------------------

sub run {
    my ( $self, $action_name, @action_args ) = @_;

    # Divert all warnings through our chrome
    local $SIG{__WARN__} = sub { $self->warning($_) for @_ };

    # Convert hash refs to plain hash
    @action_args = %{$action_args[0]} if @action_args == 1 and ref $action_args[0];

    my $result = try {

        $self->repo->assert_sanity_ok;
	$self->repo->assert_version_ok;

        my $action = $self->create_action( $action_name => @action_args );

        $self->repo->lock( $action->lock_type );

        $action->execute;
    }
    catch {
        $self->repo->unlock;
        $self->error($_);

        Pinto::Result->new->failed( because => $_ );
    }
    finally {
        $self->repo->unlock;
    };

    return $result;
}

#------------------------------------------------------------------------------

sub create_action {
    my ( $self, $action_name, %action_args ) = @_;

    @action_args{qw(chrome repo)} = ( $self->chrome, $self->repo );
    my $action_class = $self->load_class_for_action( name => $action_name );
    my $action = $action_class->new(%action_args);

    return $action;
}

#------------------------------------------------------------------------------

sub load_class_for_action {
    my ( $self, %args ) = @_;

    my $action_name = ucfirst( $args{name} || throw 'Must specify an action name' );
    my $action_class = "Pinto::Action::$action_name";

    Class::Load::load_class($action_class);

    return $action_class;
}

#------------------------------------------------------------------------------

__PACKAGE__->meta->make_immutable;

#-----------------------------------------------------------------------------

1;

__END__

=pod

=encoding UTF-8

=for :stopwords Jeffrey Ryan Thalhammer cpan testmatrix url annocpan anno bugtracker rt
cpants kwalitee diff irc mailto metadata placeholders metacpan

=head1 NAME

Pinto - Curate a repository of Perl modules

=head1 VERSION

version 0.11

=head1 SYNOPSIS

See L<pinto> to create and manage a Pinto repository.

See L<pintod> to allow remote access to your Pinto repository.

See L<Pinto::Manual> for more information about the Pinto tools.

L<Stratopan|http://stratopan.com> for hosting your Pinto repository in the cloud.

=head1 DESCRIPTION

Pinto is an application for creating and managing a custom CPAN-like
repository of Perl modules.  The purpose of such a repository is to
provide a stable, curated stack of dependencies from which you can
reliably build, test, and deploy your application using the standard
Perl tool chain. Pinto supports various operations for gathering and
managing distribution dependencies within the repository, so that you
can control precisely which dependencies go into your application.

=head1 FEATURES

Pinto is inspired by L<Carton>, L<CPAN::Mini::Inject>, and
L<MyCPAN::App::DPAN>, but adds a few interesting features:

=over 4

=item * Pinto supports multiple indexes

A Pinto repository can have multiple indexes.  Each index corresponds
to a "stack" of dependencies that you can control.  So you can have
one stack for development, one for production, one for feature-xyz,
and so on.  You can also branch and merge stacks to experiment with
new dependencies or upgrades.

=item * Pinto helps manage incompatibles between dependencies

Sometimes, you discover that a new version of a dependency is
incompatible with your application.  Pinto allows you to "pin" a
dependency to a stack, which prevents it from being accidentally
upgraded (either directly or via some other dependency).

=item * Pinto has built-in version control

When things go wrong, you can roll back any of the indexes in your
Pinto repository to a prior revision.  Also, you can view the complete
history of index changes as you add or upgrade dependencies.

=item * Pinto can pull archives from multiple remote repositories

Pinto can pull dependencies from multiple sources, so you can create
private (or public) networks of repositories that enable separate
teams or individuals to collaborate and share Perl modules.

=item * Pinto supports team development

Pinto is suitable for small to medium-sized development teams and
supports concurrent users.  Pinto also has a web service interface
(via L<pintod>), so remote developers can use a centrally hosted
repository.

=item * Pinto has a robust command line interface.

The L<pinto> utility has commands and options to control every aspect
of your Pinto repository.  They are well documented and behave in the
customary UNIX fashion.

=item * Pinto can be extended.

You can extend Pinto by creating L<Pinto::Action> subclasses to
perform new operations on your repository, such as extracting
documentation from a distribution, or grepping the source code of
several distributions.

=back

=head1 Pinto vs PAUSE

In some ways, Pinto is similar to L<PAUSE|http://pause.perl.org>.
Both are capable of accepting distributions and constructing a
directory structure and index that Perl installers understand.  But
there are some important differences:

=over

=item * Pinto does not promise to index exactly like PAUSE does

Over the years, PAUSE has evolved complicated heuristics for dealing
with all the different ways that Perl code is written and packaged.
Pinto is much less sophisticated, and only aspires to produce an index
that is "good enough" for most situations.

=item * Pinto does not understand author permissions

PAUSE has a system of assigning ownership and co-maintenance
permission of modules to specific people.  Pinto does not have any
such permission system.  All activity is logged so you can identify
the culprit, but Pinto expects you to be accountable for your actions.

=item * Pinto does not enforce security

PAUSE requires authors to authenticate themselves before they can
upload or remove modules.  Pinto does not require authentication, so
any user with sufficient file permission can potentially change the
repository.  However L<pintod> does support HTTP authentication, which
gives you some control over access to a remote repository.

=back

=head1 BUT WHERE IS THE API?

For now, the Pinto API is private and subject to radical change
without notice.  Any API documentation you see is purely for my own
references.  In the meantime, the command line utilities mentioned in
the L</SYNOPSIS> are your public user interface.

=head1 SUPPORT

=head2 Perldoc

You can find documentation for this module with the perldoc command.

  perldoc Pinto

=head2 Websites

The following websites have more information about this module, and may be of help to you. As always,
in addition to those websites please use your favorite search engine to discover more resources.

=over 4

=item *

MetaCPAN

A modern, open-source CPAN search engine, useful to view POD in HTML format.

L<http://metacpan.org/release/Pinto>

=item *

CPAN Ratings

The CPAN Ratings is a website that allows community ratings and reviews of Perl modules.

L<http://cpanratings.perl.org/d/Pinto>

=item *

CPANTS

The CPANTS is a website that analyzes the Kwalitee ( code metrics ) of a distribution.

L<http://cpants.cpanauthors.org/dist/Pinto>

=item *

CPAN Testers

The CPAN Testers is a network of smokers who run automated tests on uploaded CPAN distributions.

L<http://www.cpantesters.org/distro/P/Pinto>

=item *

CPAN Testers Matrix

The CPAN Testers Matrix is a website that provides a visual overview of the test results for a distribution on various Perls/platforms.

L<http://matrix.cpantesters.org/?dist=Pinto>

=item *

CPAN Testers Dependencies

The CPAN Testers Dependencies is a website that shows a chart of the test results of all dependencies for a distribution.

L<http://deps.cpantesters.org/?module=Pinto>

=back

=head2 Internet Relay Chat

You can get live help by using IRC ( Internet Relay Chat ). If you don't know what IRC is,
please read this excellent guide: L<http://en.wikipedia.org/wiki/Internet_Relay_Chat>. Please
be courteous and patient when talking to us, as we might be busy or sleeping! You can join
those networks/channels and get help:

=over 4

=item *

irc.perl.org

You can connect to the server at 'irc.perl.org' and join this channel: #pinto then talk to this person for help: thaljef.

=back

=head2 Bugs / Feature Requests

L<https://github.com/thaljef/Pinto/issues>

=head2 Source Code

The code is open to the world, and available for you to hack on. Please feel free to browse it and play
with it, or whatever. If you want to contribute patches, please send me a diff or prod me to pull
from your repository :)

L<https://github.com/thaljef/Pinto>

  git clone git://github.com/thaljef/Pinto.git

=head1 CONTRIBUTORS

=for stopwords BenRifkah Bergsten-Buret Karen Etheridge Michael G. Schwern Nikolay Martynov Oleg Gashev Steffen Schwigon Tommy Stanton Wolfgang Kinkeldei Yanick Champoux brian d foy hesco Boris Däppen popl Chris Kirke Cory G Watson David Steinbrunner Florian Ragwitz Glenn Fowler Jakob Voss Jeffrey Ryan Thalhammer Kahlil (Kal) Hodgson

=over 4

=item *

BenRifkah Bergsten-Buret <mail.spammagnet+github@gmail.com>

=item *

Karen Etheridge <ether@cpan.org>

=item *

Michael G. Schwern <schwern@pobox.com>

=item *

Nikolay Martynov <mar.kolya@gmail.com>

=item *

Oleg Gashev <oleg@gashev.net>

=item *

Steffen Schwigon <ss5@renormalist.net>

=item *

Tommy Stanton <tommystanton@gmail.com>

=item *

Wolfgang Kinkeldei <wolfgang@kinkeldei.de>

=item *

Yanick Champoux <yanick@babyl.dyndns.org>

=item *

brian d foy <brian.d.foy@gmail.com>

=item *

hesco <hesco@campaignfoundations.com>

=item *

Boris Däppen <bdaeppen.perl@gmail.com>

=item *

popl <popl_likes_to_code@yahoo.com>

=item *

Chris Kirke <chris.kirke@gmail.com>

=item *

Cory G Watson <gphat@onemogin.com>

=item *

David Steinbrunner <dsteinbrunner@pobox.com>

=item *

Florian Ragwitz <rafl@debian.org>

=item *

Glenn Fowler <cebjyre@cpan.org>

=item *

Jakob Voss <jakob@nichtich.de>

=item *

Jeffrey Ryan Thalhammer <jeff@thaljef.org>

=item *

Kahlil (Kal) Hodgson <kahlil.hodgson@dealmax.com.au>

=back

=head1 AUTHOR

Jeffrey Ryan Thalhammer <jeff@stratopan.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2015 by Jeffrey Ryan Thalhammer.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
