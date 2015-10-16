package CHI::t::Driver::Subcache::mirror_cache;
$CHI::t::Driver::Subcache::mirror_cache::VERSION = '0.60';
use strict;
use warnings;
use CHI::Test;
use File::Temp qw(tempdir);
use base qw(CHI::t::Driver::Subcache);

my $root_dir;

sub testing_driver_class {
    return 'CHI::Driver::File';
}

sub new_cache_options {
    my $self = shift;

    $root_dir ||=
      tempdir( "chi-driver-subcache-mirror-XXXX", TMPDIR => 1, CLEANUP => 1 );
    return (
        $self->SUPER::new_cache_options(),
        depth           => 2,
        root_dir        => $root_dir,
        mirror_to_cache => { driver => 'File', depth => 3 },
    );
}

# This tries to create its own mirror cache
sub test_max_key_length { }

1;
