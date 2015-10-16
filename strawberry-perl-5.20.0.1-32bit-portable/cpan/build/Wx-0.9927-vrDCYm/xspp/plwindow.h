#include <exception>
#undef  xsp_constructor_class
#define xsp_constructor_class(c) (c)




#include "cpp/v_cback.h"

// ANY METH(int, int, int, int)
#define DEC_V_CBACK_ANY__INT_INT_INT_INT_( RET, METHOD, CONST ) \
    RET METHOD(int, int, int, int) CONST

#define DEF_V_CBACK_ANY__INT_INT_INT_INT_( RET, CVT, CLASS, CALLBASE, METHOD, CONST ) \
    RET CLASS::METHOD( int p1, int p2, int p3, int p4 ) CONST                \
    {                                                                        \
        dTHX;                                                                \
        if( wxPliVirtualCallback_FindCallback( aTHX_ &m_callback, #METHOD ) )\
        {                                                                    \
            wxAutoSV ret( aTHX_ wxPliCCback( aTHX_ &m_callback, G_SCALAR,    \
                                             "iiii", p1, p2, p3, p4 ) );     \
            return CVT;                                                      \
        } else                                                               \
            CALLBASE;                                                        \
    }

// wxSize METH()
#define DEC_V_CBACK_WXSIZE__VOID( METHOD ) \
    DEC_V_CBACK_ANY__VOID_( wxSize, METHOD, wxPli_NOCONST )

#define DEC_V_CBACK_WXSIZE__VOID_const( METHOD ) \
    DEC_V_CBACK_ANY__VOID_( wxSize, METHOD, wxPli_CONST )

#define DEF_V_CBACK_WXSIZE__VOID( CLASS, BASE, METHOD ) \
    DEF_V_CBACK_ANY__VOID_( wxSize, wxPli_sv_2_wxsize( aTHX_ ret ), CLASS, return BASE::METHOD(), METHOD, wxPli_NOCONST )

#define DEF_V_CBACK_WXSIZE__VOID_pure( CLASS, BASE, METHOD ) \
    DEF_V_CBACK_ANY__VOID_( wxSize, wxPli_sv_2_wxsize( aTHX_ ret ), CLASS, return wxSize(), METHOD, wxPli_NOCONST )

#define DEF_V_CBACK_WXSIZE__VOID_const( CLASS, BASE, METHOD ) \
    DEF_V_CBACK_ANY__VOID_( wxSize, wxPli_sv_2_wxsize( aTHX_ ret ), CLASS, return BASE::METHOD(), METHOD, wxPli_CONST )

// void METH(int, int, int, int)
#define DEC_V_CBACK_VOID__INT_INT_INT_INT( METHOD ) \
    DEC_V_CBACK_ANY__INT_INT_INT_INT_( void, METHOD, wxPli_NOCONST )

#define DEC_V_CBACK_VOID__INT_INT_INT_INT_const( METHOD ) \
    DEC_V_CBACK_ANY__INT_INT_INT_INT_( void, METHOD, wxPli_CONST )

#define DEF_V_CBACK_VOID__INT_INT_INT_INT( CLASS, BASE, METHOD ) \
    DEF_V_CBACK_ANY__INT_INT_INT_INT_( void, wxPli_VOID, CLASS, BASE::METHOD(p1, p2, p3, p4), METHOD, wxPli_NOCONST )

#define DEF_V_CBACK_VOID__INT_INT_INT_INT_pure( CLASS, BASE, METHOD ) \
    DEF_V_CBACK_ANY__INT_INT_INT_INT_( void, wxPli_VOID, CLASS, return, METHOD, wxPli_NOCONST )

#define DEF_V_CBACK_VOID__INT_INT_INT_INT_const( CLASS, BASE, METHOD ) \
    DEF_V_CBACK_ANY__INT_INT_INT_INT_( void, wxPli_VOID, CLASS, BASE::METHOD(p1, p2, p3, p4), METHOD, wxPli_CONST )

class wxPlWindow : public wxWindow {
    WXPLI_DECLARE_DYNAMIC_CLASS( wxPlWindow );
    WXPLI_DECLARE_V_CBACK();
public:
    WXPLI_DEFAULT_CONSTRUCTOR( wxPlWindow, "Wx::Window", true );
    WXPLI_CONSTRUCTOR_6( wxPlWindow, "Wx::Window", true,
                         wxWindow*, wxWindowID, const wxPoint&,
                         const wxSize&, long, const wxString& );

    virtual ~wxPlWindow();

    wxSize base_DoGetBestSize() const { return wxWindow::DoGetBestSize(); }
    void base_DoMoveWindow( int x, int y, int w, int h )
        { wxWindow::DoMoveWindow(x, y, w, h); }
    bool base_Enable( bool enable ) { return wxWindow::Enable( enable ); }

    DEC_V_CBACK_WXSIZE__VOID_const( DoGetBestSize );
    DEC_V_CBACK_BOOL__VOID_const( AcceptsFocus );
#if WXPERL_W_VERSION_GE( 2, 9, 0 )
    DEC_V_CBACK_BOOL__VOID_const( AcceptsFocusRecursively );
#endif
    DEC_V_CBACK_BOOL__VOID_const( AcceptsFocusFromKeyboard );
    DEC_V_CBACK_VOID__INT_INT_INT_INT( DoMoveWindow );
    DEC_V_CBACK_BOOL__BOOL( Enable );
#if WXPERL_W_VERSION_GE( 2, 5, 1 )
    DEC_V_CBACK_WXSIZE__VOID_const( GetMinSize );
    DEC_V_CBACK_WXSIZE__VOID_const( GetMaxSize );
#endif
};

DEF_V_CBACK_WXSIZE__VOID_const( wxPlWindow, wxWindow, DoGetBestSize );
DEF_V_CBACK_BOOL__VOID_const( wxPlWindow, wxWindow, AcceptsFocus );
#if WXPERL_W_VERSION_GE( 2, 9, 0 )
DEF_V_CBACK_BOOL__VOID_const( wxPlWindow, wxWindow, AcceptsFocusRecursively );
#endif
DEF_V_CBACK_BOOL__VOID_const( wxPlWindow, wxWindow, AcceptsFocusFromKeyboard );
DEF_V_CBACK_VOID__INT_INT_INT_INT( wxPlWindow, wxWindow, DoMoveWindow );
DEF_V_CBACK_BOOL__BOOL( wxPlWindow, wxWindow, Enable );
#if WXPERL_W_VERSION_GE( 2, 5, 1 )
DEF_V_CBACK_WXSIZE__VOID_const( wxPlWindow, wxWindow, GetMinSize );
DEF_V_CBACK_WXSIZE__VOID_const( wxPlWindow, wxWindow, GetMaxSize );
#endif

WXPLI_IMPLEMENT_DYNAMIC_CLASS( wxPlWindow, wxWindow );

wxPlWindow::~wxPlWindow()
{
    dTHX;
    if( wxPliVirtualCallback_FindCallback( aTHX_ &m_callback, "DoDestroy" ) )
    {
        // Call DoDestroy if it exists
        wxPliVirtualCallback_CallCallback( aTHX_ &m_callback, 0, "" );
    }
}



