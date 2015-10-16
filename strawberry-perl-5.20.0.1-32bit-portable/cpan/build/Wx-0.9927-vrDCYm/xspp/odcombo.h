#include <exception>
#undef  xsp_constructor_class
#define xsp_constructor_class(c) (c)




#include "cpp/v_cback.h"

// void METH(wxDC&, const wxRect&, int, int)
#define DEC_V_CBACK_VOID__WXDC_WXRECT_INT_INT_const( METHOD ) \
    void METHOD( wxDC& p1, const wxRect& p2, int p3, int p4 ) const

#define DEF_V_CBACK_VOID__WXDC_WXRECT_INT_INT_const( CLASS, BASE, METHOD )\
    void CLASS::METHOD( wxDC& p1, const wxRect& p2, int p3, int p4 ) const   \
    {                                                                        \
        dTHX;                                                                \
        if( wxPliFCback( aTHX_ &m_callback, #METHOD ) )                      \
        {                                                                    \
            wxAutoSV ret( aTHX_ wxPliCCback( aTHX_ &m_callback,              \
                                             G_SCALAR|G_DISCARD,             \
                                             "Qoii", &p1,                    \
                                             new wxRect( p2 ), "Wx::Rect",   \
                                             p3, p4 ) );                     \
            return;                                                          \
        } else                                                               \
            BASE::METHOD( p1, p2, p3, p4 );                                  \
    }

class wxPlOwnerDrawnComboBox : public wxOwnerDrawnComboBox {
    WXPLI_DECLARE_DYNAMIC_CLASS( wxPlOwnerDrawnComboBox );
    WXPLI_DECLARE_V_CBACK();
public:
    WXPLI_DEFAULT_CONSTRUCTOR( wxPlOwnerDrawnComboBox,
                               "Wx::OwnerDrawnComboBox", true );
    WXPLI_CONSTRUCTOR_9( wxPlOwnerDrawnComboBox, "Wx::OwnerDrawnComboBox",
                         true,
                         wxWindow*, wxWindowID, const wxString&,
                         const wxPoint&, const wxSize&, const wxArrayString&,
                         long, const wxValidator&, const wxString& );

    DEC_V_CBACK_WXCOORD__SIZET_const( OnMeasureItem );
    DEC_V_CBACK_WXCOORD__SIZET_const( OnMeasureItemWidth );
    DEC_V_CBACK_VOID__WXDC_WXRECT_INT_INT_const( OnDrawItem );
    DEC_V_CBACK_VOID__WXDC_WXRECT_INT_INT_const( OnDrawBackground );
};

DEF_V_CBACK_WXCOORD__SIZET_const( wxPlOwnerDrawnComboBox, wxOwnerDrawnComboBox,
                                  OnMeasureItem ); 
DEF_V_CBACK_WXCOORD__SIZET_const( wxPlOwnerDrawnComboBox, wxOwnerDrawnComboBox,
                                  OnMeasureItemWidth ); 
DEF_V_CBACK_VOID__WXDC_WXRECT_INT_INT_const( wxPlOwnerDrawnComboBox,
                                             wxOwnerDrawnComboBox,
                                             OnDrawItem );
DEF_V_CBACK_VOID__WXDC_WXRECT_INT_INT_const( wxPlOwnerDrawnComboBox,
                                             wxOwnerDrawnComboBox,
                                             OnDrawBackground );

WXPLI_IMPLEMENT_DYNAMIC_CLASS( wxPlOwnerDrawnComboBox, wxOwnerDrawnComboBox );


