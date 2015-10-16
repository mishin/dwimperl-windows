#include <exception>
#undef  xsp_constructor_class
#define xsp_constructor_class(c) (c)


#if 1 && defined( XSpp_364791ad_026587 )

#include "cpp/constants.h"

static double IPC_xsp_constant( const char* name, int arg )
{
#define r( n ) \
    if( strEQ( name, #n ) ) \
        return n;

    WX_PL_CONSTANT_INIT();

    // !package: Wx
    // !tag: ipc
    // !parser: sub { $_[0] =~ m<^\s*r\w*\(\s*(\w+)\s*\);\s*(?://(.*))?$> }

//    switch( fl )
//    {
#ifdef XSpp_364791ad_026587
    r( wxIPC_SYLK );
#endif
#ifdef XSpp_364791ad_026587
    r( wxIPC_ENHMETAFILE );
#endif
#ifdef XSpp_364791ad_026587
    r( wxIPC_DIB );
#endif
#ifdef XSpp_364791ad_026587
    r( wxIPC_UTF16TEXT );
#endif
#ifdef XSpp_364791ad_026587
    r( wxIPC_PALETTE );
#endif
#ifdef XSpp_364791ad_026587
    r( wxIPC_INVALID );
#endif
#ifdef XSpp_364791ad_026587
    r( wxIPC_FILENAME );
#endif
#ifdef XSpp_364791ad_026587
    r( wxIPC_UTF8TEXT );
#endif
#ifdef XSpp_364791ad_026587
    r( wxIPC_TIFF );
#endif
#ifdef XSpp_364791ad_026587
    r( wxIPC_TEXT );
#endif
#ifdef XSpp_364791ad_026587
    r( wxIPC_WAVE );
#endif
#ifdef XSpp_364791ad_026587
    r( wxIPC_LOCALE );
#endif
#ifdef XSpp_364791ad_026587
    r( wxIPC_PRIVATE );
#endif
#ifdef XSpp_364791ad_026587
    r( wxIPC_BITMAP );
#endif
#ifdef XSpp_364791ad_026587
    r( wxIPC_METAFILE );
#endif
#ifdef XSpp_364791ad_026587
    r( wxIPC_OEMTEXT );
#endif
#ifdef XSpp_364791ad_026587
    r( wxIPC_RIFF );
#endif
#ifdef XSpp_364791ad_026587
    r( wxIPC_UNICODETEXT );
#endif
#ifdef XSpp_364791ad_026587
    r( wxIPC_DIF );
#endif
#ifdef XSpp_364791ad_026587
    r( wxIPC_UTF32TEXT );
#endif
#ifdef XSpp_364791ad_026587
    r( wxIPC_PENDATA );
#endif
//    default:
//        break;
//    }
#undef r

    WX_PL_CONSTANT_CLEANUP();
}

static wxPlConstants IPC_xsp_module( &IPC_xsp_constant );

#endif



