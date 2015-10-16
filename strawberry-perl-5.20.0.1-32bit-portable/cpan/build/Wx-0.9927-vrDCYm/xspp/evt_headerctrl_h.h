#include <exception>
#undef  xsp_constructor_class
#define xsp_constructor_class(c) (c)


#if 1 && defined( XSpp_11434cd6_099901 )

// !package: Wx::Event
// !tag: 
// !parser: sub { $_[0] =~ m<^\s*wxPli_(?:Std)?Event\(\s*(\w+)\s*\,> }

#include "cpp/helpers.h"

static wxPliEventDescription headerctrl_h_events[] =
{
    wxPli_Event( EVT_HEADER_CLICK, 3, wxEVT_COMMAND_HEADER_CLICK )
    wxPli_Event( EVT_HEADER_RIGHT_CLICK, 3, wxEVT_COMMAND_HEADER_RIGHT_CLICK )
    wxPli_Event( EVT_HEADER_MIDDLE_CLICK, 3, wxEVT_COMMAND_HEADER_MIDDLE_CLICK )
    wxPli_Event( EVT_HEADER_DCLICK, 3, wxEVT_COMMAND_HEADER_DCLICK )
    wxPli_Event( EVT_HEADER_RIGHT_DCLICK, 3, wxEVT_COMMAND_HEADER_MIDDLE_DCLICK )
    wxPli_Event( EVT_HEADER_MIDDLE_DCLICK, 3, wxEVT_COMMAND_HEADER_MIDDLE_DCLICK )
    wxPli_Event( EVT_HEADER_SEPARATOR_DCLICK, 3, wxEVT_COMMAND_HEADER_SEPARATOR_DCLICK )
    wxPli_Event( EVT_HEADER_BEGIN_RESIZE, 3, wxEVT_COMMAND_HEADER_BEGIN_RESIZE )
    wxPli_Event( EVT_HEADER_RESIZING, 3, wxEVT_COMMAND_HEADER_RESIZING )
    wxPli_Event( EVT_HEADER_END_RESIZE, 3, wxEVT_COMMAND_HEADER_END_RESIZE )
    wxPli_Event( EVT_HEADER_BEGIN_REORDER, 3, wxEVT_COMMAND_HEADER_BEGIN_REORDER )
    wxPli_Event( EVT_HEADER_END_REORDER, 3, wxEVT_COMMAND_HEADER_END_REORDER )
    wxPli_Event( EVT_HEADER_DRAGGING_CANCELLED, 3, wxEVT_COMMAND_HEADER_DRAGGING_CANCELLED )
    { 0, 0, 0 }
};

#endif



