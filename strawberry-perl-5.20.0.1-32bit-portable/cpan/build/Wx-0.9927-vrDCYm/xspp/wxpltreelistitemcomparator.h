#include "cpp/v_cback.h"

class wxPlTreeListItemComparator : public wxTreeListItemComparator
{
    
    // TODO wxPerl-specific
    WXPLI_DECLARE_V_CBACK();
public:
    SV* GetSelf()
    {
        return m_callback.GetSelf();
    }


    wxPlTreeListItemComparator( const char* CLASS   )
        : wxTreeListItemComparator(  ),
          m_callback( "Wx::PlTreeListItemComparator" )
    {
        m_callback.SetSelf( wxPli_make_object( this, CLASS ), true );
    }

#if defined( XSpp_9e3a6f40_023762 )
    int Compare( wxTreeListCtrl* treelist, unsigned int column, wxTreeListItem first, wxTreeListItem second)
    // TODO wxPerl-specific
    {
        dTHX;
        if( wxPliFCback( aTHX_ &m_callback, "Compare" ) )
        {
            wxAutoSV ret( aTHX_ wxPliCCback( aTHX_ &m_callback, G_SCALAR,
                                             "OIoo",  treelist, column, &first, "Wx::TreeListItem", &second, "Wx::TreeListItem" ) );
            return SvIV( ret );
        }
        else
            return 0;
    }

#endif
};


