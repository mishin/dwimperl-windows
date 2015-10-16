#!/usr/bin/perl -w                                         # -*- perl -*-

use strict;
use lib qw( ./lib ../lib );
use Pod::POM::Test;
#$Pod::POM::Node::DEBUG = 1;
my $DEBUG = 1;

ntests(2);

my $text;
{   local $/ = undef;
    $text = <DATA>;
}

my $parser = Pod::POM->new();
my $pom = $parser->parse_text($text);
assert( defined $pom );

# something of a crap test... 
match( length $pom, 1898 );

__DATA__
=head1 NAME

A test Pod document.

=head1 NAME

My::Module - a sample Pod document for testing Pod::POM

=head1 SYNOPSIS

    use My::Module;

    my $module = My::Module->new();
    my $item   = $module->item();

=head1 DESCRIPTION

This is a sample Pod document for testing the Pod::POM module.

    Here is a verbatim section, indented from the left margin 
    by some whitespace

This is some more regular text.

Here is some B<bold> text, some I<italic> and something that looks 
like an E<lt>htmlE<gt> tag.  This is some C<$code($arg1)>.

This C<text contains embedded B<bold> and I<italic> tags>.  These can 
be nested, allowing B<bold and I<bold/italic> text>.  The module also
supports the extended B<< syntax >> and permits I<< nested tags E<amp>
other B<<< cool >>> stuff >>

=head1 METHODS =E<gt> OTHER STUFF

Here is a list of methods

=head2 new()

Constructor method.  Accepts the following config options:

=over 4

=item foo

The foo item.

=item bar

The bar item.

=over 4

This is a list within a list 

=item wiz

The wiz item.

=item waz

The waz item.

=back

=item baz

The baz item.

=back

=head2 old()

Destructor method

=head1 IMPORTANT STUFF

Here is some important stuff.

=over 4

=item Chew Your Food

Always chew your food properly before swallowing.

=item Running With Scissors

Don't run with scissors.

=back

=head1 TESTING FOR AND BEGIN

=for html    <br>
<p>
blah blah
</p>

intermediate text

=begin html

<more>
HTML
</more>

some text

=end

=head1 AUTHOR

Andy Wardley E<lt>abw@kfs.orgE<gt>.

=head1 VERSION

This is version 0.1 of My::Module.

I like being S<spaced  out, like  man>, wow.

=head1 COPYRIGHT

This module is free software; you can redistribute it and/or
modify it under the same terms as Perl itself.

=head1 SEE ALSO

See also L<pod2|Test Page 2>, L<Your::Module>, L<Their::Module> and the 
file F</usr/local/my/module/rocks> as well.

=cut
