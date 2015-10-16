#include "cpp/v_cback.h"

class wxPlHeaderCtrl : public wxHeaderCtrl
{
    
    // TODO wxPerl-specific
    WXPLI_DECLARE_V_CBACK();
public:
    SV* GetSelf()
    {
        return m_callback.GetSelf();
    }


    wxPlHeaderCtrl( const char* CLASS   )
        : wxHeaderCtrl(  ),
          m_callback( "Wx::PlHeaderCtrl" )
    {
        m_callback.SetSelf( wxPli_make_object( this, CLASS ), true );
    }

    wxPlHeaderCtrl( const char* CLASS , wxWindow* parent, wxWindowID winid = wxID_ANY, const wxPoint& pos = wxDefaultPosition, const wxSize& size = wxDefaultSize, long style = wxHD_DEFAULT_STYLE, const wxString& name = wxHeaderCtrlNameStr )
        : wxHeaderCtrl( parent, winid, pos, size, style, name ),
          m_callback( "Wx::PlHeaderCtrl" )
    {
        m_callback.SetSelf( wxPli_make_object( this, CLASS ), true );
    }

#if defined( XSpp_11434cd6_099901 )
    const wxHeaderColumn& GetColumn( unsigned int idx) const
    // TODO wxPerl-specific
    {
        dTHX;
        if( wxPliFCback( aTHX_ &m_callback, "GetColumn" ) )
        {
            wxAutoSV ret( aTHX_ wxPliCCback( aTHX_ &m_callback, G_SCALAR,
                                             "I",  idx ) );
            return *(wxHeaderColumn*)wxPli_sv_2_object( aTHX_ ret, "Wx::HeaderColumn" );
        }
        else
            croak( "Must override" );;
    }

#endif
};


