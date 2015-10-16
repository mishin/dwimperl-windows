/////////////////////////////////////////////////////////////////////////////
// Name:        ext/socket/cpp/sk_constants.cpp
// Purpose:     constants for Wx::Socket
// Author:      Graciliano M. P.
// Created:     27/02/2003
// RCS-ID:      $Id: sk_constants.cpp 2517 2008-11-30 20:14:22Z mbarbon $
// Copyright:   (c) 2003, 2007 Graciliano M. P.
// Licence:     This program is free software; you can redistribute it and/or
//              modify it under the same terms as Perl itself
/////////////////////////////////////////////////////////////////////////////

#include "cpp/constants.h"

double socket_constant( const char* name, int arg )
{
    // !package: Wx
    // !parser: sub { $_[0] =~ m<^\s*r\w*\(\s*(\w+)\s*\);\s*(?://(.*))?$> }
    // !tag: socket
#define r( n ) \
    if( strEQ( name, #n ) ) \
        return n;

    WX_PL_CONSTANT_INIT();

    switch( fl )
    {
	case 'E':
        r( wxEVT_SOCKET );
	case 'S':
        r( wxSOCKET_BLOCK );
        r( wxSOCKET_NONE );
        r( wxSOCKET_NOWAIT );
        r( wxSOCKET_WAITALL );
        r( wxSOCKET_REUSEADDR );
#if WXPERL_W_VERSION_GE( 2, 9, 0 )
        r( wxSOCKET_NOBIND );
        r( wxSOCKET_BROADCAST );
#endif
        
        r( wxSOCKET_CONNECTION_FLAG );
        r( wxSOCKET_INPUT_FLAG );
        r( wxSOCKET_LOST_FLAG );
        r( wxSOCKET_OUTPUT_FLAG );
        
        /// wxSocketNotify
        r( wxSOCKET_INPUT );
        r( wxSOCKET_OUTPUT );
        r( wxSOCKET_CONNECTION );
        r( wxSOCKET_LOST );
        
        /// wxSocketType:
        r( wxSOCKET_UNINIT );
        r( wxSOCKET_CLIENT );
        r( wxSOCKET_SERVER );
        r( wxSOCKET_BASE );
        r( wxSOCKET_DATAGRAM );
        
        /// wxSocketError
        r( wxSOCKET_NOERROR );
        r( wxSOCKET_INVOP );
        r( wxSOCKET_IOERR );
        r( wxSOCKET_INVADDR );
        r( wxSOCKET_INVSOCK );                
        r( wxSOCKET_NOHOST );
        r( wxSOCKET_INVPORT );
        r( wxSOCKET_WOULDBLOCK );
        r( wxSOCKET_TIMEDOUT );
        r( wxSOCKET_MEMERR );
    break;
    }
#undef r

    WX_PL_CONSTANT_CLEANUP();
}

wxPlConstants socket_module( &socket_constant );


