#include <exception>
#undef  xsp_constructor_class
#define xsp_constructor_class(c) (c)


#if 1 && defined( XSpp_f2ea3b95_017481 )

// !package: Wx::Event
// !tag: 
// !parser: sub { $_[0] =~ m<^\s*wxPli_(?:Std)?Event\(\s*(\w+)\s*\,> }

#include "cpp/helpers.h"

static wxPliEventDescription RibbonButtonBar_xsp_events[] =
{
    wxPli_Event( EVT_RIBBONBUTTONBAR_CLICKED, 3, wxEVT_COMMAND_RIBBONBUTTON_CLICKED )
    wxPli_Event( EVT_RIBBONBUTTONBAR_DROPDOWN_CLICKED, 3, wxEVT_COMMAND_RIBBONBUTTON_DROPDOWN_CLICKED )
    { 0, 0, 0 }
};

#endif



