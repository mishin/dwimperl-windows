#include <exception>
#undef  xsp_constructor_class
#define xsp_constructor_class(c) (c)




#include <wx/combo.h>
#include "cpp/v_cback.h"

// wxSize METH( int, int, int )
#define DEC_V_CBACK_WXSIZE__INT_INT_INT( METHOD ) \
    DEC_V_CBACK_ANY__INT_INT_INT_( wxSize, METHOD, wxPli_NOCONST )

#define DEC_V_CBACK_WXSIZE__INT_INT_INT_const( METHOD ) \
    DEC_V_CBACK_ANY__INT_INT_INT_( wxSize, METHOD, wxPli_CONST )

#define DEF_V_CBACK_WXSIZE__INT_INT_INT( CLASS, BASE, METHOD ) \
    DEF_V_CBACK_ANY__INT_INT_INT_( wxSize, wxPli_sv_2_wxsize( aTHX_ ret ), CLASS, return BASE::METHOD(p1,p2,p3), METHOD, wxPli_NOCONST )

#define DEF_V_CBACK_WXSIZE__INT_INT_INT_pure( CLASS, BASE, METHOD ) \
    DEF_V_CBACK_ANY__INT_INT_INT_( wxSize, wxPli_sv_2_wxsize( aTHX_ ret ), CLASS, return wxSize(), METHOD, wxPli_NOCONST )

#define DEF_V_CBACK_WXSIZE__INT_INT_INT_const( CLASS, BASE, METHOD ) \
    DEF_V_CBACK_ANY__INT_INT_INT_( wxSize, wxPli_sv_2_wxsize( aTHX_ ret ), CLASS, return BASE::METHOD(p1,p2,p3), METHOD, wxPli_CONST )

// void METH(wxDC&, const wxRect&)
#define DEC_V_CBACK_VOID__WXDC_WXRECT( METHOD ) \
    void METHOD( wxDC& p1, const wxRect& p2 )

#define DEF_V_CBACK_VOID__WXDC_WXRECT( CLASS, BASE, METHOD )                 \
    void CLASS::METHOD( wxDC& p1, const wxRect& p2 )                         \
    {                                                                        \
        dTHX;                                                                \
        if( wxPliFCback( aTHX_ &m_callback, #METHOD ) )                      \
        {                                                                    \
            wxAutoSV ret( aTHX_ wxPliCCback( aTHX_ &m_callback,              \
                                             G_SCALAR|G_DISCARD,             \
                                             "QoL", &p1,                     \
                                             new wxRect( p2 ), "Wx::Rect") );\
            return;                                                          \
        } else                                                               \
            return;                                                          \
    }
// void METH(wxKeyEvent&)
#define DEC_V_CBACK_VOID__WXKEYEVENT( METHOD ) \
    DEC_V_CBACK_ANY__WXKEYEVENT_( void, METHOD, wxPli_NOCONST )

#define DEF_V_CBACK_VOID__WXKEYEVENT( CLASS, BASE, METHOD ) \
    DEF_V_CBACK_ANY__WXKEYEVENT_( void, ;, CLASS, BASE::METHOD(p1), METHOD, wxPli_NOCONST )

class wxPlComboPopup : public wxComboPopup {
//    WXPLI_DECLARE_DYNAMIC_CLASS( wxPlComboPopup );
    WXPLI_DECLARE_V_CBACK();
public:
    WXPLI_DEFAULT_CONSTRUCTOR( wxPlComboPopup, "Wx::ComboPopup", true );

    void base_OnPopup()
        { wxComboPopup::OnPopup(); }
    void base_OnDismiss()
        { wxComboPopup::OnDismiss(); }
    void base_SetStringValue( const wxString& value )
        { wxComboPopup::SetStringValue( value ); }
    void base_PaintComboControl( wxDC& dc, const wxRect& rect )
        { wxComboPopup::PaintComboControl( dc, rect ); }
    void base_OnComboKeyEvent( wxKeyEvent& event )
        { wxComboPopup::OnComboKeyEvent( event ); }
    void base_OnComboDoubleClick()
        { wxComboPopup::OnComboDoubleClick(); }
    wxSize base_GetAdjustedSize( int minWidth, int prefHeight, int maxHeight )
        { return wxComboPopup::GetAdjustedSize( minWidth, prefHeight,
                                                maxHeight ); }
    bool base_LazyCreate()
        { return wxComboPopup::LazyCreate(); }

    wxComboCtrlBase* GetComboCtrl() { return m_combo; }

    DEC_V_CBACK_VOID__VOID( Init );
    DEC_V_CBACK_BOOL__WXWINDOW( Create );
    DEC_V_CBACK_WXWINDOW__VOID( GetControl );
    DEC_V_CBACK_VOID__VOID( OnPopup );
    DEC_V_CBACK_VOID__VOID( OnDismiss );
    DEC_V_CBACK_VOID__WXSTRING( SetStringValue );
    DEC_V_CBACK_WXSTRING__VOID_const( GetStringValue );
    DEC_V_CBACK_VOID__WXDC_WXRECT( PaintComboControl );
    DEC_V_CBACK_VOID__WXKEYEVENT( OnComboKeyEvent );
    DEC_V_CBACK_VOID__VOID( OnComboDoubleClick );
    DEC_V_CBACK_WXSIZE__INT_INT_INT( GetAdjustedSize );
    DEC_V_CBACK_BOOL__VOID( LazyCreate );
};

DEF_V_CBACK_VOID__VOID( wxPlComboPopup, wxComboPopup, Init );
DEF_V_CBACK_BOOL__WXWINDOW_pure( wxPlComboPopup, wxComboPopup, Create );
DEF_V_CBACK_WXWINDOW__VOID_pure( wxPlComboPopup, wxComboPopup, GetControl );
DEF_V_CBACK_VOID__VOID( wxPlComboPopup, wxComboPopup, OnPopup );
DEF_V_CBACK_VOID__VOID( wxPlComboPopup, wxComboPopup, OnDismiss );
DEF_V_CBACK_VOID__WXSTRING( wxPlComboPopup, wxComboPopup, SetStringValue );
DEF_V_CBACK_WXSTRING__VOID_const_pure( wxPlComboPopup, wxComboPopup, GetStringValue );
DEF_V_CBACK_VOID__WXDC_WXRECT( wxPlComboPopup, wxComboPopup, PaintComboControl );
DEF_V_CBACK_VOID__WXKEYEVENT( wxPlComboPopup, wxComboPopup, OnComboKeyEvent );
DEF_V_CBACK_VOID__VOID( wxPlComboPopup, wxComboPopup, OnComboDoubleClick );
DEF_V_CBACK_WXSIZE__INT_INT_INT( wxPlComboPopup, wxComboPopup, GetAdjustedSize );
DEF_V_CBACK_BOOL__VOID( wxPlComboPopup, wxComboPopup, LazyCreate );



