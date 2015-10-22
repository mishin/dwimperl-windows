
### Generated from Types.pm.PL automatically - do not modify! ###

package PDL::Types;
require Exporter;
use Carp;


@EXPORT = qw( $PDL_B $PDL_S $PDL_US $PDL_L $PDL_IND $PDL_LL $PDL_F $PDL_D
	       @pack %typehash );

@EXPORT_OK = (@EXPORT, qw/types ppdefs typesrtkeys mapfld typefld/);
%EXPORT_TAGS = (
	All=>[@EXPORT,qw/types ppdefs typesrtkeys mapfld typefld/],
);

@ISA    = qw( Exporter );



# Data types/sizes (bytes) [must be in order of complexity]
# Enum
( $PDL_B, $PDL_S, $PDL_US, $PDL_L, $PDL_IND, $PDL_LL, $PDL_F, $PDL_D ) = (0..7);
# Corresponding pack types
@pack= qw/C* s* S* l* q* q* f* d*/;
@names= qw/PDL_B PDL_S PDL_US PDL_L PDL_IND PDL_LL PDL_F PDL_D/;

%PDL::Types::typehash = (
	PDL_B =>
		{
		  'usenan' => 0,
		  'sym' => 'PDL_B',
		  'ppforcetype' => 'byte',
		  'ioname' => 'byte',
		  'convertfunc' => 'byte',
		  'ctype' => 'PDL_Byte',
		  'numval' => 0,
		  'realctype' => 'unsigned char',
		  'defbval' => 'UCHAR_MAX',
		  'ppsym' => 'B'
		}
		,
	PDL_S =>
		{
		  'usenan' => 0,
		  'ppforcetype' => 'short',
		  'sym' => 'PDL_S',
		  'convertfunc' => 'short',
		  'ioname' => 'short',
		  'ctype' => 'PDL_Short',
		  'ppsym' => 'S',
		  'defbval' => 'SHRT_MIN',
		  'numval' => 1,
		  'realctype' => 'short'
		}
		,
	PDL_US =>
		{
		  'usenan' => 0,
		  'ppforcetype' => 'ushort',
		  'sym' => 'PDL_US',
		  'convertfunc' => 'ushort',
		  'ioname' => 'ushort',
		  'ctype' => 'PDL_Ushort',
		  'defbval' => 'USHRT_MAX',
		  'ppsym' => 'U',
		  'numval' => 2,
		  'realctype' => 'unsigned short'
		}
		,
	PDL_L =>
		{
		  'numval' => 3,
		  'realctype' => 'int',
		  'ppsym' => 'L',
		  'defbval' => 'INT_MIN',
		  'sym' => 'PDL_L',
		  'ppforcetype' => 'int',
		  'usenan' => 0,
		  'ctype' => 'PDL_Long',
		  'ioname' => 'long',
		  'convertfunc' => 'long'
		}
		,
	PDL_IND =>
		{
		  'numval' => 4,
		  'realctype' => 'long long',
		  'defbval' => 'LONG_MIN',
		  'ppsym' => 'N',
		  'ioname' => 'indx',
		  'convertfunc' => 'indx',
		  'ctype' => 'PDL_Indx',
		  'usenan' => 0,
		  'sym' => 'PDL_IND',
		  'ppforcetype' => 'indx'
		}
		,
	PDL_LL =>
		{
		  'usenan' => 0,
		  'ppforcetype' => 'longlong',
		  'sym' => 'PDL_LL',
		  'convertfunc' => 'longlong',
		  'ioname' => 'longlong',
		  'ctype' => 'PDL_LongLong',
		  'ppsym' => 'Q',
		  'defbval' => 'LONG_MIN',
		  'realctype' => 'long long',
		  'numval' => 5
		}
		,
	PDL_F =>
		{
		  'usenan' => 1,
		  'ppforcetype' => 'float',
		  'sym' => 'PDL_F',
		  'convertfunc' => 'float',
		  'ioname' => 'float',
		  'ctype' => 'PDL_Float',
		  'defbval' => '-FLT_MAX',
		  'ppsym' => 'F',
		  'realctype' => 'float',
		  'numval' => 6
		}
		,
	PDL_D =>
		{
		  'sym' => 'PDL_D',
		  'ppforcetype' => 'double',
		  'usenan' => 1,
		  'ctype' => 'PDL_Double',
		  'ioname' => 'double',
		  'convertfunc' => 'double',
		  'numval' => 7,
		  'realctype' => 'double',
		  'defbval' => '-DBL_MAX',
		  'ppsym' => 'D'
		}
		,
); # end typehash definition

