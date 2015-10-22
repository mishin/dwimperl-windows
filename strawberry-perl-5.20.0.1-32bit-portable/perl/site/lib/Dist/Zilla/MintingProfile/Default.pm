package Dist::Zilla::MintingProfile::Default;
# ABSTRACT: Default minting profile provider
$Dist::Zilla::MintingProfile::Default::VERSION = '5.037';
use Moose;
with 'Dist::Zilla::Role::MintingProfile::ShareDir';

use namespace::autoclean;

use Dist::Zilla::Util;
use Path::Class;

#pod =head1 DESCRIPTION
#pod
#pod Default minting profile provider.
#pod
#pod This provider looks first in the F<~/.dzil/profiles/$profile_name> directory,
#pod if not found it looks among the default profiles shipped with Dist::Zilla.
#pod
#pod =cut

around profile_dir => sub {
  my ($orig, $self, $profile_name) = @_;

  $profile_name ||= 'default';

  # shouldn't look in user's config when testing
  if (!$ENV{DZIL_TESTING}) {
    my $profile_dir = Dist::Zilla::Util->_global_config_root
                    ->subdir('profiles', $profile_name);

    return $profile_dir if -d $profile_dir;
  }

  return $self->$orig($profile_name);
};

__PACKAGE__->meta->make_immutable;
1;

__END__

=pod

=encoding UTF-8

=head1 NAME

Dist::Zilla::MintingProfile::Default - Default minting profile provider

=head1 VERSION

version 5.037

=head1 DESCRIPTION

Default minting profile provider.

This provider looks first in the F<~/.dzil/profiles/$profile_name> directory,
if not found it looks among the default profiles shipped with Dist::Zilla.

=head1 AUTHOR

Ricardo SIGNES <rjbs@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2015 by Ricardo SIGNES.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
