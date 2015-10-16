#include <exception>
#undef  xsp_constructor_class
#define xsp_constructor_class(c) (c)




#include "cpp/v_cback.h"

// void METH(wxDC&, const wxRect&, size_t)
#define DEC_V_CBACK_VOID__WXDC_WXRECT_SIZET_const( METHOD ) \
    void METHOD( wxDC& p1, const wxRect& p2, size_t p3 ) const

#define DEF_V_CBACK_VOID__WXDC_WXRECT_SIZET_const_pure( CLASS, BASE, METHOD )\
    void CLASS::METHOD( wxDC& p1, const wxRect& p2, size_t p3 ) const        \
    {                                                                        \
        dTHX;                                                                \
        if( wxPliFCback( aTHX_ &m_callback, #METHOD ) )                      \
        {                                                                    \
            wxAutoSV ret( aTHX_ wxPliCCback( aTHX_ &m_callback,              \
                                             G_SCALAR|G_DISCARD,             \
                                             "QoL", &p1,                     \
                                             new wxRect( p2 ), "Wx::Rect",   \
                                             p3 ) );                         \
            return;                                                          \
        } else                                                               \
            return;                                                          \
    }
    
#define DEF_V_CBACK_VOID__WXDC_WXRECT_SIZET_const( CLASS, BASE, METHOD )\
    void CLASS::METHOD( wxDC& p1, const wxRect& p2, size_t p3 ) const        \
    {                                                                        \
        dTHX;                                                                \
        if( wxPliFCback( aTHX_ &m_callback, #METHOD ) )                      \
        {                                                                    \
            wxAutoSV ret( aTHX_ wxPliCCback( aTHX_ &m_callback,              \
                                             G_SCALAR|G_DISCARD,             \
                                             "QoL", &p1,                     \
                                             new wxRect( p2 ), "Wx::Rect",   \
                                             p3 ) );                         \
            return;                                                          \
        } else                                                               \
            BASE::METHOD( p1, p2, p3);                                       \
    }
    
// void METH(wxDC&, wxRect&, size_t)
#define DEC_V_CBACK_VOID__WXDC_WXRECTREF_SIZET_const( METHOD ) \
    void METHOD( wxDC& p1, wxRect& p2, size_t p3 ) const

#define DEF_V_CBACK_VOID__WXDC_WXRECTREF_SIZET_const( CLASS, BASE, METHOD )\
    void CLASS::METHOD( wxDC& p1, wxRect& p2, size_t p3 ) const        \
    {                                                                        \
        dTHX;                                                                \
        if( wxPliFCback( aTHX_ &m_callback, #METHOD ) )                      \
        {                                                                    \
            wxAutoSV ret( aTHX_ wxPliCCback( aTHX_ &m_callback,              \
                                             G_SCALAR|G_DISCARD,             \
                                             "QqL", &p1,                     \
                                             &p2, "Wx::Rect",                \
                                             p3 ) );                         \
            return;                                                          \
        } else                                                               \
            BASE::METHOD( p1, p2, p3);                                       \
    }

class wxPlVListBox : public wxVListBox {
    WXPLI_DECLARE_DYNAMIC_CLASS( wxPlVListBox );
    WXPLI_DECLARE_V_CBACK();
public:
    WXPLI_DEFAULT_CONSTRUCTOR( wxPlVListBox, "Wx::VListBox", true );
    WXPLI_CONSTRUCTOR_6( wxPlVListBox, "Wx::VListBox", true,
                         wxWindow*, wxWindowID, const wxPoint&,
                         const wxSize&, long, const wxString& );

    DEC_V_CBACK_WXCOORD__VOID_const( EstimateTotalHeight );
    DEC_V_CBACK_WXCOORD__SIZET_const( OnMeasureItem );
    DEC_V_CBACK_VOID__WXDC_WXRECT_SIZET_const( OnDrawItem );
    DEC_V_CBACK_VOID__WXDC_WXRECTREF_SIZET_const( OnDrawSeparator );
#if WXPERL_W_VERSION_GE( 2, 5, 1 )
    DEC_V_CBACK_VOID__WXDC_WXRECT_SIZET_const( OnDrawBackground );
#endif
};

DEF_V_CBACK_WXCOORD__VOID_const( wxPlVListBox, wxVListBox,
                                 EstimateTotalHeight );
DEF_V_CBACK_WXCOORD__SIZET_const_pure( wxPlVListBox, wxVListBox,
                                       OnMeasureItem ); 
DEF_V_CBACK_VOID__WXDC_WXRECT_SIZET_const_pure( wxPlVListBox, wxVListBox,
                                                OnDrawItem );
DEF_V_CBACK_VOID__WXDC_WXRECTREF_SIZET_const( wxPlVListBox, wxVListBox,
                                                OnDrawSeparator );                                                 
#if WXPERL_W_VERSION_GE( 2, 5, 1 )
DEF_V_CBACK_VOID__WXDC_WXRECT_SIZET_const( wxPlVListBox, wxVListBox,
                                                OnDrawBackground );
#endif
WXPLI_IMPLEMENT_DYNAMIC_CLASS( wxPlVListBox, wxVListBox );




