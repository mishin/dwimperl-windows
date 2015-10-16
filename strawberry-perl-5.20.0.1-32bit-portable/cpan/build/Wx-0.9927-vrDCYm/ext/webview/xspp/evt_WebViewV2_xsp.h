#include <exception>
#undef  xsp_constructor_class
#define xsp_constructor_class(c) (c)


#if 1 && defined( XSpp_e03480db_086664 )

// !package: Wx::Event
// !tag: webview
// !parser: sub { $_[0] =~ m<^\s*wxPli_(?:Std)?Event\(\s*(\w+)\s*\,> }

#include "cpp/helpers.h"

static wxPliEventDescription WebViewV2_xsp_events[] =
{
    wxPli_Event( EVT_WEB_VIEW_NAVIGATING, 3, wxEVT_COMMAND_WEB_VIEW_NAVIGATING )
    wxPli_Event( EVT_WEB_VIEW_NAVIGATED, 3, wxEVT_COMMAND_WEB_VIEW_NAVIGATED )
    wxPli_Event( EVT_WEB_VIEW_LOADED, 3, wxEVT_COMMAND_WEB_VIEW_LOADED )
    wxPli_Event( EVT_WEB_VIEW_ERROR, 3, wxEVT_COMMAND_WEB_VIEW_ERROR )
    wxPli_Event( EVT_WEB_VIEW_NEWWINDOW, 3, wxEVT_COMMAND_WEB_VIEW_NEWWINDOW )
    wxPli_Event( EVT_WEB_VIEW_TITLE_CHANGED, 3, wxEVT_COMMAND_WEB_VIEW_TITLE_CHANGED )
    { 0, 0, 0 }
};

#endif



