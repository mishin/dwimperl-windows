
#
# GENERATED WITH PDL::PP! Don't modify!
#
package PDL::GSL::RNG;

@EXPORT_OK  = qw(  );
%EXPORT_TAGS = (Func=>[@EXPORT_OK]);

use PDL::Core qw/ zeroes long barf  /;
use PDL::Exporter;
use DynaLoader;



   
   @ISA    = ( 'PDL::Exporter','DynaLoader' );
   push @PDL::Core::PP, __PACKAGE__;
   bootstrap PDL::GSL::RNG ;




=head1 NAME

PDL::GSL::RNG - PDL interface to RNG and randist routines in GSL

=head1 DESCRIPTION

This is an interface to the rng and randist packages present
in the GNU Scientific Library.

=head1 SYNOPSIS

   use PDL;
   use PDL::GSL::RNG;

   $rng = PDL::GSL::RNG->new('taus');

   $rng->set_seed(time());

   $a=zeroes(5,5,5)

   $rng->get_uniform($a); # inplace

   $b=$rng->get_uniform(3,4,5); # creates new pdl

=head1 FUNCTIONS

=head2 new()

=for ref 

The new method initializes a new instance of the RNG.

The avaible RNGs are:
coveyou cmrg fishman18 fishman20 fishman2x gfsr4 knuthran
knuthran2 knuthran2002 lecuyer21 minstd mrg mt19937 mt19937_1999
mt19937_1998 r250 ran0 ran1 ran2 ran3 rand rand48 random128_bsd
random128_glibc2 random128_libc5 random256_bsd random256_glibc2
random256_libc5 random32_bsd random32_glibc2 random32_libc5
random64_bsd random64_glibc2 random64_libc5 random8_bsd
random8_glibc2 random8_libc5 random_bsd random_glibc2
random_libc5 randu ranf ranlux ranlux389 ranlxd1 ranlxd2 ranlxs0
ranlxs1 ranlxs2 ranmar slatec taus taus2 taus113 transputer tt800
uni uni32 vax waterman14 zuf default
The last one (default) uses the enviroment variable
GSL_RNG_TYPE. Note that only a few of these rngs are recommended
for general use. Please check the GSL documentation for more
information.

=for usage

Usage:

   $blessed_ref = PDL::GSL::RNG->new($RNG_name);

Example:

=for example

   $rng = PDL::GSL::RNG->new('taus');

=head2 set_seed();

=for ref

Sets the RNG seed.

Usage:

=for usage

   $rng->set_seed($integer);

Example:

=for example

   $rng->set_seed(666);

=head2 min()

=for ref

Return the minimum value generable by this RNG.

Usage: 

=for usage

   $integer = $rng->min();

Example:

=for example

   $min = $rng->min(); $max = $rng->max();

=head2 max()

=for ref

Return the maximum value generable by the RNG.

Usage: 

=for usage

   $integer = $rng->max();

Example:

=for example

   $min = $rng->min(); $max = $rng->max();

=head2 name()

=for ref

Returns the name of the RNG.

Usage: 

=for usage

   $string = $rng->name();

Example:

=for example

   $name = $rng->name();

=head2 get_uniform()

=for ref

This function creates a piddle with given dimensions or accept an
existing piddle and fills it. get_uniform() returns values 0<=x<1,

Usage: 

=for usage

   $piddle = $rng->get_uniform($list_of_integers)
   $rng->get_uniform($piddle);

Example:

=for example

   $a = zeroes 5,6; $max=100;
   $o = $rng->get_uniform(10,10); $rng->get_uniform($a);

=head2 get_uniform_pos()

=for ref

This function creates a piddle with given dimensions or accept an
existing piddle and fills it. get_uniform_pos() returns values 0<x<1,

Usage: 

=for usage

   $piddle = $rng->get_uniform_pos($list_of_integers)
   $rng->get_uniform_pos($piddle);

Example:

=for example

   $a = zeroes 5,6;
   $o = $rng->get_uniform_pos(10,10); $rng->get_uniform_pos($a);

=head2 get()

=for ref

This function creates a piddle with given dimensions or accept an
existing piddle and fills it. get() returns integer values 
beetween a minimum and a maximum specific to evry RNG.

Usage: 

=for usage

   $piddle = $rng->get($list_of_integers)
   $rng->get($piddle);

Example:

=for example

   $a = zeroes 5,6;
   $o = $rng->get(10,10); $rng->get($a);

=head2 get_int()

=for ref

This function creates a piddle with given dimensions or accept an
existing piddle and fills it. get_int() returns integer values 
beetween 0 and $max.

Usage: 

=for usage

   $piddle = $rng->get($max, $list_of_integers)
   $rng->get($max, $piddle);

Example:

=for example

   $a = zeroes 5,6; $max=100;
   $o = $rng->get(10,10); $rng->get($a);

=head2 ran_gaussian()

=for ref

These functions return random deviates from given distribution.

The general form is

  ran_[distrib](args)

where distrib can be any of the ones shown below.

They accept the parameters of the distribution and a specification of
where to put output. This spec can be in form of list of integers that
specify the dimensions of the ouput piddle or an existing piddle that
will be filled with values inplace.

Usage:

