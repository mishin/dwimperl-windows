#include "cpp/v_cback.h"

class wxPlSettableHeaderColumn : public wxSettableHeaderColumn
{
    
    // TODO wxPerl-specific
    WXPLI_DECLARE_V_CBACK();
public:
    SV* GetSelf()
    {
        return m_callback.GetSelf();
    }


    wxPlSettableHeaderColumn( const char* CLASS   )
        : wxSettableHeaderColumn(  ),
          m_callback( "Wx::PlSettableHeaderColumn" )
    {
        m_callback.SetSelf( wxPli_make_object( this, CLASS ), true );
    }

#if defined( XSpp_512ff718_046208 )
    void SetTitle( const wxString& title)
    // TODO wxPerl-specific
    {
        dTHX;
        if( wxPliFCback( aTHX_ &m_callback, "SetTitle" ) )
        {
            wxPliCCback( aTHX_ &m_callback, G_SCALAR|G_DISCARD,
                         "P",  &title );
        }
        else
            return;
    }

#endif
#if defined( XSpp_512ff718_046208 )
    void SetBitmap( const wxBitmap& bitmap)
    // TODO wxPerl-specific
    {
        dTHX;
        if( wxPliFCback( aTHX_ &m_callback, "SetBitmap" ) )
        {
            wxPliCCback( aTHX_ &m_callback, G_SCALAR|G_DISCARD,
                         "O",  &bitmap );
        }
        else
            return;
    }

#endif
#if defined( XSpp_512ff718_046208 )
    void SetWidth( int width)
    // TODO wxPerl-specific
    {
        dTHX;
        if( wxPliFCback( aTHX_ &m_callback, "SetWidth" ) )
        {
            wxPliCCback( aTHX_ &m_callback, G_SCALAR|G_DISCARD,
                         "i",  width );
        }
        else
            return;
    }

#endif
#if defined( XSpp_512ff718_046208 )
    void SetMinWidth( int minWidth)
    // TODO wxPerl-specific
    {
        dTHX;
        if( wxPliFCback( aTHX_ &m_callback, "SetMinWidth" ) )
        {
            wxPliCCback( aTHX_ &m_callback, G_SCALAR|G_DISCARD,
                         "i",  minWidth );
        }
        else
            return;
    }

#endif
#if defined( XSpp_512ff718_046208 )
    void SetAlignment( wxAlignment align)
    // TODO wxPerl-specific
    {
        dTHX;
        if( wxPliFCback( aTHX_ &m_callback, "SetAlignment" ) )
        {
            wxPliCCback( aTHX_ &m_callback, G_SCALAR|G_DISCARD,
                         "i",  align );
        }
        else
            return;
    }

#endif
#if defined( XSpp_512ff718_046208 )
    void SetFlags( int flags)
    // TODO wxPerl-specific
    {
        dTHX;
        if( wxPliFCback( aTHX_ &m_callback, "SetFlags" ) )
        {
            wxPliCCback( aTHX_ &m_callback, G_SCALAR|G_DISCARD,
                         "i",  flags );
        }
        else
            return;
    }

#endif
#if defined( XSpp_512ff718_046465 )
    void SetAsSortKey( bool sort = true)
    // TODO wxPerl-specific
    {
        dTHX;
        if( wxPliFCback( aTHX_ &m_callback, "SetAsSortKey" ) )
        {
            wxPliCCback( aTHX_ &m_callback, G_SCALAR|G_DISCARD,
                         "b",  sort );
        }
        else
            return;
    }

#endif
#if defined( XSpp_512ff718_046208 )
    void SetSortOrder( bool ascending)
    // TODO wxPerl-specific
    {
        dTHX;
        if( wxPliFCback( aTHX_ &m_callback, "SetSortOrder" ) )
        {
            wxPliCCback( aTHX_ &m_callback, G_SCALAR|G_DISCARD,
                         "b",  ascending );
        }
        else
            return;
    }

#endif
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


