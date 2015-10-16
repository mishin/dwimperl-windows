#include <exception>
#undef  xsp_constructor_class
#define xsp_constructor_class(c) (c)



#include "cpp/v_cback.h"

class wxPlDataViewIndexListModel : public wxDataViewIndexListModel
{
    WXPLI_DECLARE_V_CBACK();
public:
    wxPlDataViewIndexListModel( const char* package, unsigned int initial_size )
        : wxDataViewIndexListModel( initial_size ),
          m_callback( "Wx::PlDataViewIndexListModel" )
    {
        m_callback.SetSelf( wxPli_make_object( this, package ), true );
    }

//     DEC_V_CBACK_UINT__VOID( GetRowCount );
    DEC_V_CBACK_UINT__VOID_const( GetColumnCount );
    DEC_V_CBACK_WXSTRING__UINT_const( GetColumnType );
    DEC_V_CBACK_VOID__mWXVARIANT_UINT_UINT_const( GetValueByRow );
    DEC_V_CBACK_BOOL__WXVARIANT_UINT_UINT( SetValueByRow );
};

DEF_V_CBACK_UINT__VOID_const_pure( wxPlDataViewIndexListModel,
                                   wxDataViewIndexListModel, GetColumnCount );
DEF_V_CBACK_WXSTRING__UINT_const_pure( wxPlDataViewIndexListModel,
                                       wxDataViewIndexListModel, GetColumnType );
// DEF_V_CBACK_UINT__VOID_pure( wxPlDataViewIndexListModel,
//                              wxDataViewIndexListModel, GetRowCount );
DEF_V_CBACK_VOID__mWXVARIANT_UINT_UINT_const_pure( wxPlDataViewIndexListModel,
                                                   wxDataViewIndexListModel,
                                                   GetValueByRow );
DEF_V_CBACK_BOOL__WXVARIANT_UINT_UINT_pure( wxPlDataViewIndexListModel,
                                            wxDataViewIndexListModel,
                                            SetValueByRow );