=for usage

   # gaussian dist
   $piddle = $rng->ran_gaussian($sigma,[list of integers]);
   $rng->ran_gaussian($sigma,$piddle);

   # gaussian tail
   $piddle = $rng->ran_ugaussian_tail($tail,[list of integers]);
   $rng->ran_ugaussian_tail($tail,$piddle);

   # exponential dist
   $piddle = $rng->ran_exponential($mu,[list of integers]);
   $rng->ran_exponential($mu,$piddle);

   # laplacian dist
   $piddle = $rng->ran_laplace($mu,[list of integers]);
   $rng->ran_laplace($mu,$piddle);

   $piddle = $rng->ran_exppow($mu,$a,[list of integers]);
   $rng->ran_exppow($mu,$a,$piddle);

   $piddle = $rng->ran_cauchy($mu,[list of integers]);
   $rng->ran_cauchy($mu,$piddle);

   $piddle = $rng->ran_rayleigh($sigma,[list of integers]);
   $rng->ran_rayleigh($sigma,$piddle);

   $piddle = $rng->ran_rayleigh_tail($a,$sigma,[list of integers]);
   $rng->ran_rayleigh_tail($a,$sigma,$piddle);

   $piddle = $rng->ran_levy($mu,$a,[list of integers]);
   $rng->ran_levy($mu,$a,$piddle);

   $piddle = $rng->ran_gamma($a,$b,[list of integers]);
   $rng->ran_gamma($a,$b,$piddle);

   $piddle = $rng->ran_flat($a,$b,[list of integers]);
   $rng->ran_flat($a,$b,$piddle);

   $piddle = $rng->ran_lognormal($zeta, $sigma,[list of integers]);
   $rng->ran_lognormal($zeta, $sigma,$piddle);

   $piddle = $rng->ran_chisq($nu,[list of integers]);
   $rng->ran_chisq($nu,$piddle);

   $piddle = $rng->ran_fdist($nu1, $nu2,[list of integers]);
   $rng->ran_fdist($nu1, $nu2,$piddle);

   $piddle = $rng->ran_tdist($nu,[list of integers]);
   $rng->ran_tdist($nu,$piddle);

   $piddle = $rng->ran_beta($a,$b,[list of integers]);
   $rng->ran_beta($a,$b,$piddle);

   $piddle = $rng->ran_logistic($m,[list of integers]u)
   $rng->ran_logistic($m,$piddleu)

   $piddle = $rng->ran_pareto($a,$b,[list of integers]);
   $rng->ran_pareto($a,$b,$piddle);

   $piddle = $rng->ran_weibull($mu,$a,[list of integers]);
   $rng->ran_weibull($mu,$a,$piddle);

   $piddle = $rng->ran_gumbel1($a,$b,[list of integers]);
   $rng->ran_gumbel1($a,$b,$piddle);

   $piddle = $rng->ran_gumbel2($a,$b,[list of integers]);
   $rng->ran_gumbel2($a,$b,$piddle);

   $piddle = $rng->ran_poisson($mu,[list of integers]);
   $rng->ran_poisson($mu,$piddle);

   $piddle = $rng->ran_bernoulli($p,[list of integers]);
   $rng->ran_bernoulli($p,$piddle);

   $piddle = $rng->ran_binomial($p,$n,[list of integers]);
   $rng->ran_binomial($p,$n,$piddle);

   $piddle = $rng->ran_negative_binomial($p,$n,[list of integers]);
   $rng->ran_negative_binomial($p,$n,$piddle);

   $piddle = $rng->ran_pascal($p,$n,[list of integers]);
   $rng->ran_pascal($p,$n,$piddle);

   $piddle = $rng->ran_geometric($p,[list of integers]);
   $rng->ran_geometric($p,$piddle);

   $piddle = $rng->ran_hypergeometric($n1, $n2, $t,[list of integers]);
   $rng->ran_hypergeometric($n1, $n2, $t,$piddle);

   $piddle = $rng->ran_logarithmic($p,[list of integers]);
   $rng->ran_logarithmic($p,$piddle);

Example:

=for example

  $o = $rng->ran_gaussian($sigma,10,10);
  $rng->ran_gaussian($sigma,$a);


=head2 ran_gaussian_var()

=for ref

This method is similar to L<ran_[distrib]()|/ran_gaussian()> except that it
takes the
parameters of the distribution as a piddle and returns a piddle of equal
dimensions. Of course, you can use the same set of distributions as in
the previous method (see also the L<ran_gaussian|/ran_gaussian()> entry above).

Usage:

=for usage

   $piddle = $rng->ran_[distribution]_var($distr_parameters_list,$piddle_dim_list);
   $rng->ran_[distribution]_var($distr_parameters_list,$piddle);

Example:

=for example

   $sigma_pdl = rvals zeroes 11,11;
   $o = $rng->ran_gaussian_var($sigma_pdl);

=head2 ran_additive_gaussian()

=for ref

Add Gaussian noise of given sigma to a piddle.

Usage:

=for usage

   $rng->ran_additive_gaussian($sigma,$piddle);

Example:

=for example

   $rng->ran_additive_gaussian(1,$image);

=head2 ran_additive_poisson()

=for ref

Add Poisson noise of given sigma to a piddle.

Usage:

=for usage

   $rng->ran_additive_poisson($mu,$piddle);

Example:

=for example

   $rng->ran_additive_poisson(1,$image);

=head2 ran_feed_poisson()

=for ref

This method simulates shot noise, taking the values of piddle as
values for mu to be fed in the poissonian RNG.

Usage:

=for usage

   $rng->ran_feed_poisson($piddle);

Example:

