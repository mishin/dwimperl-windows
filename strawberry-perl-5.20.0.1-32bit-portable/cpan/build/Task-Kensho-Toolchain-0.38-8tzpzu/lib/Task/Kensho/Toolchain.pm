use strict;
use warnings;
package Task::Kensho::Toolchain;
# git description: v0.37-35-g048468a
$Task::Kensho::Toolchain::VERSION = '0.38';
# ABSTRACT: A Glimpse at an Enlightened Perl: Basic Toolchain

__END__

=pod

=encoding UTF-8

=head1 NAME

Task::Kensho::Toolchain - A Glimpse at an Enlightened Perl: Basic Toolchain

=head1 VERSION

version 0.38

=head1 SYNOPSIS

    > cpanm --interactive Task::Kensho::Toolchain

=head1 DESCRIPTION

=for stopwords Buddhism EPO Kenshō nonduality amongst Organisation installable

From L<http://en.wikipedia.org/wiki/Kensho>:

=over 4

Kenshō (見性) (C. Wu) is a Japanese term for enlightenment
experiences - most commonly used within the confines of Zen
Buddhism - literally meaning "seeing one's nature"[1] or "true
self."[2] It generally "refers to the realization of nonduality of
subject and object."[3]

=back

L<Task::Kensho> is a list of recommended modules
for Enlightened Perl development. CPAN is wonderful, but there are too
many wheels and you have to pick and choose amongst the various
competing technologies.

The plan is for L<Task::Kensho> to be a rough testing ground for ideas that
go into among other things the Enlightened Perl Organisation Extended
Core (EPO-EC).

The modules that are bundled by L<Task::Kensho> are broken down into
several categories and are still being considered. They are all taken
from various top 100 most used perl modules lists and from discussions
with various subject matter experts in the Perl Community. That said,
this bundle does I<not> follow the guidelines established for the EPO-EC
for peer review via industry advisers.

Starting in 2011, L<Task::Kensho> split its sub-groups of modules into
individually-installable tasks.  Each L<Task::Kensho> sub-task is listed at the
beginning of its section in this documentation.

When installing L<Task::Kensho> itself, you will be asked to install each
sub-task in turn, or you can install individual tasks separately. These
individual tasks will always install all their modules by default. This
facilitates the ease and simplicity the distribution aims to achieve.

=head1 RECOMMENDED MODULES

=for stopwords Bundler

=head2 L<Task::Kensho::Toolchain>: Basic Toolchain

=head3 L<App::FatPacker>

Pack your dependencies onto your script file

=head3 L<App::cpanminus>

Get, unpack, build and install modules from CPAN

=head3 L<App::perlbrew>

Manage perl installations in your $HOME

=head3 L<CPAN::Mini>

Create a minimal mirror of CPAN

=head3 L<Carton>

Perl module dependency manager (aka Bundler for Perl)

=head3 L<Pinto>

Curate a repository of Perl modules

=head3 L<local::lib>

Create and use a local lib/ for perl modules with PERL5LIB

=head3 L<version>

Perl extension for Version Objects

=head1 INSTALLING

Since version 0.34, L<Task::Kensho> has made use of the C<optional_features> field
in distribution metadata. This allows CPAN clients to interact with you
regarding which modules you wish to install.

The C<cpanm> client requires interactive mode to be enabled for this to work:

    cpanm --interactive Task::Kensho::Toolchain

=head1 BUGS AND LIMITATIONS

This list is by no means comprehensive of the "Good" Modules on CPAN.
Nor is this necessarily the correct path for all developers. Each of
these modules has a perfectly acceptable replacement that may work
better for you. This is however a path to good perl practice, and a
starting place on the road to Enlightened Perl programming.

Please report any bugs or feature requests to
L<https://github.com/EnlightenedPerlOrganisation/task-kensho/issues>.

=head1 SEE ALSO

L<http://www.enlightenedperl.org/>,
L<Perl::Dist::Strawberry|Perl::Dist::Strawberry>

=head1 AUTHOR

Chris Prather <chris@prather.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2008 by Chris Prather.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=head1 CONTRIBUTORS

=for stopwords Karen Etheridge Leo Lapworth Chris Nehren

=over 4

=item *

Karen Etheridge <ether@cpan.org>

=item *

Leo Lapworth <leo@cuckoo.org>

=item *

Chris Nehren <apeiron@cpan.org>

=back

=cut
