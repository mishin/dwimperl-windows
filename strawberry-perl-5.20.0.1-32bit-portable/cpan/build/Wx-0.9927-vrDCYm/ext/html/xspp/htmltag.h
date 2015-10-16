#include <exception>
#undef  xsp_constructor_class
#define xsp_constructor_class(c) (c)




#include "cpp/v_cback.h"

#define DEC_V_CBACK_BOOL__WXHTMLTAG( NAME ) \
    bool NAME( const wxHtmlTag& tag );

#if 0
#define DEF_V_CBACK_BOOL__WXHTMLTAG_pure( CLASS, BASE, METHOD )              \
    DEF_V_CBACK_BOOL__WXOBJECTs_( const wxHtmlTag&, CLASS, return false,     \
                                  METHOD, wxPli_NOCONST )
#endif

#define DEF_V_CBACK_BOOL__WXHTMLTAG_pure( CLASS, BASE, METHOD )              \
    bool CLASS::METHOD( const wxHtmlTag& p1 )                                \
    {                                                                        \
        dTHX;                                                                \
        if( wxPliFCback( aTHX_ &m_callback, #METHOD ) )                      \
        {                                                                    \
            wxAutoSV ret( aTHX_ wxPliCCback( aTHX_ &m_callback,              \
                                             G_SCALAR|G_DISCARD,             \
                                             "q", &p1, "Wx::HtmlTag" ) );    \
            return SvTRUE( ret );                                            \
        } else                                                               \
            return false;                                                    \
    }

class wxPlHtmlTagHandler : public wxHtmlTagHandler
{
    WXPLI_DECLARE_DYNAMIC_CLASS( wxPlHtmlTagHandler );
    WXPLI_DECLARE_V_CBACK();
public:
    wxPlHtmlTagHandler( const char* package )
        :m_callback( "Wx::PlHtmlTagHandler" )
    {
        m_callback.SetSelf( wxPli_make_object( this, package ), true );
    }

    wxHtmlParser* GetParser() { return m_Parser; }

    DEC_V_CBACK_WXSTRING__VOID( GetSupportedTags );
    DEC_V_CBACK_BOOL__WXHTMLTAG( HandleTag );
};

WXPLI_IMPLEMENT_DYNAMIC_CLASS( wxPlHtmlTagHandler, wxHtmlTagHandler );

DEF_V_CBACK_WXSTRING__VOID_pure( wxPlHtmlTagHandler, wxHtmlTagHandler, GetSupportedTags );
DEF_V_CBACK_BOOL__WXHTMLTAG_pure( wxPlHtmlTagHandler, wxHtmlTagHandler, HandleTag );

class wxPlHtmlWinTagHandler : public wxHtmlWinTagHandler
{
    WXPLI_DECLARE_DYNAMIC_CLASS( wxPlHtmlWinTagHandler );
    WXPLI_DECLARE_V_CBACK();
public:
    wxPlHtmlWinTagHandler( const char* package )
        :m_callback( "Wx::PlHtmlWinTagHandler" )
    {
        m_callback.SetSelf( wxPli_make_object( this, package ), true );
    }

    wxHtmlWinParser* GetParser() { return m_WParser; }

    DEC_V_CBACK_WXSTRING__VOID( GetSupportedTags );
    DEC_V_CBACK_BOOL__WXHTMLTAG( HandleTag );
};

WXPLI_IMPLEMENT_DYNAMIC_CLASS( wxPlHtmlWinTagHandler, wxHtmlWinTagHandler );

DEF_V_CBACK_WXSTRING__VOID_pure( wxPlHtmlWinTagHandler, wxHtmlWinTagHandler, GetSupportedTags );
DEF_V_CBACK_BOOL__WXHTMLTAG_pure( wxPlHtmlWinTagHandler, wxHtmlWinTagHandler, HandleTag );



