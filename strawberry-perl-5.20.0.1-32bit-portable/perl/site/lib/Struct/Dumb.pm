#  You may distribute under the terms of either the GNU General Public License
#  or the Artistic License (the same terms as Perl itself)
#
#  (C) Paul Evans, 2012-2014 -- leonerd@leonerd.org.uk

package Struct::Dumb;

use strict;
use warnings;

our $VERSION = '0.03';

use Carp;

=head1 NAME

C<Struct::Dumb> - make simple lightweight record-like structures

=head1 SYNOPSIS

 use Struct::Dumb;
 
 struct Point => [qw( x y )];

 my $point = Point(10, 20);

 printf "Point is at (%d, %d)\n", $point->x, $point->y;

 $point->y = 30;
 printf "Point is now at (%d, %d)\n", $point->x, $point->y;

Z<>

 struct Point3D => [qw( x y z )], named_constructor => 1;

 my $point3d = Point3D( z => 12, x => 100, y => 50 );

 printf "Point3d's height is %d\n", $point3d->z;

Z<>

 use Struct::Dumb qw( -named_constructors )

 struct Point3D => [qw( x y z ];

 my $point3d = Point3D( x => 100, z => 12, y => 50 );

=head1 DESCRIPTION

C<Struct::Dumb> creates record-like structure types, similar to the C<struct>
keyword in C, C++ or C#, or C<Record> in Pascal. An invocation of this module
will create a construction function which returns new object references with
the given field values. These references all respond to lvalue methods that
access or modify the values stored.

It's specifically and intentionally not meant to be an object class. You
cannot subclass it. You cannot provide additional methods. You cannot apply
roles or mixins or metaclasses or traits or antlers or whatever else is in
fashion this week.

On the other hand, it is tiny, creates cheap lightweight array-backed
structures, uses nothing outside of core. It's intended simply to be a
slightly nicer way to store data structures, where otherwise you might be
tempted to abuse a hash, complete with the risk of typoing key names. The
constructor will C<croak> if passed the wrong number of arguments, as will
attempts to refer to fields that don't exist.

 $ perl -E 'use Struct::Dumb; struct Point => [qw( x y )]; Point(30)'
 usage: main::Point($x, $y) at -e line 1

 $ perl -E 'use Struct::Dumb; struct Point => [qw( x y )]; Point(10,20)->z'
 main::Point does not have a 'z' field at -e line 1

=head2 CONSTRUCTOR FORMS

The C<struct> and C<readonly_struct> declarations create two different kinds
of constructor function, depending on the setting of the C<named_constructor>
option. When false, the constructor takes positional values in the same order
as the fields were declared. When true, the constructor takes a key/value pair
list in no particular order, giving the value of each named field.

This option can be specified to the C<struct> and C<readonly_struct>
functions. It defaults to false, but it can be set on a per-package basis to
default true by supplying the C<-named_constructors> option on the C<use>
statement.

=cut

sub import
{
   my $pkg = shift;
   my $caller = caller;

   my %default_opts;
   my %syms;

   foreach ( @_ ) {
      if( $_ eq "-named_constructors" ) {
         $default_opts{named_constructor} = 1;
      }
      else {
         $syms{$_}++;
      }
   }

   keys %syms or $syms{struct}++;

   my %export;

   if( delete $syms{struct} ) {
      $export{struct} = sub {
         my ( $name, $fields, @opts ) = @_;
         _struct( $name, $fields, scalar caller, lvalue => 1, %default_opts, @opts );
      };
   }
   if( delete $syms{readonly_struct} ) {
      $export{readonly_struct} = sub {
         my ( $name, $fields, @opts ) = @_;
         _struct( $name, $fields, scalar caller, lvalue => 0, %default_opts, @opts );
      };
   }

   if( keys %syms ) {
      croak "Unrecognised export symbols " . join( ", ", keys %syms );
   }

   no strict 'refs';
   *{"${caller}::$_"} = $export{$_} for keys %export;
}

=head1 FUNCTIONS

=cut

sub _struct
{
   my ( $name, $fields, $caller, %opts ) = @_;

   my $lvalue = !!$opts{lvalue};
   my $named  = !!$opts{named_constructor};

   my $pkg = "${caller}::$name";

   my %subs;
   foreach ( 0 .. $#$fields ) {
      my $idx = $_;
      $subs{$fields->[$idx]} = $lvalue ? sub :lvalue { shift->[$idx] }
                                       : sub { shift->[$idx] };
   }
   $subs{DESTROY} = sub {};
   $subs{AUTOLOAD} = sub {
      my ( $field ) = our $AUTOLOAD =~ m/::([^:]+)$/;
      croak "$pkg does not have a '$field' field";
   };

   my $constructor;
   if( $named ) {
      $constructor = sub {
         my %values = @_;
         my @values;
         foreach ( @$fields ) {
            exists $values{$_} or croak "usage: $pkg requires '$_'";
            push @values, delete $values{$_};
         }
         if( my ( $extrakey ) = keys %values ) {
            croak "usage: $pkg does not recognise '$extrakey'";
         }
         bless \@values, $pkg;
      };
   }
   else {
      my $fieldcount = @$fields;
      my $argnames = join ", ", map "\$$_", @$fields;
      $constructor = sub {
         @_ == $fieldcount or croak "usage: $pkg($argnames)";
         bless [ @_ ], $pkg;
      };
   }

   no strict 'refs';
   *{"${pkg}::$_"} = $subs{$_} for keys %subs;
   *{"${caller}::$name"} = $constructor;
}

=head2 struct $name => [ @fieldnames ], %opts

Creates a new structure type. This exports a new function of the type's name
into the caller's namespace. Invoking this function returns a new instance of
a type that implements those field names, as accessors and mutators for the
fields.

Takes the following options:

=over 4

=item named_constructor => BOOL

Determines whether the structure will take positional or named arguments.

=back

=cut

=head2 readonly_struct $name => [ @fieldnames ], %opts

Similar to C<struct>, but instances of this type are immutable once
constructed. The field accessor methods will not be marked with the
C<:lvalue> attribute.

Takes the same options as C<struct>.

=cut

=head1 AUTHOR

Paul Evans <leonerd@leonerd.org.uk>

=cut

0x55AA;
