#include <exception>
#undef  xsp_constructor_class
#define xsp_constructor_class(c) (c)



#include "cpp/v_cback.h"

// void METH(int)
#define DEC_V_CBACK_VOID__INT_( METHOD, CONST ) \
    void METHOD( int ) CONST

#define DEF_V_CBACK_VOID__INT_( CLASS, CALLBASE, METHOD, CONST )\
    void CLASS::METHOD( int p1 ) CONST                                       \
    {                                                                        \
        dTHX;                                                                \
        if( wxPliFCback( aTHX_ &m_callback, #METHOD ) )                      \
        {                                                                    \
            wxPliCCback( aTHX_ &m_callback, G_SCALAR|G_DISCARD, "i", p1 );   \
        } else                                                               \
            CALLBASE;                                                        \
    }

#define DEC_V_CBACK_VOID__INT( METHOD ) \
    DEC_V_CBACK_VOID__INT_( METHOD, wxPli_NOCONST )

#define DEF_V_CBACK_VOID__INT( CLASS, BASE, METHOD ) \
    DEF_V_CBACK_VOID__INT_( CLASS, BASE::METHOD(p1), METHOD, wxPli_NOCONST )

#define DEF_V_CBACK_VOID__INT_pure( CLASS, BASE, METHOD ) \
    DEF_V_CBACK_VOID__INT_( CLASS, return, METHOD, wxPli_NOCONST )

class wxPlPreviewControlBar : public wxPreviewControlBar
{
    WXPLI_DECLARE_DYNAMIC_CLASS( wxPlPreviewControlBar );
    WXPLI_DECLARE_V_CBACK();
public:
    wxPlPreviewControlBar( const char* package, wxPrintPreviewBase *preview,
                           long buttons, wxWindow *parent,
                           const wxPoint& pos = wxDefaultPosition,
                           const wxSize& size = wxDefaultSize,
                           long style = wxTAB_TRAVERSAL,
                           const wxString& name = wxPanelNameStr )
        : wxPreviewControlBar( preview, buttons, parent, pos, size,
                               style, name ),
          m_callback( "Wx::PlPreviewControlBar" )
    {
        m_callback.SetSelf( wxPli_make_object( this, package ), true );
    }

    DEC_V_CBACK_VOID__VOID( CreateButtons );
    DEC_V_CBACK_VOID__INT( SetZoomControl );
    DEC_V_CBACK_INT__VOID( GetZoomControl );

    wxButton* GetCloseButton()        { return m_closeButton; }
#if WXPERL_W_VERSION_LT( 2, 9, 2 )
    wxButton* GetNextPageButton()     { return m_nextPageButton; }
    wxButton* GetPreviousPageButton() { return m_previousPageButton; }
    wxButton* GetPrintButton()        { return m_printButton; }
    wxButton* GetFirstPageButton()    { return m_firstPageButton; }
    wxButton* GetLastPageButton()     { return m_lastPageButton; }
    wxButton* GetGotoPageButton()     { return m_gotoPageButton; }
#endif
    wxChoice* GetZoomChoice()         { return m_zoomControl; }
    long      GetButtonFlags()        { return m_buttonFlags; }

    void SetCloseButton( wxButton* b )        { m_closeButton = b; }
#if WXPERL_W_VERSION_LT( 2, 9, 2 )
    void SetNextPageButton( wxButton* b )     { m_nextPageButton = b; }
    void SetPreviousPageButton( wxButton* b ) { m_previousPageButton = b; }
    void SetPrintButton( wxButton* b )        { m_printButton = b; }
    void SetFirstPageButton( wxButton* b )    { m_firstPageButton = b; }
    void SetLastPageButton( wxButton* b )     { m_lastPageButton = b; }
    void SetGotoPageButton( wxButton* b )     { m_gotoPageButton = b; }
#endif
    void SetZoomChoice( wxChoice * c )        { m_zoomControl = c; }
    void SetButtonFlags( long f )             { m_buttonFlags = f; }
};

WXPLI_IMPLEMENT_DYNAMIC_CLASS( wxPlPreviewControlBar, wxPreviewControlBar );

DEF_V_CBACK_VOID__VOID( wxPlPreviewControlBar, wxPreviewControlBar, CreateButtons );
DEF_V_CBACK_VOID__INT( wxPlPreviewControlBar, wxPreviewControlBar, SetZoomControl );
DEF_V_CBACK_INT__VOID( wxPlPreviewControlBar, wxPreviewControlBar, GetZoomControl );



