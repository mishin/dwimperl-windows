#include <exception>
#undef  xsp_constructor_class
#define xsp_constructor_class(c) (c)


#if 1 && defined( XSpp_bb8a0283_073106 )

#include "cpp/constants.h"

static double WebViewV3_xsp_constant( const char* name, int arg )
{
#define r( n ) \
    if( strEQ( name, #n ) ) \
        return n;

    WX_PL_CONSTANT_INIT();

    // !package: Wx
    // !tag: webview
    // !parser: sub { $_[0] =~ m<^\s*r\w*\(\s*(\w+)\s*\);\s*(?://(.*))?$> }

//    switch( fl )
//    {
#ifdef XSpp_bb8a0283_073106
    r( wxWEBVIEW_ZOOM_TYPE_LAYOUT );
#endif
#ifdef XSpp_bb8a0283_073106
    r( wxWEBVIEW_NAV_ERR_USER_CANCELLED );
#endif
#ifdef XSpp_bb8a0283_073106
    r( wxWEBVIEW_NAV_ERR_NOT_FOUND );
#endif
#ifdef XSpp_bb8a0283_073106
    r( wxWEBVIEW_ZOOM_MEDIUM );
#endif
#ifdef XSpp_bb8a0283_073106
    r( wxWEBVIEW_FIND_WRAP );
#endif
#ifdef XSpp_bb8a0283_073106
    r( wxWEBVIEW_RELOAD_DEFAULT );
#endif
#ifdef XSpp_bb8a0283_073106
    r( wxWEBVIEW_FIND_BACKWARDS );
#endif
#ifdef XSpp_bb8a0283_073106
    r( wxWEBVIEW_ZOOM_TYPE_TEXT );
#endif
#ifdef XSpp_bb8a0283_073106
    r( wxWEBVIEW_NAV_ERR_CERTIFICATE );
#endif
#ifdef XSpp_bb8a0283_073106
    r( wxWEBVIEW_NAV_ERR_CONNECTION );
#endif
#ifdef XSpp_bb8a0283_073106
    r( wxWEBVIEW_ZOOM_SMALL );
#endif
#ifdef XSpp_bb8a0283_073106
    r( wxWEBVIEW_RELOAD_NO_CACHE );
#endif
#ifdef XSpp_bb8a0283_073106
    r( wxWEBVIEW_FIND_HIGHLIGHT_RESULT );
#endif
#ifdef XSpp_bb8a0283_073106
    r( wxWEBVIEW_ZOOM_LARGE );
#endif
#ifdef XSpp_bb8a0283_073106
    r( wxWEBVIEW_ZOOM_LARGEST );
#endif
#ifdef XSpp_bb8a0283_073106
    r( wxWEBVIEW_FIND_DEFAULT );
#endif
#ifdef XSpp_bb8a0283_073106
    r( wxWEBVIEW_NAV_ERR_SECURITY );
#endif
#ifdef XSpp_bb8a0283_073106
    r( wxWEBVIEW_FIND_ENTIRE_WORD );
#endif
#ifdef XSpp_bb8a0283_073106
    r( wxWEBVIEW_ZOOM_TINY );
#endif
#ifdef XSpp_bb8a0283_073106
    r( wxWEBVIEW_FIND_MATCH_CASE );
#endif
#ifdef XSpp_bb8a0283_073106
    r( wxWEBVIEW_NAV_ERR_AUTH );
#endif
#ifdef XSpp_bb8a0283_073106
    r( wxWEBVIEW_NAV_ERR_REQUEST );
#endif
#ifdef XSpp_bb8a0283_073106
    r( wxWEBVIEW_NAV_ERR_OTHER );
#endif
//    default:
//        break;
//    }
#undef r

    WX_PL_CONSTANT_CLEANUP();
}

static wxPlConstants WebViewV3_xsp_module( &WebViewV3_xsp_constant );

#endif



