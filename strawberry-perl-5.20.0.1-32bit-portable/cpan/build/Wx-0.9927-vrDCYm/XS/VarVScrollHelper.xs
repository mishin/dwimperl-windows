#include <exception>
#undef  xsp_constructor_class
#define xsp_constructor_class(c) (c)


#############################################################################


## Name:        XS/VarVScrollHelper.xsp


## Purpose:     XS for Wx::VarVScrollHelper


## Author:      Mattia Barbon


## Modified by:


## Created:     20/08/2007


## RCS-ID:      $Id: VarVScrollHelper.xsp 2197 2007-08-21 23:10:35Z mbarbon $


## Copyright:   (c) 2007 Mattia Barbon


## Licence:     This program is free software; you can redistribute it and/or


##              modify it under the same terms as Perl itself


#############################################################################


MODULE=Wx

MODULE=Wx PACKAGE=Wx::VarVScrollHelper

void
wxVarVScrollHelper::SetRowCount( size_t count )
  CODE:
    try {
      THIS->SetRowCount( count );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

bool
wxVarVScrollHelper::ScrollToRow( size_t line )
  CODE:
    try {
      RETVAL = THIS->ScrollToRow( line );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

void
wxVarVScrollHelper::RefreshRow( size_t line )
  CODE:
    try {
      THIS->RefreshRow( line );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxVarVScrollHelper::RefreshRows( size_t from, size_t to )
  CODE:
    try {
      THIS->RefreshRows( from, to );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

size_t
wxVarVScrollHelper::GetRowCount()
  CODE:
    try {
      RETVAL = THIS->GetRowCount();
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

size_t
wxVarVScrollHelper::GetVisibleRowsBegin()
  CODE:
    try {
      RETVAL = THIS->GetVisibleRowsBegin();
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

size_t
wxVarVScrollHelper::GetVisibleRowsEnd()
  CODE:
    try {
      RETVAL = THIS->GetVisibleRowsEnd();
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

bool
wxVarVScrollHelper::ScrollRows( int lines )
  CODE:
    try {
      RETVAL = THIS->ScrollRows( lines );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

bool
wxVarVScrollHelper::ScrollRowPages( int pages )
  CODE:
    try {
      RETVAL = THIS->ScrollRowPages( pages );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

bool
wxVarVScrollHelper::IsRowVisible( size_t line )
  CODE:
    try {
      RETVAL = THIS->IsRowVisible( line );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

