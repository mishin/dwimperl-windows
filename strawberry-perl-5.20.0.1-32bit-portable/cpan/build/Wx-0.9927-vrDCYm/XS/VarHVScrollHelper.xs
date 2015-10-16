#include <exception>
#undef  xsp_constructor_class
#define xsp_constructor_class(c) (c)


#############################################################################


## Name:        XS/VarHVScrollHelper.xsp


## Purpose:     XS for Wx::VarHVScrollHelper


## Author:      Mattia Barbon


## Modified by:


## Created:     20/08/2007


## RCS-ID:      $Id: VarHVScrollHelper.xsp 2197 2007-08-21 23:10:35Z mbarbon $


## Copyright:   (c) 2007 Mattia Barbon


## Licence:     This program is free software; you can redistribute it and/or


##              modify it under the same terms as Perl itself


#############################################################################


MODULE=Wx

MODULE=Wx PACKAGE=Wx::VarHVScrollHelper

void
wxVarHVScrollHelper::SetRowColumnCount( size_t rowCount, size_t columnCount )
  CODE:
    try {
      THIS->SetRowColumnCount( rowCount, columnCount );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxVarHVScrollHelper::EnablePhysicalScrolling( bool vscrolling = true, bool hscrolling = true )
  CODE:
    try {
      THIS->EnablePhysicalScrolling( vscrolling, hscrolling );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }


void
wxVarHVScrollHelper::ScrollToRowColumn( ... )
  PPCODE:
    BEGIN_OVERLOAD()
        MATCH_REDISP( wxPliOvl_n_n, ScrollToRowColumnRC )
        MATCH_REDISP( wxPliOvl_wpos, ScrollToRowColumnPosition )
    END_OVERLOAD( Wx::VarHVScrollHelper::ScrollToRowColumn )


bool
wxVarHVScrollHelper::ScrollToRowColumnRC( size_t row, size_t column )
  CODE:
    try {
      RETVAL = THIS->ScrollToRowColumn( row, column );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

bool
wxVarHVScrollHelper::ScrollToRowColumnPosition( wxPosition pos )
  CODE:
    try {
      RETVAL = THIS->ScrollToRowColumn( pos );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL


void
wxVarHVScrollHelper::RefreshRowColumn( ... )
  PPCODE:
    BEGIN_OVERLOAD()
        MATCH_REDISP( wxPliOvl_n_n, RefreshRowColumnRC )
        MATCH_REDISP( wxPliOvl_wpos, RefreshRowColumnPosition )
    END_OVERLOAD( Wx::VarHVScrollHelper::RefreshRowColumn )


void
wxVarHVScrollHelper::RefreshRowColumnRC( size_t row, size_t column )
  CODE:
    try {
      THIS->RefreshRowColumn( row, column );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxVarHVScrollHelper::RefreshRowColumnPosition( wxPosition pos )
  CODE:
    try {
      THIS->RefreshRowColumn( pos );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }


void
wxVarHVScrollHelper::RefreshRowsColumns( ... )
  PPCODE:
    BEGIN_OVERLOAD()
        MATCH_REDISP( wxPliOvl_n_n_n_n, RefreshRowsColumnsRC )
        MATCH_REDISP( wxPliOvl_wpos_wpos, RefreshRowsColumnsPosition )
    END_OVERLOAD( Wx::VarHVScrollHelper::RefreshRowsColumns )


void
wxVarHVScrollHelper::RefreshRowsColumnsRC( size_t fromRow, size_t toRow, size_t fromColumn, size_t toColumn )
  CODE:
    try {
      THIS->RefreshRowsColumns( fromRow, toRow, fromColumn, toColumn );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxVarHVScrollHelper::RefreshRowsColumnsPosition( wxPosition from, wxPosition to )
  CODE:
    try {
      THIS->RefreshRowsColumns( from, to );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }


void
wxVarHVScrollHelper::VirtualHitTest( ... )
  PPCODE:
    BEGIN_OVERLOAD()
        MATCH_REDISP( wxPliOvl_n_n, VirtualHitTestXY )
        MATCH_REDISP( wxPliOvl_wpoi, VirtualHitTestPoint )
    END_OVERLOAD( Wx::VarHVScrollHelper::VirtualHitTest )


wxPosition
wxVarHVScrollHelper::VirtualHitTestXY( wxCoord x, wxCoord y )
  CODE:
    try {
      RETVAL = THIS->VirtualHitTest( x, y );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

wxPosition
wxVarHVScrollHelper::VirtualHitTestPoint( wxPoint pos )
  CODE:
    try {
      RETVAL = THIS->VirtualHitTest( pos );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

wxSize
wxVarHVScrollHelper::GetRowColumnCount()
  CODE:
    try {
      RETVAL = THIS->GetRowColumnCount();
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

wxPosition
wxVarHVScrollHelper::GetVisibleBegin()
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

wxPosition
wxVarHVScrollHelper::GetVisibleEnd()
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


void
wxVarHVScrollHelper::IsVisible( ... )
  PPCODE:
    BEGIN_OVERLOAD()
        MATCH_REDISP( wxPliOvl_n_n, IsVisibleRC )
        MATCH_REDISP( wxPliOvl_wpos, IsVisiblePosition )
    END_OVERLOAD( Wx::VarHVScrollHelper::IsVisible )


bool
wxVarHVScrollHelper::IsVisibleRC( size_t row, size_t column )
  CODE:
    try {
      RETVAL = THIS->IsVisible( row, column );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

bool
wxVarHVScrollHelper::IsVisiblePosition( wxPosition pos )
  CODE:
    try {
      RETVAL = THIS->IsVisible( pos );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

