#include <exception>
#undef  xsp_constructor_class
#define xsp_constructor_class(c) (c)




#if WXPERL_W_VERSION_GE( 2, 9, 0 )

class wxPlHScrolledWindow : public wxHScrolledWindow {
    WXPLI_DECLARE_DYNAMIC_CLASS( wxPlHScrolledWindow );
    WXPLI_DECLARE_V_CBACK();
public:
    WXPLI_DEFAULT_CONSTRUCTOR( wxPlHScrolledWindow, "Wx::HScrolledWindow",
                               true );
    WXPLI_CONSTRUCTOR_6( wxPlHScrolledWindow, "Wx::HScrolledWindow", true,
                         wxWindow*, wxWindowID, const wxPoint&,
                         const wxSize&, long, const wxString& );

    // wxVarHScrollHelper
    DEC_V_CBACK_WXCOORD__SIZET_const( OnGetColumnWidth );
    DEC_V_CBACK_VOID__SIZET_SIZET_const( OnGetColumnsWidthHint );
    DEC_V_CBACK_WXCOORD__VOID_const( EstimateTotalWidth );
};

// wxVarHScrollHelper
DEF_V_CBACK_WXCOORD__SIZET_const_pure( wxPlHScrolledWindow, wxHScrolledWindow,
                                       OnGetColumnWidth );
DEF_V_CBACK_VOID__SIZET_SIZET_const( wxPlHScrolledWindow, wxHScrolledWindow,
                                     OnGetColumnsWidthHint );
DEF_V_CBACK_WXCOORD__VOID_const( wxPlHScrolledWindow, wxHScrolledWindow,
                                 EstimateTotalWidth );

WXPLI_IMPLEMENT_DYNAMIC_CLASS( wxPlHScrolledWindow, wxHScrolledWindow );

#endif

class wxPlVScrolledWindow : public wxVScrolledWindow {
    WXPLI_DECLARE_DYNAMIC_CLASS( wxPlVScrolledWindow );
    WXPLI_DECLARE_V_CBACK();
public:
    WXPLI_DEFAULT_CONSTRUCTOR( wxPlVScrolledWindow, "Wx::VScrolledWindow",
                               true );
    WXPLI_CONSTRUCTOR_6( wxPlVScrolledWindow, "Wx::VScrolledWindow", true,
                         wxWindow*, wxWindowID, const wxPoint&,
                         const wxSize&, long, const wxString& );

    // < 2.9
#if WXPERL_W_VERSION_LT( 2, 9, 0 ) || WXWIN_COMPATIBILITY_2_8
    DEC_V_CBACK_WXCOORD__SIZET_const( OnGetLineHeight );
    DEC_V_CBACK_VOID__SIZET_SIZET_const( OnGetLinesHint );
#endif

    // wxVarVScrollHelper
#if WXPERL_W_VERSION_GE( 2, 9, 0 )
    DEC_V_CBACK_WXCOORD__SIZET_const( OnGetRowHeight );
    DEC_V_CBACK_VOID__SIZET_SIZET_const( OnGetRowsHeightHint );
#endif
    DEC_V_CBACK_WXCOORD__VOID_const( EstimateTotalHeight );
};

// < 2.9
#if WXPERL_W_VERSION_LT( 2, 9, 0 ) || WXWIN_COMPATIBILITY_2_8
DEF_V_CBACK_WXCOORD__SIZET_const_pure( wxPlVScrolledWindow, wxVScrolledWindow,
                                       OnGetLineHeight );
DEF_V_CBACK_VOID__SIZET_SIZET_const( wxPlVScrolledWindow, wxVScrolledWindow,
                                     OnGetLinesHint );
#endif

// wxVarVScrollHelper
#if WXPERL_W_VERSION_GE( 2, 9, 0 )
DEF_V_CBACK_WXCOORD__SIZET_const_pure( wxPlVScrolledWindow, wxVScrolledWindow,
                                       OnGetRowHeight );
DEF_V_CBACK_VOID__SIZET_SIZET_const( wxPlVScrolledWindow, wxVScrolledWindow,
                                     OnGetRowsHeightHint );
#endif
DEF_V_CBACK_WXCOORD__VOID_const( wxPlVScrolledWindow, wxVScrolledWindow,
                                 EstimateTotalHeight );

WXPLI_IMPLEMENT_DYNAMIC_CLASS( wxPlVScrolledWindow, wxVScrolledWindow );

#if WXPERL_W_VERSION_GE( 2, 9, 0 )

class wxPlHVScrolledWindow : public wxHVScrolledWindow {
    WXPLI_DECLARE_DYNAMIC_CLASS( wxPlHVScrolledWindow );
    WXPLI_DECLARE_V_CBACK();
public:
    WXPLI_DEFAULT_CONSTRUCTOR( wxPlHVScrolledWindow, "Wx::HVScrolledWindow",
                               true );
    WXPLI_CONSTRUCTOR_6( wxPlHVScrolledWindow, "Wx::HVScrolledWindow", true,
                         wxWindow*, wxWindowID, const wxPoint&,
                         const wxSize&, long, const wxString& );

    // wxVarHScrollHelper
    DEC_V_CBACK_WXCOORD__SIZET_const( OnGetColumnWidth );
    DEC_V_CBACK_VOID__SIZET_SIZET_const( OnGetColumnsWidthHint );
    DEC_V_CBACK_WXCOORD__VOID_const( EstimateTotalWidth );

    // wxVarVScrollHelper
    DEC_V_CBACK_WXCOORD__SIZET_const( OnGetRowHeight );
    DEC_V_CBACK_VOID__SIZET_SIZET_const( OnGetRowsHeightHint );
    DEC_V_CBACK_WXCOORD__VOID_const( EstimateTotalHeight );
};

// wxVarHScrollHelper
DEF_V_CBACK_WXCOORD__SIZET_const_pure( wxPlHVScrolledWindow, wxHVScrolledWindow,
                                       OnGetColumnWidth );
DEF_V_CBACK_VOID__SIZET_SIZET_const( wxPlHVScrolledWindow, wxHVScrolledWindow,
                                     OnGetColumnsWidthHint );
DEF_V_CBACK_WXCOORD__VOID_const( wxPlHVScrolledWindow, wxHVScrolledWindow,
                                 EstimateTotalWidth );

// wxVarVScrollHelper
DEF_V_CBACK_WXCOORD__SIZET_const_pure( wxPlHVScrolledWindow, wxHVScrolledWindow,
                                       OnGetRowHeight );
DEF_V_CBACK_VOID__SIZET_SIZET_const( wxPlHVScrolledWindow, wxHVScrolledWindow,
                                     OnGetRowsHeightHint );
DEF_V_CBACK_WXCOORD__VOID_const( wxPlHVScrolledWindow, wxHVScrolledWindow,
                                 EstimateTotalHeight );

WXPLI_IMPLEMENT_DYNAMIC_CLASS( wxPlHVScrolledWindow, wxHVScrolledWindow );

#endif



