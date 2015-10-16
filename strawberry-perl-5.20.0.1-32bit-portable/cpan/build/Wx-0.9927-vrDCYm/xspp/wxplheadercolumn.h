#include "cpp/v_cback.h"

class wxPlHeaderColumn : public wxHeaderColumn
{
    
    // TODO wxPerl-specific
    WXPLI_DECLARE_V_CBACK();
public:
    SV* GetSelf()
    {
        return m_callback.GetSelf();
    }


    wxPlHeaderColumn( const char* CLASS   )
        : wxHeaderColumn(  ),
          m_callback( "Wx::PlHeaderColumn" )
    {
        m_callback.SetSelf( wxPli_make_object( this, CLASS ), true );
    }

#if defined( XSpp_512ff718_046208 )
    wxString GetTitle( ) const
    // TODO wxPerl-specific
    {
        dTHX;
        if( wxPliFCback( aTHX_ &m_callback, "GetTitle" ) )
        {
            wxAutoSV ret( aTHX_ wxPliCCback( aTHX_ &m_callback, G_SCALAR,
                                             NULL  ) );
            return wxPli_sv_2_wxString( aTHX_ ret );
        }
        else
            return wxEmptyString;
    }

#endif
#if defined( XSpp_512ff718_046208 )
    wxBitmap GetBitmap( ) const
    // TODO wxPerl-specific
    {
        dTHX;
        if( wxPliFCback( aTHX_ &m_callback, "GetBitmap" ) )
        {
            wxAutoSV ret( aTHX_ wxPliCCback( aTHX_ &m_callback, G_SCALAR,
                                             NULL  ) );
            return *(wxBitmap*)wxPli_sv_2_object( aTHX_ ret, "Wx::Bitmap" );
        }
        else
            return wxBitmap();
    }

#endif
#if defined( XSpp_512ff718_046208 )
    int GetWidth( ) const
    // TODO wxPerl-specific
    {
        dTHX;
        if( wxPliFCback( aTHX_ &m_callback, "GetWidth" ) )
        {
            wxAutoSV ret( aTHX_ wxPliCCback( aTHX_ &m_callback, G_SCALAR,
                                             NULL  ) );
            return SvIV( ret );
        }
        else
            return 0;
    }

#endif
#if defined( XSpp_512ff718_046208 )
    int GetMinWidth( ) const
    // TODO wxPerl-specific
    {
        dTHX;
        if( wxPliFCback( aTHX_ &m_callback, "GetMinWidth" ) )
        {
            wxAutoSV ret( aTHX_ wxPliCCback( aTHX_ &m_callback, G_SCALAR,
                                             NULL  ) );
            return SvIV( ret );
        }
        else
            return 0;
    }

#endif
#if defined( XSpp_512ff718_046208 )
    wxAlignment GetAlignment( ) const
    // TODO wxPerl-specific
    {
        dTHX;
        if( wxPliFCback( aTHX_ &m_callback, "GetAlignment" ) )
        {
            wxAutoSV ret( aTHX_ wxPliCCback( aTHX_ &m_callback, G_SCALAR,
                                             NULL  ) );
            return (wxAlignment)SvIV( ret );
        }
        else
            return (wxAlignment)0;
    }

#endif
#if defined( XSpp_512ff718_046208 )
    int GetFlags( ) const
    // TODO wxPerl-specific
    {
        dTHX;
        if( wxPliFCback( aTHX_ &m_callback, "GetFlags" ) )
        {
            wxAutoSV ret( aTHX_ wxPliCCback( aTHX_ &m_callback, G_SCALAR,
                                             NULL  ) );
            return SvIV( ret );
        }
        else
            return 0;
    }

#endif
#if defined( XSpp_512ff718_046208 )
    bool IsSortKey( ) const
    // TODO wxPerl-specific
    {
        dTHX;
        if( wxPliFCback( aTHX_ &m_callback, "IsSortKey" ) )
        {
            wxAutoSV ret( aTHX_ wxPliCCback( aTHX_ &m_callback, G_SCALAR,
                                             NULL  ) );
            return SvTRUE( ret );
        }
        else
            return false;
    }

#endif
#if defined( XSpp_512ff718_046208 )
    bool IsSortOrderAscending( ) const
    // TODO wxPerl-specific
    {
        dTHX;
        if( wxPliFCback( aTHX_ &m_callback, "IsSortOrderAscending" ) )
        {
            wxAutoSV ret( aTHX_ wxPliCCback( aTHX_ &m_callback, G_SCALAR,
                                             NULL  ) );
            return SvTRUE( ret );
        }
        else
            return false;
    }

#endif
};


