#include <exception>
#undef  xsp_constructor_class
#define xsp_constructor_class(c) (c)


#if 1 && defined( XSpp_a5cf788c_045095 )

// !package: Wx::Event
// !tag: 
// !parser: sub { $_[0] =~ m<^\s*wxPli_(?:Std)?Event\(\s*(\w+)\s*\,> }

#include "cpp/helpers.h"

static wxPliEventDescription RibbonBar_xsp_events[] =
{
    wxPli_Event( EVT_RIBBONBAR_PAGE_CHANGED, 3, wxEVT_COMMAND_RIBBONBAR_PAGE_CHANGED )
    wxPli_Event( EVT_RIBBONBAR_PAGE_CHANGING, 3, wxEVT_COMMAND_RIBBONBAR_PAGE_CHANGING )
    wxPli_Event( EVT_RIBBONBAR_TAB_MIDDLE_DOWN, 3, wxEVT_COMMAND_RIBBONBAR_TAB_MIDDLE_DOWN )
    wxPli_Event( EVT_RIBBONBAR_TAB_MIDDLE_UP, 3, wxEVT_COMMAND_RIBBONBAR_TAB_MIDDLE_UP )
    wxPli_Event( EVT_RIBBONBAR_TAB_RIGHT_DOWN, 3, wxEVT_COMMAND_RIBBONBAR_TAB_RIGHT_DOWN )
    wxPli_Event( EVT_RIBBONBAR_TAB_RIGHT_UP, 3, wxEVT_COMMAND_RIBBONBAR_TAB_RIGHT_UP )
    wxPli_Event( EVT_RIBBONBAR_TAB_LEFT_DCLICK, 3, wxEVT_COMMAND_RIBBONBAR_TAB_LEFT_DCLICK )
    { 0, 0, 0 }
};

#endif



