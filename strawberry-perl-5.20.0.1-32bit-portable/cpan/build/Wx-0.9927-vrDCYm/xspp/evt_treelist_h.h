#include <exception>
#undef  xsp_constructor_class
#define xsp_constructor_class(c) (c)


#if 1 && defined( XSpp_9e3a6f40_023762 )

// !package: Wx::Event
// !tag: 
// !parser: sub { $_[0] =~ m<^\s*wxPli_(?:Std)?Event\(\s*(\w+)\s*\,> }

#include "cpp/helpers.h"

static wxPliEventDescription treelist_h_events[] =
{
    wxPli_Event( EVT_TREELIST_SELECTION_CHANGED, 3, wxEVT_COMMAND_TREELIST_SELECTION_CHANGED )
    wxPli_Event( EVT_TREELIST_ITEM_EXPANDING, 3, wxEVT_COMMAND_TREELIST_ITEM_EXPANDING )
    wxPli_Event( EVT_TREELIST_ITEM_EXPANDED, 3, wxEVT_COMMAND_TREELIST_ITEM_EXPANDED )
    wxPli_Event( EVT_TREELIST_ITEM_CHECKED, 3, wxEVT_COMMAND_TREELIST_ITEM_CHECKED )
    wxPli_Event( EVT_TREELIST_ITEM_ACTIVATED, 3, wxEVT_COMMAND_TREELIST_ITEM_ACTIVATED )
    wxPli_Event( EVT_TREELIST_ITEM_CONTEXT_MENU, 3, wxEVT_COMMAND_TREELIST_ITEM_CONTEXT_MENU )
    wxPli_Event( EVT_TREELIST_COLUMN_SORTED, 3, wxEVT_COMMAND_TREELIST_COLUMN_SORTED )
    { 0, 0, 0 }
};

#endif



