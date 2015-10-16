#include <exception>
#undef  xsp_constructor_class
#define xsp_constructor_class(c) (c)


#if 1 && defined( XSpp_512ff718_046208 )

#include "cpp/constants.h"

static double headercol_h_constant( const char* name, int arg )
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
#ifdef XSpp_512ff718_046208
    r( wxCOL_DEFAULT_FLAGS );
#endif
#ifdef XSpp_512ff718_046208
    r( wxCOL_WIDTH_AUTOSIZE );
#endif
#ifdef XSpp_512ff718_046208
    r( wxCOL_RESIZABLE );
#endif
#ifdef XSpp_512ff718_046208
    r( wxCOL_REORDERABLE );
#endif
#ifdef XSpp_512ff718_046208
    r( wxCOL_WIDTH_DEFAULT );
#endif
#ifdef XSpp_512ff718_046208
    r( wxCOL_HIDDEN );
#endif
#ifdef XSpp_512ff718_046208
    r( wxCOL_SORTABLE );
#endif
//    default:
//        break;
//    }
#undef r

    WX_PL_CONSTANT_CLEANUP();
}

static wxPlConstants headercol_h_module( &headercol_h_constant );

#endif



