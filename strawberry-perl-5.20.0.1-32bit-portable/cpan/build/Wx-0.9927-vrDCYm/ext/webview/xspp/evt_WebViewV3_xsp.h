#include <exception>
#undef  xsp_constructor_class
#define xsp_constructor_class(c) (c)


#if 1 && defined( XSpp_bb8a0283_073106 )

// !package: Wx::Event
// !tag: webview
// !parser: sub { $_[0] =~ m<^\s*wxPli_(?:Std)?Event\(\s*(\w+)\s*\,> }

#include "cpp/helpers.h"

static wxPliEventDescription WebViewV3_xsp_events[] =
{
    wxPli_Event( EVT_WEBVIEW_NAVIGATING, 3, wxEVT_COMMAND_WEBVIEW_NAVIGATING )
    wxPli_Event( EVT_WEBVIEW_NAVIGATED, 3, wxEVT_COMMAND_WEBVIEW_NAVIGATED )
    wxPli_Event( EVT_WEBVIEW_LOADED, 3, wxEVT_COMMAND_WEBVIEW_LOADED )
    wxPli_Event( EVT_WEBVIEW_ERROR, 3, wxEVT_COMMAND_WEBVIEW_ERROR )
    wxPli_Event( EVT_WEBVIEW_NEWWINDOW, 3, wxEVT_COMMAND_WEBVIEW_NEWWINDOW )
    wxPli_Event( EVT_WEBVIEW_TITLE_CHANGED, 3, wxEVT_COMMAND_WEBVIEW_TITLE_CHANGED )
    { 0, 0, 0 }
};

#endif