# Cross-reference by common names
%PDL::Types::typenames = ();
for my $k(keys %PDL::Types::typehash) {
    my $n = $PDL::Types::typehash{$k}->{'numval'};
    $PDL::Types::typenames{$k} = $n;
    $PDL::Types::typenames{$n} = $n;
    $PDL::Types::typenames{$PDL::Types::typehash{$k}->{ioname}} = $n;
    $PDL::Types::typenames{$PDL::Types::typehash{$k}->{ctype}} = $n;
}


=head1 NAME

PDL::Types - define fundamental PDL Datatypes

=head1 SYNOPSIS

 use PDL::Types;

 $pdl = ushort( 2.0, 3.0 );
 print "The actual c type used to store ushort's is '" .
    $pdl->type->realctype() . "'\n";
 The actual c type used to store ushort's is 'unsigned short'

=head1 DESCRIPTION

Internal module - holds all the PDL Type info.  The type info can be
accessed easily using the C<PDL::Type> object returned by
the L<type|PDL::Core/type> method.

Skip to the end of this document to find out how to change
the set of types supported by PDL.

=head1 Support functions

A number of functions are available for module writers
to get/process type information. These are used in various
places (e.g. C<PDL::PP>, C<PDL::Core>) to generate the
appropriate type loops, etc.

=head2 typesrtkeys

return array of keys of typehash sorted in order of type complexity

=cut

sub typesrtkeys {
  return sort {$typehash{$a}->{numval} <=> $typehash{$b}->{numval}}
	keys %typehash;
}

=head2 ppdefs

return array of pp symbols for all known types

=cut

sub ppdefs {
	return map {$typehash{$_}->{ppsym}} typesrtkeys;
}

=head2 typefld

return specified field (C<$fld>) for specified type (C<$type>)
by querying type hash

=cut

sub typefld {
  my ($type,$fld) = @_;
  croak "unknown type $type" unless exists $typehash{$type};
  croak "unknown field $fld in type $type"
     unless exists $typehash{$type}->{$fld};
  return $typehash{$type}->{$fld};
}

=head2 mapfld (in_value, in_key, out_key)

Map a given source field to the corresponding target field by
querying the type hash. This gives you a way to say, "Find the type
whose C<$in_key> is equal to C<$value>, and return that type's value
for C<$out_key>. For example:

 # Does byte type use nan?
 $uses_nan = PDL::Types::mapfld(byte => 'ppforcetype', 'usenan');
 # Equivalent:
 $uses_nan = byte->usenan;
 
 # What is the actual C type for the value that we call 'long'?
 $type_name = PDL::Types::mapfld(long => 'convertfunc', 'realctype');
 # Equivalent:
 $type_name = long->realctype;

As you can see, the equivalent examples are much shorter and legible, so you
should only use mapfld if you were given the type index (in which case the
actual type is not immediately obvious):

 $type_index = 4;
 $type_name = PDL::Types::mapfld($type_index => numval, 'realctype');

=cut

sub mapfld {
	my ($type,$src,$trg) = @_;
	my @keys = grep {$typehash{$_}->{$src} eq $type} typesrtkeys;
	return @keys > 0 ? $typehash{$keys[0]}->{$trg} : undef;
}

=head2 typesynonyms

=for ref

return type related synonym definitions to be included in pdl.h .
This routine must be updated to include new types as required.
Mostly the automatic updating should take care of the vital
things.

