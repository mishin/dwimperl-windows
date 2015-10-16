#include "cpp/v_cback.h"

class wxPlPerlTestAbstractNonObject : public wxPerlTestAbstractNonObject
{
    
    // TODO wxPerl-specific
    WXPLI_DECLARE_V_CBACK();
public:
    SV* GetSelf()
    {
        return m_callback.GetSelf();
    }


    wxPlPerlTestAbstractNonObject( const char* CLASS , const wxString& moniker = wxT("AbstractNonObject") )
        : wxPerlTestAbstractNonObject( moniker ),
          m_callback( "Wx::PlPerlTestAbstractNonObject" )
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
            return wxEmptyString;
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
            return wxPerlTestAbstractNonObject::EchoClassName();
    }

#endif
#if 1
    wxString base_EchoClassName( )
    {
        return wxPerlTestAbstractNonObject::EchoClassName();
    }
#endif
#if 1
    wxString OnlyInBase( )
    // TODO wxPerl-specific
    {
        dTHX;
        if( wxPliFCback( aTHX_ &m_callback, "OnlyInBase" ) )
        {
            wxAutoSV ret( aTHX_ wxPliCCback( aTHX_ &m_callback, G_SCALAR,
                                             NULL  ) );
            return wxPli_sv_2_wxString( aTHX_ ret );
        }
        else
            return wxPerlTestAbstractNonObject::OnlyInBase();
    }

#endif
#if 1
    wxString base_OnlyInBase( )
    {
        return wxPerlTestAbstractNonObject::OnlyInBase();
    }
#endif
};


