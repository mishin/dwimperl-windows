package Parse::Functions::Java;

use 5.008;
use strict;
use warnings;
use Parse::Functions;

our $VERSION = '0.01';
our @ISA     = qw(Parse::Functions);

######################################################################

sub function_re {
	my ($self) = @_;

	my $newline = $self->newline;
	return qr{
			/\*.+?\*/          # block comment
			|
			\/\/.+?$newline    # line comment
			|
			(?:^|$newline)     # text start or newline 
			\s* 
			(?:
			  (?:
				(?: public|protected|private|abstract|static|
				final|native|synchronized|transient|volatile|
				strictfp)
				\s+
			  ){0,2}            # zero to 2 method modifiers
			  (?: <\w+>\s+ )?   # optional: generic type parameter
			  (?: [\w\[\]<>]+)  # return data type
			  \s+
			  (\w+)             # method name
			  \s*
			  \(.*?\)           # parentheses around the parameters
			)
	}sx;
}

1;

# Copyright 2008-2014 The Padre development team as listed in Padre.pm.
# LICENSE
# This program is free software; you can redistribute it and/or
# modify it under the same terms as Perl 5 itself.

