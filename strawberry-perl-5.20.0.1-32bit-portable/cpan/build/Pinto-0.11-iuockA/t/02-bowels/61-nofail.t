#!perl

use strict;
use warnings;

use Test::More;

use lib 't/lib';
use Pinto::Tester;

#------------------------------------------------------------------------------

my $source = Pinto::Tester->new;
$source->populate('AUTHOR/DistA-1 = PkgA~1');
$source->populate('AUTHOR/DistB-1 = PkgB~1 & PkgD~1; PkgE~1');    # Depends on Pkge, but it does not exist!
$source->populate('AUTHOR/DistC-1 = PkgC~1');
$source->populate('AUTHOR/DistD-1 = PkgD~1');

#------------------------------------------------------------------------------
# An error (missing prereq in this case) should rollback all changes...
subtest 'error causes rollback of all changes' => sub {

    my $local = Pinto::Tester->new( init_args => { sources => $source->stack_url } );
    $local->run_throws_ok( Pull => { targets => [qw(PkgA PkgB PkgC)] }, qr/Cannot find PkgE~1 anywhere/ );

    # None of the packages should be registered because one failed...
    $local->registration_not_ok('AUTHOR/DistA-1/PkgA~1/master');
    $local->registration_not_ok('AUTHOR/DistB-1/PkgB~1/master');
    $local->registration_not_ok('AUTHOR/DistC-1/PkgC~1/master');
    $local->registration_not_ok('AUTHOR/DistD-1/PkgD~1/master');

    # And none of their archives should be on the filesystem...
    $local->path_not_exists_ok( [qw(stacks master authors id A AU AUTHOR DistA-1.tar.gz)] );
    $local->path_not_exists_ok( [qw(stacks master authors id A AU AUTHOR DistB-1.tar.gz)] );
    $local->path_not_exists_ok( [qw(stacks master authors id A AU AUTHOR DistD-1.tar.gz)] );
    $local->path_not_exists_ok( [qw(stacks master authors id A AU AUTHOR DistC-1.tar.gz)] );

};

#------------------------------------------------------------------------------
# If the no_fail flag is set, then only the failed ones should be rollback...
subtest 'error with no_fail flag only rolls back failed changes' => sub {

    my $local = Pinto::Tester->new( init_args => { sources => $source->stack_url } );

    $local->run_throws_ok(
        Pull => { targets => [qw(PkgA PkgB PkgC)], no_fail => 1 },
        qr/Cannot find PkgE~1 anywhere/, 'Result still a failure, even with no_fail'
    );

    # We should see a log message saying that B failed, because E was missing...
    $local->stderr_like(qr/Cannot find PkgE~1 anywhere/);
    $local->stderr_like(qr/PkgB~0 failed...continuing/);

    # Both A and C should be registered...
    $local->registration_ok( 'AUTHOR/DistA-1/PkgA~1/master', 'Target before failure ok' );
    $local->registration_ok( 'AUTHOR/DistC-1/PkgC~1/master', 'Target after failure ok' );

    # But B (the middle target) should not...
    $local->registration_not_ok( 'AUTHOR/DistB-1/PkgB~1/master', 'But failed target should not be there' );

    # Nor should any of B's prereqs...
    $local->registration_not_ok( 'AUTHOR/DistD-1/PkgD~1/master', 'Dependency of failed target was unregisted' );

    # In fact, they shouldn't even exist in the DB...
    my $DistD = $local->pinto->repo->get_distribution( author => 'AUTHOR', archive => 'DistD-1.tar.gz' );
    is $DistD, undef, 'Depedency of failed target is gone completely';

    # However, the archive for B and its prereq D will still be on the filesystem...
    my @dist_B = qw(stacks master authors id A AU AUTHOR DistB-1.tar.gz);
    my @dist_D = qw(stacks master authors id A AU AUTHOR DistD-1.tar.gz);
    $local->path_exists_ok( \@dist_B );
    $local->path_exists_ok( \@dist_D );

    # If we clean up those files...
    $local->pinto->repo->clean_files;

    # Then they should both be gone...
    $local->path_not_exists_ok( \@dist_B );
    $local->path_not_exists_ok( \@dist_D );

};

#-----------------------------------------------------------------------------

done_testing;
