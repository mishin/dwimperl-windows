#############################################################################
## Name:        ext/grid/XS/GridEvent.xs
## Purpose:     XS for Wx::Grid*Event
## Author:      Mattia Barbon
## Modified by:
## Created:     08/12/2001
## RCS-ID:      $Id: GridEvent.xs 2503 2008-11-06 00:23:45Z mbarbon $
## Copyright:   (c) 2001-2004, 2008 Mattia Barbon
## Licence:     This program is free software; you can redistribute it and/or
##              modify it under the same terms as Perl itself
#############################################################################

MODULE=Wx PACKAGE=Wx::GridEvent

#if 0

wxGridEvent*
wxGridEvent::new( id, type, obj, row = -1, col = -1, x = -1, y = -1, sel = true, control = true, shift = true, alt = true, meta = true )
    int id
    wxEventType type
    wxObject* obj
    int row
    int col
    int x
    int y
    bool sel
    bool control
    bool shift
    bool alt
    bool meta

#endif

int
wxGridEvent::GetRow()

int
wxGridEvent::GetCol()

wxPoint*
wxGridEvent::GetPosition()
  CODE:
    RETVAL = new wxPoint( THIS->GetPosition() );
  OUTPUT:
    RETVAL

bool
wxGridEvent::Selecting()

bool
wxGridEvent::ControlDown()

bool
wxGridEvent::AltDown()

bool
wxGridEvent::MetaDown()

bool
wxGridEvent::ShiftDown()

MODULE=Wx PACKAGE=Wx::GridSizeEvent

#if 0

wxGridSizeEvent*
wxGridSizeEvent::new( id, type, obj, rowOrCol = -1, x = -1, y = -1, control = true, shift = true, alt = true, meta = true )
    int id
    wxEventType type
    wxObject* obj
    int rowOrCol
    int x
    int y
    bool control
    bool shift
    bool alt
    bool meta

#endif

int
wxGridSizeEvent::GetRowOrCol()

wxPoint*
wxGridSizeEvent::GetPosition()
  CODE:
    RETVAL = new wxPoint( THIS->GetPosition() );
  OUTPUT:
    RETVAL

bool
wxGridSizeEvent::ControlDown()

bool
wxGridSizeEvent::AltDown()

bool
wxGridSizeEvent::MetaDown()

bool
wxGridSizeEvent::ShiftDown()

MODULE=Wx PACKAGE=Wx::GridRangeSelectEvent

#if 0

wxGridRangeSelectEvent*
wxGridRangeSelectEvent::new( id, type, obj, topLeft, bottomRight, sel = true, control = false, shift = false, alt = false, meta = false )
    int id
    wxEventType type
    wxObject* obj
    wxGridCellCoords* topLeft
    wxGridCellCoords* bottomRight
    bool sel
    bool control
    bool shift
    bool alt
    bool meta
  CODE:
    RETVAL = new wxGridRangeSelectEvent( id, type, obj, *topLeft,
        *bottomRight, sel, control, shift, alt, meta );
  OUTPUT:
    RETVAL

#endif

wxGridCellCoords*
wxGridRangeSelectEvent::GetTopLeftCoords()
  CODE:
    RETVAL = new wxGridCellCoords( THIS->GetTopLeftCoords() );
  OUTPUT:
    RETVAL

wxGridCellCoords*
wxGridRangeSelectEvent::GetBottomRightCoords()
  CODE:
    RETVAL = new wxGridCellCoords( THIS->GetBottomRightCoords() );
  OUTPUT:
    RETVAL

int
wxGridRangeSelectEvent::GetTopRow()

int
wxGridRangeSelectEvent::GetBottomRow()

int
wxGridRangeSelectEvent::GetLeftCol()

int
wxGridRangeSelectEvent::GetRightCol()

bool
wxGridRangeSelectEvent::Selecting()

bool
wxGridRangeSelectEvent::ControlDown()

bool
wxGridRangeSelectEvent::MetaDown()

bool
wxGridRangeSelectEvent::AltDown()

bool
wxGridRangeSelectEvent::ShiftDown()

MODULE=Wx PACKAGE=Wx::GridEditorCreatedEvent

wxGridEditorCreatedEvent*
wxGridEditorCreatedEvent::new( id, type, obj, row, col, ctrl )
    int id
    wxEventType type
    wxObject* obj
    int row
    int col
    wxControl* ctrl

int
wxGridEditorCreatedEvent::GetRow()

int
wxGridEditorCreatedEvent::GetCol()

wxControl*
wxGridEditorCreatedEvent::GetControl()

void
wxGridEditorCreatedEvent::SetRow( row )
    int row

void
wxGridEditorCreatedEvent::SetCol( col )
    int col

void
wxGridEditorCreatedEvent::SetControl( control )
    wxControl* control
