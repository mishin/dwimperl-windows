#include <exception>
#undef  xsp_constructor_class
#define xsp_constructor_class(c) (c)


#if 1 && defined( XSpp_ac035e40_027472 )

// !package: Wx::Event
// !tag: 
// !parser: sub { $_[0] =~ m<^\s*wxPli_(?:Std)?Event\(\s*(\w+)\s*\,> }

#include "cpp/helpers.h"

static wxPliEventDescription RibbonToolBar_xsp_events[] =
{
    wxPli_Event( EVT_RIBBONTOOLBAR_CLICKED, 3, wxEVT_COMMAND_RIBBONTOOL_CLICKED )
    wxPli_Event( EVT_RIBBONTOOLBAR_DROPDOWN_CLICKED, 3, wxEVT_COMMAND_RIBBONTOOL_DROPDOWN_CLICKED )
    { 0, 0, 0 }
};

#endif



