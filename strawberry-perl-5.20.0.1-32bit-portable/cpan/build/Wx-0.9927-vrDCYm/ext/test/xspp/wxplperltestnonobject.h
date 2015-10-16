#include "cpp/v_cback.h"

class wxPlPerlTestNonObject : public wxPerlTestNonObject
{
    
    // TODO wxPerl-specific
    WXPLI_DECLARE_V_CBACK();
public:
    SV* GetSelf()
    {
        return m_callback.GetSelf();
    }


    wxPlPerlTestNonObject( const char* CLASS , const wxString& moniker = wxT("NonObject") )
        : wxPerlTestNonObject( moniker ),
          m_callback( "Wx::PlPerlTestNonObject" )
    {
        m_callback.SetSelf( wxPli_make_object( this, CLASS ), true );
    }

#if 1
    wxString DoGetMessage( ) const
    // TODO wxPerl-specific
    {
        dTHX;
        if( wxPliFCback( aTHX_ &m_callback, "DoGetMessage" ) )
        {
            wxAutoSV ret( aTHX_ wxPliCCback( aTHX_ &m_callback, G_SCALAR,
                                             NULL  ) );
            return wxPli_sv_2_wxString( aTHX_ ret );
        }
        else
            return wxPerlTestNonObject::DoGetMessage();
    }

#endif
#if 1
    wxString base_DoGetMessage( ) const
    {
        return wxPerlTestNonObject::DoGetMessage();
    }
#endif
#if 1
    wxString EchoClassName( )
    // TODO wxPerl-specific
    {
        dTHX;
        if( wxPliFCback( aTHX_ &m_callback, "EchoClassName" ) )
        {
            wxAutoSV ret( aTHX_ wxPliCCback( aTHX_ &m_callback, G_SCALAR,
                                             NULL  ) );
            return wxPli_sv_2_wxString( aTHX_ ret );
        }
        else
            return wxPerlTestNonObject::EchoClassName();
    }

#endif
#if 1
    wxString base_EchoClassName( )
    {
        return wxPerlTestNonObject::EchoClassName();
    }
#endif
};


