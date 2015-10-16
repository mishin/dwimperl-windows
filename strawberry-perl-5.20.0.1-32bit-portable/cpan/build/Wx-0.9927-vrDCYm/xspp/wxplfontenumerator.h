#include "cpp/v_cback.h"

class wxPlFontEnumerator : public wxFontEnumerator
{
    
    // TODO wxPerl-specific
    WXPLI_DECLARE_V_CBACK();
public:
    SV* GetSelf()
    {
        return m_callback.GetSelf();
    }


    wxPlFontEnumerator( const char* CLASS   )
        : wxFontEnumerator(  ),
          m_callback( "Wx::PlFontEnumerator" )
    {
        m_callback.SetSelf( wxPli_make_object( this, CLASS ), true );
    }

#if 1
    bool OnFacename( const wxString& facename)
    // TODO wxPerl-specific
    {
        dTHX;
        if( wxPliFCback( aTHX_ &m_callback, "OnFacename" ) )
        {
            wxAutoSV ret( aTHX_ wxPliCCback( aTHX_ &m_callback, G_SCALAR,
                                             "P",  &facename ) );
            return SvTRUE( ret );
        }
        else
            return wxFontEnumerator::OnFacename(facename);
    }

#endif
#if 1
    bool base_OnFacename( const wxString& facename)
    {
        return wxFontEnumerator::OnFacename(facename);
    }
#endif
#if 1
    bool OnFontEncoding( const wxString& facename, const wxString& encoding)
    // TODO wxPerl-specific
    {
        dTHX;
        if( wxPliFCback( aTHX_ &m_callback, "OnFontEncoding" ) )
        {
            wxAutoSV ret( aTHX_ wxPliCCback( aTHX_ &m_callback, G_SCALAR,
                                             "PP",  &facename, &encoding ) );
            return SvTRUE( ret );
        }
        else
            return wxFontEnumerator::OnFontEncoding(facename, encoding);
    }

#endif
#if 1
    bool base_OnFontEncoding( const wxString& facename, const wxString& encoding)
    {
        return wxFontEnumerator::OnFontEncoding(facename, encoding);
    }
#endif
};


