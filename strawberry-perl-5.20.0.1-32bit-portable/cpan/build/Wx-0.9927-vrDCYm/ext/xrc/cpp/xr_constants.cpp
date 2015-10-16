/////////////////////////////////////////////////////////////////////////////
// Name:        ext/xrc/cpp/xr_constants.cpp
// Purpose:     constants for XRC
// Author:      Mattia Barbon
// Modified by:
// Created:     04/04/2002
// RCS-ID:      $Id: xr_constants.cpp 3514 2014-03-31 14:07:45Z mdootson $
// Copyright:   (c) 2002-2005 Mattia Barbon
// Licence:     This program is free software; you can redistribute it and/or
//              modify it under the same terms as Perl itself
/////////////////////////////////////////////////////////////////////////////

#include "cpp/constants.h"
#include "wx/xrc/xmlres.h"
#if WXPERL_W_VERSION_GE( 2, 9, 5 )
#include "wx/xml/xml.h"
#endif

double xrc_constant( const char* name, int arg )
{
    // !package: Wx
    // !parser: sub { $_[0] =~ m<^\s*r\w*\(\s*(\w+)\s*\);\s*(?://(.*))?$> }
    // !tag: xrc
#define r( n ) \
    if( strEQ( name, #n ) ) \
        return n;

    WX_PL_CONSTANT_INIT();

    switch( fl )
    {
    case 'X':
        r( wxXRC_USE_LOCALE );
        r( wxXRC_NO_SUBCLASSING );
#if WXPERL_W_VERSION_GE( 2, 5, 3 )
        r( wxXRC_NO_RELOADING );
#endif

        r( wxXML_ELEMENT_NODE );
        r( wxXML_ATTRIBUTE_NODE );
        r( wxXML_TEXT_NODE );
        r( wxXML_CDATA_SECTION_NODE );
        r( wxXML_ENTITY_REF_NODE );
        r( wxXML_ENTITY_NODE );
        r( wxXML_PI_NODE );
        r( wxXML_COMMENT_NODE );
        r( wxXML_DOCUMENT_NODE );
        r( wxXML_DOCUMENT_TYPE_NODE );
        r( wxXML_DOCUMENT_FRAG_NODE );
        r( wxXML_NOTATION_NODE );
        r( wxXML_HTML_DOCUMENT_NODE );
        break;
    }
#undef r

    WX_PL_CONSTANT_CLEANUP();
}

wxPlConstants xrc_module( &xrc_constant );