=for example

   $rng->ran_feed_poisson($image);

=head2 ran_bivariate_gaussian()

=for ref

Generates $n bivariate gaussian random deviates.

Usage:

=for usage

   $piddle = $rng->ran_bivariate_gaussian($sigma_x,$sigma_y,$rho,$n);

Example:

=for example

   $o = $rng->ran_bivariate_gaussian(1,2,0.5,1000);

=head2 ran_dir()

=for ref

Returns C<$n> random vectors in C<$ndim> dimensions.

Usage:

=for usage

   $piddle = $rng->ran_dir($ndim,$n);

Example:

=for example

   $o = $rng->ran_dir($ndim,$n);

=head2 ran_discrete_preproc()

=for ref 

This method returns a handle that must be used when calling
ran_discrete(). You specify the probability of the integer number
that are returned by ran_discrete().

Usage:

=for usage

   $discrete_dist_handle = $rng->ran_discrete_preproc($double_piddle_prob);

Example:

=for example

   $prob = pdl [0.1,0.3,0.6];
   $ddh = $rng->ran_discrete_preproc($prob);
   $o = $rng->ran_discrete($discrete_dist_handle,100);

=head2 ran_discrete()

=for ref

Is used to get the desired samples once a proper handle has been
enstablished (see ran_discrete_preproc()).

Usage:

=for usage

   $piddle = $rng->ran_discrete($discrete_dist_handle,$num);

Example:

=for example

   $prob = pdl [0.1,0.3,0.6];
   $ddh = $rng->ran_discrete_preproc($prob);
   $o = $rng->ran_discrete($discrete_dist_handle,100);

=head2 ran_shuffle()

=for ref

Shuffles values in piddle

Usage:

=for usage

   $rng->ran_shuffle($piddle);

=head2 ran_shuffle_vec()

=for ref

Shuffles values in piddle

Usage:

=for usage

   $rng->ran_shuffle_vec(@vec);

=head2 ran_choose()

=for ref 

Chooses values from $inpiddle to $outpiddle.

Usage:

=for usage

   $rng->ran_choose($inpiddle,$outpiddle);

=head2 ran_choose_vec()

=for ref 

Chooses $n values from @vec.

Usage:

=for usage

   @choosen = $rng->ran_choose_vec($n,@vec);

=head2 ran_ver()

=for ref

Returns a piddle with $n values generated by the Verhulst map from $x0 and
paramater $r.

Usage:

=for usage

   $rng->ran_ver($x0, $r, $n);

=head2 ran_caos()

=for ref

Returns values from Verhuls map with $r=4.0 and randomly choosen
$x0. The values are scaled by $m.

Usage:

=for usage

   $rng->ran_caos($m,$n);

=head1 BUGS

