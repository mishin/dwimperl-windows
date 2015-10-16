#include <exception>
#undef  xsp_constructor_class
#define xsp_constructor_class(c) (c)


#if 1 && defined( XSpp_74da6314_029210 )

// !package: Wx::Event
// !tag: 
// !parser: sub { $_[0] =~ m<^\s*wxPli_(?:Std)?Event\(\s*(\w+)\s*\,> }

#include "cpp/helpers.h"

static wxPliEventDescription PropertyGridEvent_xsp_events[] =
{
    wxPli_Event( EVT_PG_SELECTED, 3, wxEVT_PG_SELECTED )
    wxPli_Event( EVT_PG_CHANGED, 3, wxEVT_PG_CHANGED )
    wxPli_Event( EVT_PG_CHANGING, 3, wxEVT_PG_CHANGING )
    wxPli_Event( EVT_PG_HIGHLIGHTED, 3, wxEVT_PG_HIGHLIGHTED )
    wxPli_Event( EVT_PG_RIGHT_CLICK, 3, wxEVT_PG_RIGHT_CLICK )
    wxPli_Event( EVT_PG_DOUBLE_CLICK, 3, wxEVT_PG_DOUBLE_CLICK )
    wxPli_Event( EVT_PG_ITEM_COLLAPSED, 3, wxEVT_PG_ITEM_COLLAPSED )
    wxPli_Event( EVT_PG_ITEM_EXPANDED, 3, wxEVT_PG_ITEM_EXPANDED )
    wxPli_Event( EVT_PG_LABEL_EDIT_BEGIN, 3, wxEVT_PG_LABEL_EDIT_BEGIN )
    wxPli_Event( EVT_PG_LABEL_EDIT_ENDING, 3, wxEVT_PG_LABEL_EDIT_ENDING )
    wxPli_Event( EVT_PG_COL_BEGIN_DRAG, 3, wxEVT_PG_COL_BEGIN_DRAG )
    wxPli_Event( EVT_PG_COL_DRAGGING, 3, wxEVT_PG_COL_DRAGGING )
    wxPli_Event( EVT_PG_COL_END_DRAG, 3, wxEVT_PG_COL_END_DRAG )
    wxPli_Event( EVT_PG_PAGE_CHANGED, 3, wxEVT_PG_PAGE_CHANGED )
    { 0, 0, 0 }
};

#endif



