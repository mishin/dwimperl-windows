#include "cpp/v_cback.h"

class wxPlPerlTestAbstractObject : public wxPerlTestAbstractObject
{
     WXPLI_DECLARE_DYNAMIC_CLASS( wxPlPerlTestAbstractObject ); 
    // TODO wxPerl-specific
    WXPLI_DECLARE_V_CBACK();
public:
    SV* GetSelf()
    {
        return m_callback.GetSelf();
    }


    wxPlPerlTestAbstractObject( const char* CLASS , const wxString& moniker = wxT("AbstractObject") )
        : wxPerlTestAbstractObject( moniker ),
          m_callback( "Wx::PlPerlTestAbstractObject" )
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
            return wxPerlTestAbstractObject::EchoClassName();
    }

#endif
#if 1
    wxString base_EchoClassName( )
    {
        return wxPerlTestAbstractObject::EchoClassName();
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
            return wxPerlTestAbstractObject::OnlyInBase();
    }

#endif
#if 1
    wxString base_OnlyInBase( )
    {
        return wxPerlTestAbstractObject::OnlyInBase();
    }
#endif
};
 WXPLI_IMPLEMENT_DYNAMIC_CLASS( wxPlPerlTestAbstractObject, wxPerlTestAbstractObject ); 

