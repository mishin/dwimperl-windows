/////////////////////////////////////////////////////////////////////////////
// Name:        cpp/timer.h
// Purpose:     C++ wrapper for wxTimer
// Author:      Mattia Barbon
// Modified by:
// Created:     14/02/2001
// RCS-ID:      $Id: timer.h 2057 2007-06-18 23:03:00Z mbarbon $
// Copyright:   (c) 2001-2002, 2004 Mattia Barbon
// Licence:     This program is free software; you can redistribute it and/or
//              modify it under the same terms as Perl itself
/////////////////////////////////////////////////////////////////////////////

class wxPliTimer:public wxTimer
{
    WXPLI_DECLARE_DYNAMIC_CLASS( wxPliTimer );
    WXPLI_DECLARE_V_CBACK();
public:
    wxPliTimer( const char* package );
    wxPliTimer( const char* package, wxEvtHandler* owner, int id );

    DEC_V_CBACK_VOID__VOID( Notify );
};

inline wxPliTimer::wxPliTimer( const char* package )
    :m_callback( "Wx::Timer" )
{
    m_callback.SetSelf( wxPli_make_object( this, package ), true );
}

inline wxPliTimer::wxPliTimer( const char* package, wxEvtHandler* owner,
                               int id )
    :wxTimer( owner, id ),
     m_callback( "Wx::Timer" )
{
    m_callback.SetSelf( wxPli_make_object( this, package ), true );
}

DEF_V_CBACK_VOID__VOID( wxPliTimer, wxTimer, Notify );

WXPLI_IMPLEMENT_DYNAMIC_CLASS( wxPliTimer, wxTimer );

// Local variables: //
// mode: c++ //
// End: //
