#include <exception>
#undef  xsp_constructor_class
#define xsp_constructor_class(c) (c)


#if 1 && defined( XSpp_9e3a6f40_023762 )

#include "cpp/constants.h"

static double treelist_h_constant( const char* name, int arg )
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
#ifdef XSpp_9e3a6f40_023762
    r( wxTL_DEFAULT_STYLE );
#endif
#ifdef XSpp_9e3a6f40_023762
    r( wxTL_SINGLE );
#endif
#ifdef XSpp_9e3a6f40_023762
    r( wxTL_STYLE_MASK );
#endif
#ifdef XSpp_9e3a6f40_023762
    r( wxTL_CHECKBOX );
#endif
#ifdef XSpp_9e3a6f40_023762
    r( wxTL_USER_3STATE );
#endif
#ifdef XSpp_9e3a6f40_023762
    r( wxTL_3STATE );
#endif
#ifdef XSpp_9e3a6f40_023762
    r( wxTL_MULTIPLE );
#endif
//    default:
//        break;
//    }
#undef r

    WX_PL_CONSTANT_CLEANUP();
}

static wxPlConstants treelist_h_module( &treelist_h_constant );

#endif



