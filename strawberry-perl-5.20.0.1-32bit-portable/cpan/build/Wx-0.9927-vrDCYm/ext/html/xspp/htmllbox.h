#include <exception>
#undef  xsp_constructor_class
#define xsp_constructor_class(c) (c)




#include "cpp/v_cback.h"

// bool METH(size_t)
#define DEC_V_CBACK_WXSTRING__SIZET_( METHOD, CONST ) \
    wxString METHOD( size_t ) CONST

#define DEF_V_CBACK_WXSTRING__SIZET_( CLASS, CALLBASE, METHOD, CONST )\
    wxString CLASS::METHOD( size_t p1 ) CONST                                \
    {                                                                        \
        dTHX;                                                                \
        if( wxPliFCback( aTHX_ &m_callback, #METHOD ) )                      \
        {                                                                    \
            wxAutoSV ret( aTHX_ wxPliCCback( aTHX_ &m_callback, G_SCALAR,    \
                                             "L", p1 ) );                    \
            wxString value;                                                  \
            WXSTRING_INPUT( value, wxChar*, ret );                           \
            return value;                                                    \
        } else                                                               \
            CALLBASE;                                                        \
    }

#define DEC_V_CBACK_WXSTRING__SIZET_const( METHOD ) \
    DEC_V_CBACK_WXSTRING__SIZET_( METHOD, wxPli_CONST )

#define DEF_V_CBACK_WXSTRING__SIZET_const_pure( CLASS, BASE, METHOD ) \
    DEF_V_CBACK_WXSTRING__SIZET_( CLASS, return wxEmptyString, METHOD, wxPli_CONST )

class wxPlHtmlListBox : public wxHtmlListBox {
    WXPLI_DECLARE_DYNAMIC_CLASS( wxPlHtmlListBox );
    WXPLI_DECLARE_V_CBACK();
public:
    WXPLI_DEFAULT_CONSTRUCTOR( wxPlHtmlListBox, "Wx::HtmlListBox", true );
    WXPLI_CONSTRUCTOR_6( wxPlHtmlListBox, "Wx::HtmlListBox", true,
                         wxWindow*, wxWindowID, const wxPoint&,
                         const wxSize&, long, const wxString& );

    DEC_V_CBACK_WXCOORD__VOID_const( EstimateTotalHeight );
    DEC_V_CBACK_WXSTRING__SIZET_const( OnGetItem );
};

WXPLI_IMPLEMENT_DYNAMIC_CLASS( wxPlHtmlListBox, wxHtmlListBox );

DEF_V_CBACK_WXCOORD__VOID_const( wxPlHtmlListBox, wxHtmlListBox,
                                 EstimateTotalHeight );
DEF_V_CBACK_WXSTRING__SIZET_const_pure( wxPlHtmlListBox, wxHtmlListBox,
                                        OnGetItem );



