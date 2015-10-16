package CHI::Test::Class;
$CHI::Test::Class::VERSION = '0.60';
use Getopt::Long;
use CHI::Util qw(can_load);
use strict;
use warnings;
use base qw(Test::Class);

sub runtests {
    my ($class) = @_;

    # Check for required modules
    #
    if ( my $required_modules = $class->required_modules ) {
        while ( my ( $key, $value ) = each(%$required_modules) ) {
            unless ( can_load($key) ) {
                $class->SKIP_ALL("one of required modules not installed: $key");
            }
        }
    }

    # Only run tests directly in $class.
    #
    my $test_obj = $class->new();
    Test::Class::runtests($test_obj);
}

sub required_modules {
    return {};
}

1;
