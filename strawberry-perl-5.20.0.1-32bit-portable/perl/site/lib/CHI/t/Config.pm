package CHI::t::Config;
$CHI::t::Config::VERSION = '0.60';
use CHI::Util qw(dump_one_line);
use CHI::Test;
use File::Temp qw(tempdir);
use strict;
use warnings;
use base qw(CHI::Test::Class);

my $root_dir = tempdir( 'CHI-t-Config-XXXX', TMPDIR => 1, CLEANUP => 1 );

my %config = (
    storage => {
        memory => { driver => 'Memory', global   => 1 },
        file   => { driver => 'File',   root_dir => $root_dir },
    },
    namespace => {
        'Foo' => { storage => 'file' },
        'Bar' => { storage => 'file', depth => 3 },
    },
    defaults => { storage => 'memory' },
);

{
    package My::CHI;
$My::CHI::VERSION = '0.60';
use base qw(CHI);
    My::CHI->config( {%config} );
}

{
    package My::CHI::Subclass;
$My::CHI::Subclass::VERSION = '0.60';
use base qw(My::CHI);
}

{
    package My::CHI::Memo;
$My::CHI::Memo::VERSION = '0.60';

    use base qw(CHI);
    My::CHI::Memo->config( { %config, memoize_cache_objects => 1 } );
}

sub _create {
    my ( $params, $checks ) = @_;

    my $desc = dump_one_line($params);
    foreach my $class (qw(My::CHI My::CHI::Subclass)) {
        my $cache = $class->new(%$params);
        while ( my ( $key, $value ) = each(%$checks) ) {
            is( $cache->$key, $value, "$key == $value ($desc)" );
        }
    }
}

sub test_config : Tests {
    my $self = shift;

    _create(
        { namespace => 'Foo' },
        {
            namespace         => 'Foo',
            storage           => 'file',
            short_driver_name => 'File',
            root_dir          => $root_dir,
            depth             => 2
        },
    );
    _create(
        { namespace => 'Bar' },
        {
            namespace         => 'Bar',
            storage           => 'file',
            short_driver_name => 'File',
            root_dir          => $root_dir,
            depth             => 3
        }
    );
    _create(
        { namespace => 'Foo', depth => 4 },
        {
            namespace         => 'Foo',
            storage           => 'file',
            short_driver_name => 'File',
            root_dir          => $root_dir,
            depth             => 4
        }
    );
    _create(
        { namespace => 'Bar', depth => 4 },
        {
            namespace         => 'Bar',
            storage           => 'file',
            short_driver_name => 'File',
            root_dir          => $root_dir,
            depth             => 4
        }
    );

    my %new_config = %config;
    $new_config{namespace}->{'Bar'}->{depth} = 5;
    My::CHI->config( {%new_config} );
    _create(
        { namespace => 'Bar' },
        {
            namespace         => 'Bar',
            storage           => 'file',
            short_driver_name => 'File',
            root_dir          => $root_dir,
            depth             => 5
        }
    );
}

sub test_memoize : Tests {
    my $cache1 = My::CHI::Memo->new( namespace => 'Foo' );
    my $cache2 = My::CHI::Memo->new( namespace => 'Foo' );
    is( $cache1, $cache2, "same - namespace Foo" );

    my $cache3 = My::CHI::Memo->new( namespace => 'Bar', depth => 4 );
    my $cache4 = My::CHI::Memo->new( namespace => 'Bar', depth => 4 );
    isnt( $cache3, $cache4, "different - namespace Bar" );

    My::CHI::Memo->clear_memoized_cache_objects();
    my $cache5 = My::CHI::Memo->new( namespace => 'Foo' );
    my $cache6 = My::CHI::Memo->new( namespace => 'Foo' );
    is( $cache5, $cache6, "same - namespace Foo" );
    isnt( $cache1, $cache3, "different - post-clear" );

    my $cache7 = My::CHI->new( namespace => 'Foo' );
    my $cache8 = My::CHI->new( namespace => 'Foo' );
    isnt( $cache7, $cache8, "different - namespace Foo - no memoization" );
}

1;
