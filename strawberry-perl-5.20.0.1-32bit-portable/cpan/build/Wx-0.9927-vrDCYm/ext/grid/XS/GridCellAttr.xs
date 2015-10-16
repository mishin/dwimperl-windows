#############################################################################
## Name:        ext/grid/XS/GridCellAttr.xs
## Purpose:     XS for Wx::GridCellAttr
## Author:      Mattia Barbon
## Modified by:
## Created:     05/12/2001
## RCS-ID:      $Id: GridCellAttr.xs 2402 2008-05-19 21:43:32Z mbarbon $
## Copyright:   (c) 2001-2002, 2004, 2006-2008 Mattia Barbon
## Licence:     This program is free software; you can redistribute it and/or
##              modify it under the same terms as Perl itself
#############################################################################

MODULE=Wx PACKAGE=Wx::GridCellAttr

wxGridCellAttr*
wxGridCellAttr::new()

static void
wxGridCellAttr::CLONE()
  CODE:
    wxPli_thread_sv_clone( aTHX_ CLASS, (wxPliCloneSV)wxPli_detach_object );

## // thread OK
void
wxGridCellAttr::DESTROY()
  CODE:
    wxPli_thread_sv_unregister( aTHX_ wxPli_get_class( aTHX_ ST(0) ),
                                SvRV( ST(0) ), ST(0) );
    if( THIS )
        THIS->DecRef();

void
wxGridCellAttr::IncRef()

void
wxGridCellAttr::DecRef()

void
wxGridCellAttr::SetTextColour( colour )
    wxColour colour

void
wxGridCellAttr::SetBackgroundColour( colour )
    wxColour colour

void
wxGridCellAttr::SetFont( font )
    wxFont* font
  CODE:
    THIS->SetFont( *font );

void
wxGridCellAttr::SetAlignment( hAlign, vAlign )
    int hAlign
    int vAlign

void
wxGridCellAttr::SetReadOnly( isReadOnly = true )
    bool isReadOnly

bool
wxGridCellAttr::HasTextColour()

bool
wxGridCellAttr::HasBackgroundColour()

bool
wxGridCellAttr::HasFont()

bool
wxGridCellAttr::HasAlignment()

bool
wxGridCellAttr::HasRenderer()

bool
wxGridCellAttr::HasEditor()

wxColour*
wxGridCellAttr::GetTextColour()
  CODE:
    RETVAL = new wxColour( THIS->GetTextColour() );
  OUTPUT:
    RETVAL

wxColour*
wxGridCellAttr::GetBackgroundColour()
  CODE:
    RETVAL = new wxColour( THIS->GetBackgroundColour() );
  OUTPUT:
    RETVAL

wxGridCellEditor*
wxGridCellAttr::GetEditor( grid, row, col )
    wxGrid* grid
    int row
    int col
  CODE:
    RETVAL = THIS->GetEditor( grid, row, col );
  OUTPUT:
    RETVAL

wxGridCellRenderer*
wxGridCellAttr::GetRenderer( grid, row, col )
    wxGrid* grid
    int row
    int col
  CODE:
    RETVAL = THIS->GetRenderer( grid, row, col );
  OUTPUT:
    RETVAL

wxFont*
wxGridCellAttr::GetFont()
  CODE:
    RETVAL = new wxFont( THIS->GetFont() );
  OUTPUT:
    RETVAL

void
wxGridCellAttr::GetAlignment()
  PREINIT:
    int x, y;
  PPCODE:
    THIS->GetAlignment( &x, &y );
    EXTEND( SP, 2 );
    PUSHs( sv_2mortal( newSViv( x ) ) );
    PUSHs( sv_2mortal( newSViv( y ) ) );

bool
wxGridCellAttr::IsReadOnly()

void
wxGridCellAttr::SetDefAttr( defAttr )
    wxGridCellAttr* defAttr

void
wxGridCellAttr::SetEditor( editor )
    wxGridCellEditor* editor
  CODE:
    editor->IncRef();
    THIS->SetEditor( editor );

void
wxGridCellAttr::SetRenderer( renderer )
    wxGridCellRenderer* renderer
  CODE:
    renderer->IncRef();
    THIS->SetRenderer( renderer );
    
bool
wxGridCellAttr::GetOverflow()

void
wxGridCellAttr::SetOverflow( allow = true )
    bool allow