Feedback is welcome. Log bugs in the PDL bug database (the
database is always linked from L<http://pdl.perl.org/>).

=head1 SEE ALSO

L<PDL>

The GSL documentation is online at
L<http://www.gnu.org/software/gsl/manual/html_node/>

=head1 AUTHOR

This file copyright (C) 1999 Christian Pellegrin <chri@infis.univ.trieste.it>
Docs mangled by C. Soeller. All rights reserved. There
is no warranty. You are allowed to redistribute this software /
documentation under certain conditions. For details, see the file
COPYING in the PDL distribution. If this file is separated from the
PDL distribution, the copyright notice should be included in the file.

The GSL RNG and randist modules were written by James Theiler.

=cut









use strict;

# PDL::GSL::RNG::nullcreate just creates a null PDL. Used
#  for the GSL functions that create PDLs
sub nullcreate{
	
	my ($type,$arg) = @_;

	PDL->nullcreate($arg);
}



sub get_uniform {
my ($obj,@var) = @_;if (ref($var[0]) eq 'PDL') {
    gsl_get_uniform_meat($var[0],$$obj);
    return $var[0]; 
}
else {
    my $p;

    $p = zeroes @var;
    gsl_get_uniform_meat($p,$$obj);
    return $p;
}
}



sub get_uniform_pos {
my ($obj,@var) = @_;if (ref($var[0]) eq 'PDL') {
    gsl_get_uniform_pos_meat($var[0],$$obj);
    return $var[0]; 
}
else {
    my $p;

    $p = zeroes @var;
    gsl_get_uniform_pos_meat($p,$$obj);
    return $p;
}
}



sub get {
my ($obj,@var) = @_;if (ref($var[0]) eq 'PDL') {
    gsl_get_meat($var[0],$$obj);
    return $var[0]; 
}
else {
    my $p;

    $p = zeroes @var;
    gsl_get_meat($p,$$obj);
    return $p;
}
}



sub get_int {
my ($obj,$n,@var) = @_;if (!($n>0)) {barf("first parameter must be an int >0")};if (ref($var[0]) eq 'PDL') {
    gsl_get_int_meat($var[0],$n,$$obj);
    return $var[0]; 
}
else {
    my $p;

    $p = zeroes @var;
    gsl_get_int_meat($p,$n,$$obj);
    return $p;
}
}




*gsl_get_uniform_meat = \&PDL::GSL::RNG::gsl_get_uniform_meat;





*gsl_get_uniform_pos_meat = \&PDL::GSL::RNG::gsl_get_uniform_pos_meat;





*gsl_get_meat = \&PDL::GSL::RNG::gsl_get_meat;





*gsl_get_int_meat = \&PDL::GSL::RNG::gsl_get_int_meat;





*ran_gaussian_meat = \&PDL::GSL::RNG::ran_gaussian_meat;




sub ran_gaussian {
my ($obj,$a,@var) = @_;
if (ref($var[0]) eq 'PDL') {
    ran_gaussian_meat($var[0],$a,$$obj);
    return $var[0]; 
}
else {
    my $p;

    $p = zeroes @var;
    ran_gaussian_meat($p,$a,$$obj);
    return $p;
}
}




*ran_gaussian_var_meat = \&PDL::GSL::RNG::ran_gaussian_var_meat;




sub ran_gaussian_var {
my ($obj,@var) = @_;
    if (scalar(@var) != 1) {barf("Bad number of parameters!");}
    return ran_gaussian_var_meat(@var,$$obj);
}




*ran_ugaussian_tail_meat = \&PDL::GSL::RNG::ran_ugaussian_tail_meat;




sub ran_ugaussian_tail {
my ($obj,$a,@var) = @_;
if (ref($var[0]) eq 'PDL') {
    ran_ugaussian_tail_meat($var[0],$a,$$obj);
    return $var[0]; 
}
else {
    my $p;

    $p = zeroes @var;
    ran_ugaussian_tail_meat($p,$a,$$obj);
    return $p;
}
}




*ran_ugaussian_tail_var_meat = \&PDL::GSL::RNG::ran_ugaussian_tail_var_meat;




sub ran_ugaussian_tail_var {
my ($obj,@var) = @_;
    if (scalar(@var) != 1) {barf("Bad number of parameters!");}
    return ran_ugaussian_tail_var_meat(@var,$$obj);
}




*ran_exponential_meat = \&PDL::GSL::RNG::ran_exponential_meat;




sub ran_exponential {
my ($obj,$a,@var) = @_;
if (ref($var[0]) eq 'PDL') {
    ran_exponential_meat($var[0],$a,$$obj);
    return $var[0]; 
}
else {
    my $p;

    $p = zeroes @var;
    ran_exponential_meat($p,$a,$$obj);
    return $p;
}
}




*ran_exponential_var_meat = \&PDL::GSL::RNG::ran_exponential_var_meat;




sub ran_exponential_var {
my ($obj,@var) = @_;
    if (scalar(@var) != 1) {barf("Bad number of parameters!");}
    return ran_exponential_var_meat(@var,$$obj);
}




*ran_laplace_meat = \&PDL::GSL::RNG::ran_laplace_meat;




sub ran_laplace {
my ($obj,$a,@var) = @_;
if (ref($var[0]) eq 'PDL') {
    ran_laplace_meat($var[0],$a,$$obj);
    return $var[0]; 
}
else {
    my $p;

    $p = zeroes @var;
    ran_laplace_meat($p,$a,$$obj);
    return $p;
}
}




*ran_laplace_var_meat = \&PDL::GSL::RNG::ran_laplace_var_meat;




sub ran_laplace_var {
my ($obj,@var) = @_;
    if (scalar(@var) != 1) {barf("Bad number of parameters!");}
    return ran_laplace_var_meat(@var,$$obj);
}




*ran_exppow_meat = \&PDL::GSL::RNG::ran_exppow_meat;




sub ran_exppow {
my ($obj,$a,$b,@var) = @_;
if (ref($var[0]) eq 'PDL') {
    ran_exppow_meat($var[0],$a,$b,$$obj);
    return $var[0]; 
}
else {
    my $p;

    $p = zeroes @var;
    ran_exppow_meat($p,$a,$b,$$obj);
    return $p;
}
}




*ran_exppow_var_meat = \&PDL::GSL::RNG::ran_exppow_var_meat;




sub ran_exppow_var {
my ($obj,@var) = @_;
    if (scalar(@var) != 2) {barf("Bad number of parameters!");}
    return ran_exppow_var_meat(@var,$$obj);
}




*ran_cauchy_meat = \&PDL::GSL::RNG::ran_cauchy_meat;




sub ran_cauchy {
my ($obj,$a,@var) = @_;
if (ref($var[0]) eq 'PDL') {
    ran_cauchy_meat($var[0],$a,$$obj);
    return $var[0]; 
}
else {
    my $p;

    $p = zeroes @var;
    ran_cauchy_meat($p,$a,$$obj);
    return $p;
}
}




*ran_cauchy_var_meat = \&PDL::GSL::RNG::ran_cauchy_var_meat;




sub ran_cauchy_var {
my ($obj,@var) = @_;
    if (scalar(@var) != 1) {barf("Bad number of parameters!");}
    return ran_cauchy_var_meat(@var,$$obj);
}




*ran_rayleigh_meat = \&PDL::GSL::RNG::ran_rayleigh_meat;




sub ran_rayleigh {
my ($obj,$a,@var) = @_;
if (ref($var[0]) eq 'PDL') {
    ran_rayleigh_meat($var[0],$a,$$obj);
    return $var[0]; 
}
else {
    my $p;

    $p = zeroes @var;
    ran_rayleigh_meat($p,$a,$$obj);
    return $p;
}
}




*ran_rayleigh_var_meat = \&PDL::GSL::RNG::ran_rayleigh_var_meat;




sub ran_rayleigh_var {
my ($obj,@var) = @_;
    if (scalar(@var) != 1) {barf("Bad number of parameters!");}
    return ran_rayleigh_var_meat(@var,$$obj);
}




*ran_rayleigh_tail_meat = \&PDL::GSL::RNG::ran_rayleigh_tail_meat;




sub ran_rayleigh_tail {
my ($obj,$a,$b,@var) = @_;
if (ref($var[0]) eq 'PDL') {
    ran_rayleigh_tail_meat($var[0],$a,$b,$$obj);
    return $var[0]; 
}
else {
    my $p;

    $p = zeroes @var;
    ran_rayleigh_tail_meat($p,$a,$b,$$obj);
    return $p;
}
}




*ran_rayleigh_tail_var_meat = \&PDL::GSL::RNG::ran_rayleigh_tail_var_meat;




sub ran_rayleigh_tail_var {
my ($obj,@var) = @_;
    if (scalar(@var) != 2) {barf("Bad number of parameters!");}
    return ran_rayleigh_tail_var_meat(@var,$$obj);
}




*ran_levy_meat = \&PDL::GSL::RNG::ran_levy_meat;




sub ran_levy {
my ($obj,$a,$b,@var) = @_;
if (ref($var[0]) eq 'PDL') {
    ran_levy_meat($var[0],$a,$b,$$obj);
    return $var[0]; 
}
else {
    my $p;

    $p = zeroes @var;
    ran_levy_meat($p,$a,$b,$$obj);
    return $p;
}
}




*ran_levy_var_meat = \&PDL::GSL::RNG::ran_levy_var_meat;




sub ran_levy_var {
my ($obj,@var) = @_;
    if (scalar(@var) != 2) {barf("Bad number of parameters!");}
    return ran_levy_var_meat(@var,$$obj);
}




*ran_gamma_meat = \&PDL::GSL::RNG::ran_gamma_meat;




sub ran_gamma {
my ($obj,$a,$b,@var) = @_;
if (ref($var[0]) eq 'PDL') {
    ran_gamma_meat($var[0],$a,$b,$$obj);
    return $var[0]; 
}
else {
    my $p;

    $p = zeroes @var;
    ran_gamma_meat($p,$a,$b,$$obj);
    return $p;
}
}




*ran_gamma_var_meat = \&PDL::GSL::RNG::ran_gamma_var_meat;




sub ran_gamma_var {
my ($obj,@var) = @_;
    if (scalar(@var) != 2) {barf("Bad number of parameters!");}
    return ran_gamma_var_meat(@var,$$obj);
}




*ran_flat_meat = \&PDL::GSL::RNG::ran_flat_meat;




sub ran_flat {
my ($obj,$a,$b,@var) = @_;
if (ref($var[0]) eq 'PDL') {
    ran_flat_meat($var[0],$a,$b,$$obj);
    return $var[0]; 
}
else {
    my $p;

    $p = zeroes @var;
    ran_flat_meat($p,$a,$b,$$obj);
    return $p;
}
}




*ran_flat_var_meat = \&PDL::GSL::RNG::ran_flat_var_meat;




sub ran_flat_var {
my ($obj,@var) = @_;
    if (scalar(@var) != 2) {barf("Bad number of parameters!");}
    return ran_flat_var_meat(@var,$$obj);
}




*ran_lognormal_meat = \&PDL::GSL::RNG::ran_lognormal_meat;




sub ran_lognormal {
my ($obj,$a,$b,@var) = @_;
if (ref($var[0]) eq 'PDL') {
    ran_lognormal_meat($var[0],$a,$b,$$obj);
    return $var[0]; 
}
else {
    my $p;

    $p = zeroes @var;
    ran_lognormal_meat($p,$a,$b,$$obj);
    return $p;
}
}




*ran_lognormal_var_meat = \&PDL::GSL::RNG::ran_lognormal_var_meat;




sub ran_lognormal_var {
my ($obj,@var) = @_;
    if (scalar(@var) != 2) {barf("Bad number of parameters!");}
    return ran_lognormal_var_meat(@var,$$obj);
}




*ran_chisq_meat = \&PDL::GSL::RNG::ran_chisq_meat;




sub ran_chisq {
my ($obj,$a,@var) = @_;
if (ref($var[0]) eq 'PDL') {
    ran_chisq_meat($var[0],$a,$$obj);
    return $var[0]; 
}
else {
    my $p;

    $p = zeroes @var;
    ran_chisq_meat($p,$a,$$obj);
    return $p;
}
}




*ran_chisq_var_meat = \&PDL::GSL::RNG::ran_chisq_var_meat;




sub ran_chisq_var {
my ($obj,@var) = @_;
    if (scalar(@var) != 1) {barf("Bad number of parameters!");}
    return ran_chisq_var_meat(@var,$$obj);
}




*ran_fdist_meat = \&PDL::GSL::RNG::ran_fdist_meat;




sub ran_fdist {
my ($obj,$a,$b,@var) = @_;
if (ref($var[0]) eq 'PDL') {
    ran_fdist_meat($var[0],$a,$b,$$obj);
    return $var[0]; 
}
else {
    my $p;

    $p = zeroes @var;
    ran_fdist_meat($p,$a,$b,$$obj);
    return $p;
}
}




*ran_fdist_var_meat = \&PDL::GSL::RNG::ran_fdist_var_meat;




sub ran_fdist_var {
my ($obj,@var) = @_;
    if (scalar(@var) != 2) {barf("Bad number of parameters!");}
    return ran_fdist_var_meat(@var,$$obj);
}




*ran_tdist_meat = \&PDL::GSL::RNG::ran_tdist_meat;




sub ran_tdist {
my ($obj,$a,@var) = @_;
if (ref($var[0]) eq 'PDL') {
    ran_tdist_meat($var[0],$a,$$obj);
    return $var[0]; 
}
else {
    my $p;

    $p = zeroes @var;
    ran_tdist_meat($p,$a,$$obj);
    return $p;
}
}




*ran_tdist_var_meat = \&PDL::GSL::RNG::ran_tdist_var_meat;




sub ran_tdist_var {
my ($obj,@var) = @_;
    if (scalar(@var) != 1) {barf("Bad number of parameters!");}
    return ran_tdist_var_meat(@var,$$obj);
}




*ran_beta_meat = \&PDL::GSL::RNG::ran_beta_meat;




sub ran_beta {
my ($obj,$a,$b,@var) = @_;
if (ref($var[0]) eq 'PDL') {
    ran_beta_meat($var[0],$a,$b,$$obj);
    return $var[0]; 
}
else {
    my $p;

    $p = zeroes @var;
    ran_beta_meat($p,$a,$b,$$obj);
    return $p;
}
}




*ran_beta_var_meat = \&PDL::GSL::RNG::ran_beta_var_meat;




sub ran_beta_var {
my ($obj,@var) = @_;
    if (scalar(@var) != 2) {barf("Bad number of parameters!");}
    return ran_beta_var_meat(@var,$$obj);
}




*ran_logistic_meat = \&PDL::GSL::RNG::ran_logistic_meat;




sub ran_logistic {
my ($obj,$a,@var) = @_;
if (ref($var[0]) eq 'PDL') {
    ran_logistic_meat($var[0],$a,$$obj);
    return $var[0]; 
}
else {
    my $p;

    $p = zeroes @var;
    ran_logistic_meat($p,$a,$$obj);
    return $p;
}
}




*ran_logistic_var_meat = \&PDL::GSL::RNG::ran_logistic_var_meat;




sub ran_logistic_var {
my ($obj,@var) = @_;
    if (scalar(@var) != 1) {barf("Bad number of parameters!");}
    return ran_logistic_var_meat(@var,$$obj);
}




*ran_pareto_meat = \&PDL::GSL::RNG::ran_pareto_meat;




sub ran_pareto {
my ($obj,$a,$b,@var) = @_;
if (ref($var[0]) eq 'PDL') {
    ran_pareto_meat($var[0],$a,$b,$$obj);
    return $var[0]; 
}
else {
    my $p;

    $p = zeroes @var;
    ran_pareto_meat($p,$a,$b,$$obj);
    return $p;
}
}




*ran_pareto_var_meat = \&PDL::GSL::RNG::ran_pareto_var_meat;




sub ran_pareto_var {
my ($obj,@var) = @_;
    if (scalar(@var) != 2) {barf("Bad number of parameters!");}
    return ran_pareto_var_meat(@var,$$obj);
}




*ran_weibull_meat = \&PDL::GSL::RNG::ran_weibull_meat;




sub ran_weibull {
my ($obj,$a,$b,@var) = @_;
if (ref($var[0]) eq 'PDL') {
    ran_weibull_meat($var[0],$a,$b,$$obj);
    return $var[0]; 
}
else {
    my $p;

    $p = zeroes @var;
    ran_weibull_meat($p,$a,$b,$$obj);
    return $p;
}
}




*ran_weibull_var_meat = \&PDL::GSL::RNG::ran_weibull_var_meat;




sub ran_weibull_var {
my ($obj,@var) = @_;
    if (scalar(@var) != 2) {barf("Bad number of parameters!");}
    return ran_weibull_var_meat(@var,$$obj);
}




*ran_gumbel1_meat = \&PDL::GSL::RNG::ran_gumbel1_meat;




sub ran_gumbel1 {
my ($obj,$a,$b,@var) = @_;
if (ref($var[0]) eq 'PDL') {
    ran_gumbel1_meat($var[0],$a,$b,$$obj);
    return $var[0]; 
}
else {
    my $p;

    $p = zeroes @var;
    ran_gumbel1_meat($p,$a,$b,$$obj);
    return $p;
}
}




*ran_gumbel1_var_meat = \&PDL::GSL::RNG::ran_gumbel1_var_meat;




sub ran_gumbel1_var {
my ($obj,@var) = @_;
    if (scalar(@var) != 2) {barf("Bad number of parameters!");}
    return ran_gumbel1_var_meat(@var,$$obj);
}




*ran_gumbel2_meat = \&PDL::GSL::RNG::ran_gumbel2_meat;




sub ran_gumbel2 {
my ($obj,$a,$b,@var) = @_;
if (ref($var[0]) eq 'PDL') {
    ran_gumbel2_meat($var[0],$a,$b,$$obj);
    return $var[0]; 
}
else {
    my $p;

    $p = zeroes @var;
    ran_gumbel2_meat($p,$a,$b,$$obj);
    return $p;
}
}




*ran_gumbel2_var_meat = \&PDL::GSL::RNG::ran_gumbel2_var_meat;




sub ran_gumbel2_var {
my ($obj,@var) = @_;
    if (scalar(@var) != 2) {barf("Bad number of parameters!");}
    return ran_gumbel2_var_meat(@var,$$obj);
}




*ran_poisson_meat = \&PDL::GSL::RNG::ran_poisson_meat;




sub ran_poisson {
my ($obj,$a,@var) = @_;
if (ref($var[0]) eq 'PDL') {
    ran_poisson_meat($var[0],$a,$$obj);
    return $var[0]; 
}
else {
    my $p;

    $p = zeroes @var;
    ran_poisson_meat($p,$a,$$obj);
    return $p;
}
}




*ran_poisson_var_meat = \&PDL::GSL::RNG::ran_poisson_var_meat;




sub ran_poisson_var {
my ($obj,@var) = @_;
    if (scalar(@var) != 1) {barf("Bad number of parameters!");}
    return ran_poisson_var_meat(@var,$$obj);
}




*ran_bernoulli_meat = \&PDL::GSL::RNG::ran_bernoulli_meat;




sub ran_bernoulli {
my ($obj,$a,@var) = @_;
if (ref($var[0]) eq 'PDL') {
    ran_bernoulli_meat($var[0],$a,$$obj);
    return $var[0]; 
}
else {
    my $p;

    $p = zeroes @var;
    ran_bernoulli_meat($p,$a,$$obj);
    return $p;
}
}




*ran_bernoulli_var_meat = \&PDL::GSL::RNG::ran_bernoulli_var_meat;




sub ran_bernoulli_var {
my ($obj,@var) = @_;
    if (scalar(@var) != 1) {barf("Bad number of parameters!");}
    return ran_bernoulli_var_meat(@var,$$obj);
}




*ran_binomial_meat = \&PDL::GSL::RNG::ran_binomial_meat;




sub ran_binomial {
my ($obj,$a,$b,@var) = @_;
if (ref($var[0]) eq 'PDL') {
    ran_binomial_meat($var[0],$a,$b,$$obj);
    return $var[0]; 
}
else {
    my $p;

    $p = zeroes @var;
    ran_binomial_meat($p,$a,$b,$$obj);
    return $p;
}
}




*ran_binomial_var_meat = \&PDL::GSL::RNG::ran_binomial_var_meat;




sub ran_binomial_var {
my ($obj,@var) = @_;
    if (scalar(@var) != 2) {barf("Bad number of parameters!");}
    return ran_binomial_var_meat(@var,$$obj);
}




*ran_negative_binomial_meat = \&PDL::GSL::RNG::ran_negative_binomial_meat;




sub ran_negative_binomial {
my ($obj,$a,$b,@var) = @_;
if (ref($var[0]) eq 'PDL') {
    ran_negative_binomial_meat($var[0],$a,$b,$$obj);
    return $var[0]; 
}
else {
    my $p;

    $p = zeroes @var;
    ran_negative_binomial_meat($p,$a,$b,$$obj);
    return $p;
}
}




*ran_negative_binomial_var_meat = \&PDL::GSL::RNG::ran_negative_binomial_var_meat;




sub ran_negative_binomial_var {
my ($obj,@var) = @_;
    if (scalar(@var) != 2) {barf("Bad number of parameters!");}
    return ran_negative_binomial_var_meat(@var,$$obj);
}




*ran_pascal_meat = \&PDL::GSL::RNG::ran_pascal_meat;




sub ran_pascal {
my ($obj,$a,$b,@var) = @_;
if (ref($var[0]) eq 'PDL') {
    ran_pascal_meat($var[0],$a,$b,$$obj);
    return $var[0]; 
}
else {
    my $p;

    $p = zeroes @var;
    ran_pascal_meat($p,$a,$b,$$obj);
    return $p;
}
}




*ran_pascal_var_meat = \&PDL::GSL::RNG::ran_pascal_var_meat;




sub ran_pascal_var {
my ($obj,@var) = @_;
    if (scalar(@var) != 2) {barf("Bad number of parameters!");}
    return ran_pascal_var_meat(@var,$$obj);
}




*ran_geometric_meat = \&PDL::GSL::RNG::ran_geometric_meat;




sub ran_geometric {
my ($obj,$a,@var) = @_;
if (ref($var[0]) eq 'PDL') {
    ran_geometric_meat($var[0],$a,$$obj);
    return $var[0]; 
}
else {
    my $p;

    $p = zeroes @var;
    ran_geometric_meat($p,$a,$$obj);
    return $p;
}
}




*ran_geometric_var_meat = \&PDL::GSL::RNG::ran_geometric_var_meat;




sub ran_geometric_var {
my ($obj,@var) = @_;
    if (scalar(@var) != 1) {barf("Bad number of parameters!");}
    return ran_geometric_var_meat(@var,$$obj);
}




*ran_hypergeometric_meat = \&PDL::GSL::RNG::ran_hypergeometric_meat;




sub ran_hypergeometric {
my ($obj,$a,$b,$c,@var) = @_;
if (ref($var[0]) eq 'PDL') {
    ran_hypergeometric_meat($var[0],$a,$b,$c,$$obj);
    return $var[0]; 
}
else {
    my $p;

    $p = zeroes @var;
    ran_hypergeometric_meat($p,$a,$b,$c,$$obj);
    return $p;
}
}




*ran_hypergeometric_var_meat = \&PDL::GSL::RNG::ran_hypergeometric_var_meat;




sub ran_hypergeometric_var {
my ($obj,@var) = @_;
    if (scalar(@var) != 3) {barf("Bad number of parameters!");}
    return ran_hypergeometric_var_meat(@var,$$obj);
}




*ran_logarithmic_meat = \&PDL::GSL::RNG::ran_logarithmic_meat;




sub ran_logarithmic {
my ($obj,$a,@var) = @_;
if (ref($var[0]) eq 'PDL') {
    ran_logarithmic_meat($var[0],$a,$$obj);
    return $var[0]; 
}
else {
    my $p;

    $p = zeroes @var;
    ran_logarithmic_meat($p,$a,$$obj);
    return $p;
}
}




*ran_logarithmic_var_meat = \&PDL::GSL::RNG::ran_logarithmic_var_meat;




sub ran_logarithmic_var {
my ($obj,@var) = @_;
    if (scalar(@var) != 1) {barf("Bad number of parameters!");}
    return ran_logarithmic_var_meat(@var,$$obj);
}




*ran_additive_gaussian_meat = \&PDL::GSL::RNG::ran_additive_gaussian_meat;




       sub ran_additive_gaussian {
	 my ($obj,$sigma,@var) = @_;
	 if (ref($var[0]) eq 'PDL') {
	   ran_additive_gaussian_meat($var[0],$sigma,$$obj);
	   return $var[0]; 
	 }
	 else {
	   barf("In additive gaussian mode you must specify a piddle!");
	 }
       }
       



*ran_additive_poisson_meat = \&PDL::GSL::RNG::ran_additive_poisson_meat;




       sub ran_additive_poisson {
	 my ($obj,$sigma,@var) = @_;
	 if (ref($var[0]) eq 'PDL') {
	   ran_additive_poisson_meat($var[0],$sigma,$$obj);
	   return $var[0]; 
	 }
	 else {
	   barf("In additive poisson mode you must specify a piddle!");
	 }
       }
       



*ran_feed_poisson_meat = \&PDL::GSL::RNG::ran_feed_poisson_meat;




       sub ran_feed_poisson {
	 my ($obj,@var) = @_;
	 if (ref($var[0]) eq 'PDL') {
	   ran_feed_poisson_meat($var[0],$$obj);
	   return $var[0]; 
	 }
	 else {
	   barf("In poisson mode you must specify a piddle!");
	 }
       }
       



*ran_bivariate_gaussian_meat = \&PDL::GSL::RNG::ran_bivariate_gaussian_meat;




       sub ran_bivariate_gaussian {
	 my ($obj,$sigma_x,$sigma_y,$rho,$n) = @_;
	 if ($n>0) {
	   my $p = zeroes(2,$n);
	   ran_bivariate_gaussian_meat($p,$sigma_x,$sigma_y,$rho,$$obj);
	   return $p; 
	 }
	 else {
	   barf("Not enough parameters for gaussian bivariate!");
	 }
       }
       



*ran_dir_2d_meat = \&PDL::GSL::RNG::ran_dir_2d_meat;





*ran_dir_3d_meat = \&PDL::GSL::RNG::ran_dir_3d_meat;





*ran_dir_nd_meat = \&PDL::GSL::RNG::ran_dir_nd_meat;




       sub ran_dir {
	 my ($obj,$ndim,$n) = @_;
	 if ($n>0) {
	   my $p = zeroes($ndim,$n);
	   if ($ndim==2) { ran_dir_2d_meat($p,$$obj); }
	   elsif ($ndim==3) { ran_dir_3d_meat($p,$$obj); }
	   elsif ($ndim>=4 && $ndim<=100) { ran_dir_nd_meat($p,$ndim,$$obj); }
	   else { barf("Bad number of dimensions!"); }
	   return $p; 
	 }
	 else {
	   barf("Not enough parameters for random vectors!");
	 }
       }
       



*ran_discrete_meat = \&PDL::GSL::RNG::ran_discrete_meat;




sub ran_discrete {
my ($obj, $rdt, @var) = @_;
if (ref($var[0]) eq 'PDL') {
    ran_discrete_meat($var[0], $$rdt, $$obj);
    return $var[0]; 
}
else {
    my $p;

    $p = zeroes @var;
    ran_discrete_meat($p, $$rdt, $$obj);
    return $p;
}
}



sub ran_shuffle_vec {
my ($obj,@in) = @_;
my (@out,$i,$p);

$p = long [0..$#in];
$obj->ran_shuffle($p);
for($i=0;$i<scalar(@in);$i++) {
$out[$p->at($i)]=$in[$i];
}
return @out;
}



sub ran_choose_vec {
my ($obj,$nout,@in) = @_;
my (@out,$i,$pin,$pout);

$pin = long [0..$#in];
$pout = long [0..($nout-1)];
$obj->ran_choose($pin,$pout);
for($i=0;$i<$nout;$i++) {
$out[$i]=$in[$pout->at($i)];
}
return @out;
}




*ran_ver_meat = \&PDL::GSL::RNG::ran_ver_meat;





*ran_caos_meat = \&PDL::GSL::RNG::ran_caos_meat;




       sub ran_ver {
	 my ($obj,$x0,$r,$n) = @_;
	 if ($n>0) {
	   my $p = zeroes($n);
	   ran_ver_meat($p,$x0,$r,$n,$$obj);
	   return $p; 
	 }
	 else {
	   barf("Not enough parameters for ran_ver!");
	 }
       }
       


       sub ran_caos {
	 my ($obj,$m,$n) = @_;
	 if ($n>0) {
	   my $p = zeroes($n);
	   ran_caos_meat($p,$m,$n,$$obj);
	   return $p; 
	 }
	 else {
	   barf("Not enough parameters for ran_caos!");
	 }
       }
       

;



# Exit with OK status

1;

		   