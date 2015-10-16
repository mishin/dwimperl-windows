#include <exception>
#undef  xsp_constructor_class
#define xsp_constructor_class(c) (c)


#############################################################################


## Name:        XS/VarHScrollHelper.xsp


## Purpose:     XS for Wx::VarHScrollHelper


## Author:      Mattia Barbon


## Modified by:


## Created:     21/08/2007


## RCS-ID:      $Id: VarHScrollHelper.xsp 2197 2007-08-21 23:10:35Z mbarbon $


## Copyright:   (c) 2007 Mattia Barbon


## Licence:     This program is free software; you can redistribute it and/or


##              modify it under the same terms as Perl itself


#############################################################################


MODULE=Wx

MODULE=Wx PACKAGE=Wx::VarHScrollHelper

void
wxVarHScrollHelper::SetColumnCount( size_t columnCount )
  CODE:
    try {
      THIS->SetColumnCount( columnCount );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

bool
wxVarHScrollHelper::ScrollToColumn( size_t column )
  CODE:
    try {
      RETVAL = THIS->ScrollToColumn( column );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

bool
wxVarHScrollHelper::ScrollColumns( int columns )
  CODE:
    try {
      RETVAL = THIS->ScrollColumns( columns );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

bool
wxVarHScrollHelper::ScrollColumnPages( int pages )
  CODE:
    try {
      RETVAL = THIS->ScrollColumnPages( pages );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

void
wxVarHScrollHelper::RefreshColumn( size_t column )
  CODE:
    try {
      THIS->RefreshColumn( column );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxVarHScrollHelper::RefreshColumns( size_t from, size_t to )
  CODE:
    try {
      THIS->RefreshColumns( from, to );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

size_t
wxVarHScrollHelper::GetColumnCount()
  CODE:
    try {
      RETVAL = THIS->GetColumnCount();
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

size_t
wxVarHScrollHelper::GetVisibleColumnsBegin()
  CODE:
    try {
      RETVAL = THIS->GetVisibleColumnsBegin();
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

size_t
wxVarHScrollHelper::GetVisibleColumnsEnd()
  CODE:
    try {
      RETVAL = THIS->GetVisibleColumnsEnd();
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

bool
wxVarHScrollHelper::IsColumnVisible( size_t column )
  CODE:
    try {
      RETVAL = THIS->IsColumnVisible( column );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

