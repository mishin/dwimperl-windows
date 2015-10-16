#include <exception>
#undef  xsp_constructor_class
#define xsp_constructor_class(c) (c)


#if 1 && defined( XSpp_1921ac58_014138 )

#include "cpp/constants.h"

static double richtooltip_h_constant( const char* name, int arg )
{
#define r( n ) \
    if( strEQ( name, #n ) ) \
        return n;

    WX_PL_CONSTANT_INIT();

    // !package: Wx
    // !tag: 
    // !parser: sub { $_[0] =~ m<^\s*r\w*\(\s*(\w+)\s*\);\s*(?://(.*))?$> }

//    switch( fl )
//    {
#ifdef XSpp_1921ac58_014138
    r( wxTipKind_BottomRight );
#endif
#ifdef XSpp_1921ac58_014138
    r( wxTipKind_Top );
#endif
#ifdef XSpp_1921ac58_014138
    r( wxTipKind_Bottom );
#endif
#ifdef XSpp_1921ac58_014138
    r( wxTipKind_BottomLeft );
#endif
#ifdef XSpp_1921ac58_014138
    r( wxTipKind_TopLeft );
#endif
#ifdef XSpp_1921ac58_014138
    r( wxTipKind_Auto );
#endif
#ifdef XSpp_1921ac58_014138
    r( wxTipKind_TopRight );
#endif
#ifdef XSpp_1921ac58_014138
    r( wxTipKind_None );
#endif
//    default:
//        break;
//    }
#undef r

    WX_PL_CONSTANT_CLEANUP();
}

static wxPlConstants richtooltip_h_module( &richtooltip_h_constant );

#endif



