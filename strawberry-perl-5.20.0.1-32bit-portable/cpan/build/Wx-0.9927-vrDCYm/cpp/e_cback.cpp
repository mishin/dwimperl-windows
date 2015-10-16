/////////////////////////////////////////////////////////////////////////////
// Name:        cpp/e_cback.cpp
// Purpose:     implementation for e_cback.h
// Author:      Mattia Barbon
// Modified by:
// Created:     29/10/2000
// RCS-ID:      $Id: e_cback.cpp 3374 2012-09-26 11:37:03Z mdootson $
// Copyright:   (c) 2000-2002, 2004-2008 Mattia Barbon
// Licence:     This program is free software; you can redistribute it and/or
//              modify it under the same terms as Perl itself
/////////////////////////////////////////////////////////////////////////////

wxPliEventCallback::wxPliEventCallback( SV* method, SV* self ) 
{
    dTHX;
    m_method = method;
    SvREFCNT_inc( m_method );
    m_self = self;
    SvREFCNT_inc( m_self );
    m_is_method = !SvROK( m_method ) || !SvRV( m_method );
}

wxPliEventCallback::~wxPliEventCallback() 
{
    dTHX;
    SvREFCNT_dec( m_method );
    SvREFCNT_dec( m_self );
}

void wxPliEventCallback::Handler( wxEvent& event ) 
{
    wxPliEventCallback* This = (wxPliEventCallback*) event.m_callbackUserData;

    dTHX;
    dSP;

    ENTER;
    SAVETMPS;

    {
        // similar to wxPli_object_2_sv
        wxPliGuard guard;
        SV* e = 0;
        SV* rv = 0;
        wxClassInfo *ci = event.GetClassInfo();
        const wxChar* classname = ci->GetClassName();

#if wxUSE_UNICODE
        if( wcsncmp( classname, wxT("wxPl"), 4 ) == 0 ) 
#else
        if( strnEQ( classname, "wxPl", 4 ) ) 
#endif
        {
            wxPliClassInfo* cci = (wxPliClassInfo*)ci;
            wxPliSelfRef* sr = cci->m_func( &event );
        
            if( sr )
            {
                // this needs to have the refcount incremented, otherwise
                // the refcount will be decremented one time too much when
                // exiting from the handler
                e = sv_2mortal( newRV_inc( SvRV( sr->m_self ) ) );
            }
        }

        if( !e )
        {
            char buffer[WXPL_BUF_SIZE];
            const char* CLASS = wxPli_cpp_class_2_perl( classname, buffer );

            e = sv_newmortal();
            sv_setref_pv( e, CHAR_P CLASS, &event );
            rv = SvRV( e );
            // corner case: prevent destruction if referrer is
            // destroyed
            SvREFCNT_inc( rv );
            sv_2mortal( rv );
            guard.SetSV( rv );
            wxPli_thread_sv_register( aTHX_ CLASS, &event, e );
        }

        PUSHMARK( SP );
        XPUSHs( This->m_self );
        XPUSHs( e );
        PUTBACK;

        if( This->m_is_method )
        {
            call_method( SvPV_nolen( This->m_method ), G_EVAL|G_VOID|G_DISCARD );
        }
        else
        {
            call_sv( This->m_method, G_EVAL|G_VOID|G_DISCARD );
        }

        SPAGAIN;
    }

    if( SvTRUE( ERRSV ) )
    {
        croak( Nullch );
    }

    PUTBACK;
    FREETMPS;
    LEAVE;
}

// Local variables: //
// mode: c++ //
// End: //
