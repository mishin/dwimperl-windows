#include <exception>
#undef  xsp_constructor_class
#define xsp_constructor_class(c) (c)


#if 1 && defined( XSpp_18351054_030688 )

// !package: Wx::Event
// !tag: 
// !parser: sub { $_[0] =~ m<^\s*wxPli_(?:Std)?Event\(\s*(\w+)\s*\,> }

#include "cpp/helpers.h"

static wxPliEventDescription RibbonGallery_xsp_events[] =
{
    wxPli_Event( EVT_RIBBONGALLERY_HOVER_CHANGED, 3, wxEVT_COMMAND_RIBBONGALLERY_HOVER_CHANGED )
    wxPli_Event( EVT_RIBBONGALLERY_SELECTED, 3, wxEVT_COMMAND_RIBBONGALLERY_SELECTED )
    wxPli_Event( EVT_RIBBONGALLERY_CLICKED, 3, wxEVT_COMMAND_RIBBONGALLERY_CLICKED )
    { 0, 0, 0 }
};

#endif



