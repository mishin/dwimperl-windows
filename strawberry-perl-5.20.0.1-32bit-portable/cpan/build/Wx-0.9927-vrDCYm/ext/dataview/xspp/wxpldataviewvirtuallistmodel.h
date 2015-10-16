#include "cpp/v_cback.h"

class wxPlDataViewVirtualListModel : public wxDataViewVirtualListModel
{
    
    // TODO wxPerl-specific
    WXPLI_DECLARE_V_CBACK();
public:
    SV* GetSelf()
    {
        return m_callback.GetSelf();
    }


    wxPlDataViewVirtualListModel( const char* CLASS , unsigned int initial_size )
        : wxDataViewVirtualListModel( initial_size ),
          m_callback( "Wx::PlDataViewVirtualListModel" )
    {
        m_callback.SetSelf( wxPli_make_object( this, CLASS ), true );
    }

#if 1
    unsigned int GetColumnCount( ) const
    // TODO wxPerl-specific
    {
        dTHX;
        if( wxPliFCback( aTHX_ &m_callback, "GetColumnCount" ) )
        {
            wxAutoSV ret( aTHX_ wxPliCCback( aTHX_ &m_callback, G_SCALAR,
                                             NULL  ) );
            return SvUV( ret );
        }
        else
            return 0;
    }

#endif
#if 1
    wxString GetColumnType( unsigned int column) const
    // TODO wxPerl-specific
    {
        dTHX;
        if( wxPliFCback( aTHX_ &m_callback, "GetColumnType" ) )
        {
            wxAutoSV ret( aTHX_ wxPliCCback( aTHX_ &m_callback, G_SCALAR,
                                             "I",  column ) );
            return wxPli_sv_2_wxString( aTHX_ ret );
        }
        else
            return wxEmptyString;
    }

#endif
#if 1
    void GetValueByRow( wxVariant& value, unsigned int row, unsigned int col) const
    // TODO wxPerl-specific
    {
        dTHX;
        if( wxPliFCback( aTHX_ &m_callback, "GetValueByRow" ) )
        {
            wxPliCCback( aTHX_ &m_callback, G_SCALAR|G_DISCARD,
                         "qII",  &value, "Wx::Variant", row, col );
        }
        else
            return;
    }

#endif
#if 1
    bool SetValueByRow( const wxVariant& value, unsigned int row, unsigned int col)
    // TODO wxPerl-specific
    {
        dTHX;
        if( wxPliFCback( aTHX_ &m_callback, "SetValueByRow" ) )
        {
            wxAutoSV ret( aTHX_ wxPliCCback( aTHX_ &m_callback, G_SCALAR,
                                             "qII",  &value, "Wx::Variant", row, col ) );
            return SvTRUE( ret );
        }
        else
            return false;
    }

#endif
};


