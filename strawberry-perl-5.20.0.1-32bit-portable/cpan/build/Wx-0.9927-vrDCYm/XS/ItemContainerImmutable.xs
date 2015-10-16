#include <exception>
#undef  xsp_constructor_class
#define xsp_constructor_class(c) (c)


#############################################################################


## Name:        XS/ItemContainerImmutable.xsp


## Purpose:     XS for Wx::ItemContainerImmutable


## Author:      Mattia Barbon


## Modified by:


## Created:     14/08/2007


## RCS-ID:      $Id: ItemContainerImmutable.xsp 3504 2013-06-28 04:18:43Z mdootson $


## Copyright:   (c) 2007 Mattia Barbon


## Licence:     This program is free software; you can redistribute it and/or


##              modify it under the same terms as Perl itself


#############################################################################


MODULE=Wx

MODULE=Wx PACKAGE=Wx::ItemContainerImmutable

unsigned int
wxItemContainerImmutable::GetCount()
  CODE:
    try {
      RETVAL = THIS->GetCount();
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

#if !defined(WXPERL_IN_COMBOBOX) || WXPERL_W_VERSION_LE( 2, 9, 2 )
#define XSpp_161c1671_084746

bool
wxItemContainerImmutable::IsEmpty()
  CODE:
    try {
      RETVAL = THIS->IsEmpty();
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

#endif

wxString
wxItemContainerImmutable::GetString( unsigned int n )
  CODE:
    try {
      RETVAL = THIS->GetString( n );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL


void
wxItemContainerImmutable::GetStrings()
  PPCODE:
    PUTBACK;
    wxPli_stringarray_push( aTHX_ THIS->GetStrings() );
    SPAGAIN;


void
wxItemContainerImmutable::SetString( unsigned int n, wxString s )
  CODE:
    try {
      THIS->SetString( n, s );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }


int
wxItemContainerImmutable::FindString( ... )
  PPCODE:
    BEGIN_OVERLOAD()
#if WXPERL_W_VERSION_GE( 2, 7, 2 )
        MATCH_REDISP( wxPliOvl_s_b, FindStringCase )
#endif
        MATCH_REDISP( wxPliOvl_s, FindStringNoCase )
    END_OVERLOAD( Wx::ItemContainerImmutable::FindString )


int
wxItemContainerImmutable::FindStringNoCase( wxString s )
  CODE:
    try {
      RETVAL = THIS->FindString( s );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

#if WXPERL_W_VERSION_GE( 2, 7, 2 )
#define XSpp_161c1671_008025

int
wxItemContainerImmutable::FindStringCase( wxString s, bool bCase = false )
  CODE:
    try {
      RETVAL = THIS->FindString( s, bCase );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

#endif

#if !defined(WXPERL_IN_COMBOBOX)
#define XSpp_161c1671_018280

void
wxItemContainerImmutable::SetSelection( int n )
  CODE:
    try {
      THIS->SetSelection( n );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

int
wxItemContainerImmutable::GetSelection()
  CODE:
    try {
      RETVAL = THIS->GetSelection();
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

#endif

bool
wxItemContainerImmutable::SetStringSelection( wxString s )
  CODE:
    try {
      RETVAL = THIS->SetStringSelection( s );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

wxString
wxItemContainerImmutable::GetStringSelection()
  CODE:
    try {
      RETVAL = THIS->GetStringSelection();
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

void
wxItemContainerImmutable::Select( int n )
  CODE:
    try {
      THIS->Select( n );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

