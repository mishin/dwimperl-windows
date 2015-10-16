#include <exception>
#undef  xsp_constructor_class
#define xsp_constructor_class(c) (c)


#if 1 && defined( XSpp_11434cd6_099901 )

#include "cpp/constants.h"

static double headerctrl_h_constant( const char* name, int arg )
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
#ifdef XSpp_11434cd6_099901
    r( wxHD_ALLOW_HIDE );
#endif
#ifdef XSpp_11434cd6_099901
    r( wxHD_DEFAULT_STYLE );
#endif
#ifdef XSpp_11434cd6_099901
    r( wxHD_ALLOW_REORDER );
#endif
//    default:
//        break;
//    }
#undef r

    WX_PL_CONSTANT_CLEANUP();
}

static wxPlConstants headerctrl_h_module( &headerctrl_h_constant );

#endif



