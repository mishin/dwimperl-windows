package Devel::REPL::Profile::Default;

our $VERSION = '1.003027';

use Moose;
use namespace::autoclean;

# for backcompat only - Default was renamed to Standard

extends 'Devel::REPL::Profile::Standard';

1;
