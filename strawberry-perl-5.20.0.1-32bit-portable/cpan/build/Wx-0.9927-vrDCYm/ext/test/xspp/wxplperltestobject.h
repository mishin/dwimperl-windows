#include "cpp/v_cback.h"

class wxPlPerlTestObject : public wxPerlTestObject
{
     WXPLI_DECLARE_DYNAMIC_CLASS( wxPlPerlTestObject ); 
    // TODO wxPerl-specific
    WXPLI_DECLARE_V_CBACK();
public:
    SV* GetSelf()
    {
        return m_callback.GetSelf();
    }


    wxPlPerlTestObject( const char* CLASS , const wxString& moniker = wxT("Object") )
        : wxPerlTestObject( moniker ),
          m_callback( "Wx::PerlTestObject" )
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
            return wxPerlTestObject::DoGetMessage();
    }

#endif
#if 1
    wxString base_DoGetMessage( ) const
    {
        return wxPerlTestObject::DoGetMessage();
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
            return wxPerlTestObject::EchoClassName();
    }

#endif
#if 1
    wxString base_EchoClassName( )
    {
        return wxPerlTestObject::EchoClassName();
    }
#endif
};
 WXPLI_IMPLEMENT_DYNAMIC_CLASS( wxPlPerlTestObject, wxPerlTestObject ); 

