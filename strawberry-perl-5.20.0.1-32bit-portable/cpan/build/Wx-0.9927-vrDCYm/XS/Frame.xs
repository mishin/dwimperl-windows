#############################################################################
## Name:        XS/Frame.xs
## Purpose:     XS for Wx::Frame
## Author:      Mattia Barbon
## Modified by:
## Created:     29/10/2000
## RCS-ID:      $Id: Frame.xs 3381 2012-09-27 03:14:53Z mdootson $
## Copyright:   (c) 2000-2004, 2006-2007 Mattia Barbon
## Licence:     This program is free software; you can redistribute it and/or
##              modify it under the same terms as Perl itself
#############################################################################

#include <wx/frame.h>
#include <wx/menu.h>
#include <wx/icon.h>
#if wxPERL_USE_MINIFRAME
#include <wx/minifram.h>
#endif
#include "cpp/frame.h"

MODULE=Wx PACKAGE=Wx::Frame

void
new( ... )
  PPCODE:
    BEGIN_OVERLOAD()
        MATCH_VOIDM_REDISP( newDefault )
        MATCH_ANY_REDISP( newFull )
    END_OVERLOAD( "Wx::Frame::new" )

wxFrame*
newDefault( CLASS )
    char* CLASS
  CODE:
    RETVAL = new wxPliFrame( CLASS );
  OUTPUT: RETVAL

wxFrame*
newFull( CLASS, parent, id, title, pos = wxDefaultPosition, size = wxDefaultSize, style = wxDEFAULT_FRAME_STYLE, name = wxFrameNameStr )
    char* CLASS
    wxWindow* parent
    wxWindowID id
    wxString title
    wxPoint pos
    wxSize size
    long style
    wxString name
  CODE:
    RETVAL = new wxPliFrame( CLASS , parent, id, title, pos,
         size, style, name );
  OUTPUT: RETVAL

bool
wxFrame::Create( parent, id, title, pos = wxDefaultPosition, size = wxDefaultSize, style = wxDEFAULT_FRAME_STYLE, name = wxFrameNameStr )
    wxWindow* parent
    wxWindowID id
    wxString title
    wxPoint pos
    wxSize size
    long style
    wxString name

#if WXPERL_W_VERSION_GE( 2, 8, 12 )

void
wxFrame::ProcessCommand( id )
    int id

#endif

wxStatusBar*
wxFrame::CreateStatusBar( number = 1, style = 0, id = wxID_ANY, name = wxEmptyString )
    int number
    long style
    wxWindowID id
    wxString name

wxToolBar*
wxFrame::CreateToolBar( style = wxNO_BORDER | wxTB_HORIZONTAL, id = wxID_ANY, name = wxToolBarNameStr )
    long style
    wxWindowID id
    wxString name

wxPoint*
wxFrame::GetClientAreaOrigin()
  CODE:
    RETVAL = new wxPoint( THIS->GetClientAreaOrigin() );
  OUTPUT:
    RETVAL

wxMenuBar*
wxFrame::GetMenuBar()

wxStatusBar*
wxFrame::GetStatusBar()

int
wxFrame::GetStatusBarPane()

wxString
wxFrame::GetTitle()

wxToolBar*
wxFrame::GetToolBar()

#if defined( __WXMAC__ ) && WXPERL_W_VERSION_GE( 2, 5, 2 ) \
    && WXPERL_W_VERSION_LT( 2, 7, 0 )

void
wxFrame::MacSetMetalAppearance( ismetal )
    bool ismetal

#endif

wxStatusBar*
wxFrame::OnCreateStatusBar( number, style, id, name )
    int number
    long style
    wxWindowID id
    wxString name
  CODE:
    RETVAL = THIS->wxFrame::OnCreateStatusBar( number, style, id, name );
  OUTPUT: RETVAL

void
wxFrame::SendSizeEvent()

void
wxFrame::SetIcon( icon )
    wxIcon* icon
  CODE:
    THIS->SetIcon( *icon );

void
wxFrame::SetIcons( icons )
    wxIconBundle* icons
  C_ARGS: *icons

void
wxFrame::SetMenuBar( menubar )
    wxMenuBar* menubar

void
wxFrame::SetStatusBar( statusBar )
    wxStatusBar* statusBar

void
wxFrame::SetTitle( title )
    wxString title

void
wxFrame::SetToolBar( toolbar )
    wxToolBar* toolbar

void
wxFrame::SetStatusText( text, number = 0 )
    wxString text
    int number

void
wxFrame::SetStatusBarPane( n )
    int n

void
wxFrame::SetStatusWidths( ... )
  PREINIT:
    int* w;
    int i;
  CODE:
    w = new int[items - 1];
    for( i = 0; i < items - 1; ++i )
    {
      w[i] = SvIV( ST( i + 1 ) );
    }
    THIS->SetStatusWidths( items - 1, w );
    delete [] w;

MODULE=Wx PACKAGE=Wx::MiniFrame

#if wxPERL_USE_MINIFRAME

wxMiniFrame*
wxMiniFrame::new( parent, id, title, pos = wxDefaultPosition, size = wxDefaultSize, style = wxDEFAULT_FRAME_STYLE, name = wxFrameNameStr )
    wxWindow* parent
    wxWindowID id
    wxString title
    wxPoint pos
    wxSize size
    long style
    wxString name
  CODE:
    RETVAL = new wxMiniFrame( parent, id, title, pos, size, 
        style, name );
    wxPli_create_evthandler( aTHX_ RETVAL, CLASS );
  OUTPUT:
    RETVAL

#endif