package CHI::t::Driver::FastMmap;
$CHI::t::Driver::FastMmap::VERSION = '0.60';
use strict;
use warnings;
use CHI::Test;
use Encode;
use File::Temp qw(tempdir);
use base qw(CHI::t::Driver);

my $root_dir;

sub required_modules {
    return { 'Cache::FastMmap' => undef };
}

sub new_cache_options {
    my $self = shift;

    $root_dir ||=
      tempdir( "chi-driver-fastmmap-XXXX", TMPDIR => 1, CLEANUP => 1 );
    return ( $self->SUPER::new_cache_options(), root_dir => $root_dir );
}

sub test_fm_cache : Tests {
    my ($self) = @_;

    # Create brand new cache and check defaults
    my $cache =
      $self->new_cache( root_dir =>
          tempdir( "chi-driver-fastmmap-XXXX", TMPDIR => 1, CLEANUP => 1 ) );

    my $fm_cache = $cache->fm_cache();
    isa_ok( $fm_cache, 'Cache::FastMmap' );

    my %defaults = (
        unlink_on_exit => 0,
        empty_on_exit  => 0,
        raw_values     => 1,
    );
    while ( my ( $key, $value ) = each(%defaults) ) {
        is( $fm_cache->{$key} || 0, $value, "$key = $value by default" );
    }
}

sub test_parameter_passthrough : Tests {
    my ($self) = @_;

    my $cache = $self->new_cache( cache_size => '500k' );

    # The number gets munged by FastMmap so it's not equal to 500 * 1024
    is( $cache->fm_cache()->{cache_size},
        589824,
        'cache_size parameter is passed to Cache::FastMmap constructor' );

    $cache = $self->new_cache( page_size => 5000, num_pages => 11 );

    # Same here, it won't be equal to 5000 * 11
    is( $cache->fm_cache()->{cache_size}, 45056,
        'page_size and num_pages parameters are passed to Cache::FastMmap constructor'
    );
}

sub test_value_too_large : Tests {
    my ($self) = @_;

    my $cache = $self->new_cache(
        page_size    => '4k',
        num_pages    => 11,
        on_set_error => 'die'
    );
    my %values;
    $values{small} = 'x' x 3 x 1024;
    $values{large} = 'x' x 10 x 1024;
    $cache->set( 'small', $values{small} );
    is( $cache->get('small'), $values{small}, "got small" );
    throws_ok { $cache->set( 'large', $values{large} ) }
    qr/error during cache set.*fastmmap set failed/;
}

1;