=cut

sub typesynonyms {
  my $add = join "\n",
      map {"#define PDL_".typefld($_,'ppsym')." ".typefld($_,'sym')}
        grep {"PDL_".typefld($_,'ppsym') ne typefld($_,'sym')} typesrtkeys;
  print "adding...\n$add\n";
  return "$add\n";
}

=head1 PDL::Type OBJECTS

This module declares one class - C<PDL::Type> - objects of this class
are returned by the L<type|PDL::Core/type> method of a piddle.  It has
several methods, listed below, which provide an easy way to access
type information:

Additionally, comparison and stringification are overloaded so that
you can compare and print type objects, e.g.

  $nofloat = 1 if $pdl->type < float;
  die "must be double" if $type != double;

For further examples check again the
L<type|PDL::Core/type> method.

=over 4

=item enum

Returns the number representing this datatype (see L<get_datatype|PDL::Core/PDL::get_datatype>).

=item symbol

Returns one of 'PDL_B', 'PDL_S', 'PDL_US', 'PDL_L', 'PDL_LL', 'PDL_F' 
or 'PDL_D'.

=item ctype

Returns the macro used to represent this type in C code (eg 'PDL_Long').

=item ppsym

The letter used to represent this type in PP code code (eg 'U' for L<ushort|PDL::Core/ushort>).

=item realctype

The actual C type used to store this type.

=item shortctype

The value returned by C<ctype> without the 'PDL_' prefix.

=item badvalue

The special numerical value used to represent bad values for this type.
See L<badvalue routine in PDL::Bad|PDL::Bad/badvalue> for more details.

=cut


=item orig_badvalue

The default special numerical value used to represent bad values for this
type. (You can change the value that represents bad values for each type
during runtime.) See the
L<orig_badvalue routine in PDL::Bad|PDL::Bad/orig_badvalue> for more details.

=cut


=back

=cut

