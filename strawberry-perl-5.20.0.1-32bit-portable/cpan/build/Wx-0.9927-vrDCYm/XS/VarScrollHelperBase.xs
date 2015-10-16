#include <exception>
#undef  xsp_constructor_class
#define xsp_constructor_class(c) (c)


#############################################################################


## Name:        XS/VarScrollHelperBase.xsp


## Purpose:     XS for Wx::VarScrollHelperBase


## Author:      Mattia Barbon


## Modified by:


## Created:     20/08/2007


## RCS-ID:      $Id: VarScrollHelperBase.xsp 2192 2007-08-21 21:27:40Z mbarbon $


## Copyright:   (c) 2007 Mattia Barbon


## Licence:     This program is free software; you can redistribute it and/or


##              modify it under the same terms as Perl itself


#############################################################################


MODULE=Wx

MODULE=Wx PACKAGE=Wx::VarScrollHelperBase

void
wxVarScrollHelperBase::EnablePhysicalScrolling( bool scrolling = true )
  CODE:
    try {
      THIS->EnablePhysicalScrolling( scrolling );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

int
wxVarScrollHelperBase::VirtualHitTest( wxCoord coord )
  CODE:
    try {
      RETVAL = THIS->VirtualHitTest( coord );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

void
wxVarScrollHelperBase::RefreshAll()
  CODE:
    try {
      THIS->RefreshAll();
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

size_t
wxVarScrollHelperBase::GetVisibleBegin()
  CODE:
    try {
      RETVAL = THIS->GetVisibleBegin();
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

size_t
wxVarScrollHelperBase::GetVisibleEnd()
  CODE:
    try {
      RETVAL = THIS->GetVisibleEnd();
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

bool
wxVarScrollHelperBase::IsVisible( size_t unit )
  CODE:
    try {
      RETVAL = THIS->IsVisible( unit );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

int
wxVarScrollHelperBase::CalcScrolledPosition( int coord )
  CODE:
    try {
      RETVAL = THIS->CalcScrolledPosition( coord );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

int
wxVarScrollHelperBase::CalcUnscrolledPosition( int coord )
  CODE:
    try {
      RETVAL = THIS->CalcUnscrolledPosition( coord );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

void
wxVarScrollHelperBase::UpdateScrollbar()
  CODE:
    try {
      THIS->UpdateScrollbar();
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxVarScrollHelperBase::RemoveScrollbar()
  CODE:
    try {
      THIS->RemoveScrollbar();
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxVarScrollHelperBase::SetTargetWindow( wxWindow* target )
  CODE:
    try {
      THIS->SetTargetWindow( target );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

wxWindow*
wxVarScrollHelperBase::GetTargetWindow()
  CODE:
    try {
      RETVAL = THIS->GetTargetWindow();
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

