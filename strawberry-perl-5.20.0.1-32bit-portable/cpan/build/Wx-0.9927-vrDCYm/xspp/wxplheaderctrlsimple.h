#include "cpp/v_cback.h"

class wxPlHeaderCtrlSimple : public wxHeaderCtrlSimple
{
    
    // TODO wxPerl-specific
    WXPLI_DECLARE_V_CBACK();
public:
    SV* GetSelf()
    {
        return m_callback.GetSelf();
    }


    wxPlHeaderCtrlSimple( const char* CLASS   )
        : wxHeaderCtrlSimple(  ),
          m_callback( "Wx::HeaderCtrlSimple" )
    {
        m_callback.SetSelf( wxPli_make_object( this, CLASS ), true );
    }

    wxPlHeaderCtrlSimple( const char* CLASS , wxWindow* parent, wxWindowID winid = wxID_ANY, const wxPoint& pos = wxDefaultPosition, const wxSize& size = wxDefaultSize, long style = wxHD_DEFAULT_STYLE, const wxString& name = wxHeaderCtrlNameStr )
        : wxHeaderCtrlSimple( parent, winid, pos, size, style, name ),
          m_callback( "Wx::HeaderCtrlSimple" )
    {
        m_callback.SetSelf( wxPli_make_object( this, CLASS ), true );
    }

#if defined( XSpp_11434cd6_099901 )
    int GetBestFittingWidth( unsigned int idx) const
    // TODO wxPerl-specific
    {
        dTHX;
        if( wxPliFCback( aTHX_ &m_callback, "GetBestFittingWidth" ) )
        {
            wxAutoSV ret( aTHX_ wxPliCCback( aTHX_ &m_callback, G_SCALAR,
                                             "I",  idx ) );
            return SvIV( ret );
        }
        else
            return wxHeaderCtrlSimple::GetBestFittingWidth(idx);
    }

#endif
#if defined( XSpp_11434cd6_099901 )
    int base_GetBestFittingWidth( unsigned int idx) const
    {
        return wxHeaderCtrlSimple::GetBestFittingWidth(idx);
    }
#endif
};