{
    package PDL::Type;
    sub new {
        my($type,$val) = @_;
        if("PDL::Type" eq ref $val) { return bless [@$val],$type; }
        if(ref $val and $val->isa(PDL)) {
            if($val->getndims != 0) {
              PDL::Core::barf(
                "Can't make a type out of non-scalar piddle $val!");
            }
            $val = $val->at;
        }
      PDL::Core::barf("Can't make a type out of non-scalar $val!".
          (ref $val)."!") if ref $val;

	if(length($PDL::Types::typenames{$val})) {
	    $val =~ s/^\s*//o;
	    $val =~ s/\s*$//o;
	    return bless [$PDL::Types::typenames{$val}],$type;
	} else {
	    die("Unknown type string '$val' (should be one of ".
                            join(",",map { $PDL::Types::typehash{$_}->{ioname} } @names).
			    ")\n");
	}
    }

sub enum   { return $_[0]->[0]; }
sub symbol { return $PDL::Types::names[ $_[0]->enum ]; }
sub PDL::Types::types { # return all known types as type objects
  map { new PDL::Type PDL::Types::typefld($_,'numval') } 
      PDL::Types::typesrtkeys();
}

sub ctype {
  return $PDL::Types::typehash{$_[0]->symbol}->{ctype};
}
sub ppsym {
  return $PDL::Types::typehash{$_[0]->symbol}->{ppsym};
}
sub realctype {
  return $PDL::Types::typehash{$_[0]->symbol}->{realctype};
}
sub ppforcetype {
  return $PDL::Types::typehash{$_[0]->symbol}->{ppforcetype};
}
sub convertfunc {
  return $PDL::Types::typehash{$_[0]->symbol}->{convertfunc};
}
sub sym {
  return $PDL::Types::typehash{$_[0]->symbol}->{sym};
}
sub numval {
  return $PDL::Types::typehash{$_[0]->symbol}->{numval};
}
sub usenan {
  return $PDL::Types::typehash{$_[0]->symbol}->{usenan};
}
sub ioname {
  return $PDL::Types::typehash{$_[0]->symbol}->{ioname};
}
sub defbval {
  return $PDL::Types::typehash{$_[0]->symbol}->{defbval};
}

no strict 'refs';
sub badvalue {
  my ( $self, $val ) = @_;
  my $name = "PDL::_badvalue_int" . $self->enum();
  if ( defined $val ) { return &{$name}( $val )->sclr; }
  else                { return &{$name}()->sclr; }
}

sub orig_badvalue {
  my $self = shift;
  my $name = "PDL::_default_badvalue_int" . $self->enum();
  return &{$name}()->sclr;
}
use strict 'refs';


sub shortctype { my $txt = $_[0]->ctype; $txt =~ s/PDL_//; return $txt; }

# make life a bit easier
use overload (
	      "\"\""  => sub { lc $_[0]->shortctype },
              "eq"    => sub { my($self, $other, $swap) = @_;
          		     return ("$self" eq $other);
              },
              "cmp"   => sub { my($self, $other, $swap) = @_;
          		     return ($swap ? $other cmp "$self" : "$self" cmp $other);
              },
	      "<=>"   => sub { $_[2] ? $_[1]->enum <=> $_[0]->enum :
	                               $_[0]->enum <=> $_[1]->enum },
	     );


} # package: PDL::Type
# Return
1;

__END__

=head1 Adding/removing types

You can change the types that PDL knows about by editing entries in
the definition of the variable C<@types> that appears close to the
top of the file F<Types.pm.PL> (i.e. the file from which this module
was generated).

=head2 Format of a type entry

Each entry in the C<@types> array is a hash reference. Here is an example
taken from the actual code that defines the C<ushort> type:

	     {
	      identifier => 'US',
	      onecharident => 'U',   # only needed if different from identifier
	      pdlctype => 'PDL_Ushort',
	      realctype => 'unsigned short',
	      ppforcetype => 'ushort',
	      usenan => 0,
	      packtype => 'S*',
	     },

Before we start to explain the fields please take this important
message on board:
I<entries must be listed in order of increasing complexity>. This
is critical to ensure that PDL's type conversion works correctly.
Basically, a less complex type will be converted to a more complex
type as required.

=head2 Fields in a type entry

Each type entry has a number of required and optional entry.

A list of all the entries:

=over

=item *

identifier

I<Required>. A short sequence of upercase letters that identifies this
type uniquely. More than three characters is probably overkill.


=item *

onecharident

I<Optional>. Only required if the C<identifier> has more than one character.
This should be a unique uppercase character that will be used to reference
this type in PP macro expressions of the C<TBSULFD> type. If you don't
know what I am talking about read the PP manpage or ask on the mailing list.

=item *

pdlctype

I<Required>. The C<typedefed> name that will be used to access this type
from C code.

=item *

realctype

I<Required>. The C compiler type that is used to implement this type.
For portability reasons this one might be platform dependent.

=item *

ppforcetype

I<Required>. The type name used in PP signatures to refer to this type.

=item *

usenan

I<Required>. Flag that signals if this type has to deal with NaN issues.
Generally only required for floating point types.

=item *

packtype

I<Required>. The Perl pack type used to pack Perl values into the machine representation for this type. For details see C<perldoc -f pack>.

=back

Also have a look at the entries at the top of F<Types.pm.PL>.

The syntax is not written into stone yet and might change as the
concept matures.

=head2 Other things you need to do

You need to check modules that do I/O (generally in the F<IO>
part of the directory tree). In the future we might add fields to
type entries to automate this. This requires changes to those IO
modules first though.

You should also make sure that any type macros in PP files
(i.e. C<$TBSULFD...>) are updated to reflect the new type. PDL::PP::Dump
has a mode to check for type macros requiring updating. Do something like

    find . -name \*.pd -exec perl -Mblib=. -M'PDL::PP::Dump=typecheck' {} \;

from the PDL root directory I<after> updating F<Types.pm.PL> to check
for such places.

=cut

