#include <exception>
#undef  xsp_constructor_class
#define xsp_constructor_class(c) (c)




#include "cpp/v_cback.h"
#include "cpp/streams.h"

#define DEF_V_CBACK_BOOL__WXRICHTEXTBUFFER_WXINPUTSTREAM( CLASS, BASE, METHOD )\
    bool CLASS::METHOD( wxRichTextBuffer* p1, wxInputStream& p2 )            \
    {                                                                        \
        dTHX;                                                                \
        if( wxPliFCback( aTHX_ &m_callback, #METHOD ) )                      \
        {                                                                    \
            wxAutoSV stream( aTHX_ sv_newmortal() );                         \
            wxPli_stream_2_sv( aTHX_ stream, &p2, "Wx::InputStream" );       \
            wxAutoSV ret( aTHX_ wxPliCCback( aTHX_ &m_callback,              \
                                             G_SCALAR,                       \
                                             "Qs", p1, (SV*)stream ) );      \
            return SvTRUE( ret );                                            \
        } else                                                               \
            return false;                                                    \
    }

#define DEF_V_CBACK_BOOL__WXRICHTEXTBUFFER_WXOUTPUTSTREAM( CLASS, BASE, METHOD )\
    bool CLASS::METHOD( wxRichTextBuffer* p1, wxOutputStream& p2 )           \
    {                                                                        \
        dTHX;                                                                \
        if( wxPliFCback( aTHX_ &m_callback, #METHOD ) )                      \
        {                                                                    \
            wxAutoSV stream( aTHX_ sv_newmortal() );                         \
            wxPli_stream_2_sv( aTHX_ stream, &p2, "Wx::OutputStream" );      \
            wxAutoSV ret( aTHX_ wxPliCCback( aTHX_ &m_callback,              \
                                             G_SCALAR,                       \
                                             "Qs", p1, (SV*)stream ) );      \
            return SvTRUE( ret );                                            \
        } else                                                               \
            return false;                                                    \
    }

class wxPlRichTextFileHandler : public wxRichTextFileHandler
{
    WXPLI_DECLARE_V_CBACK();
public:
    wxPlRichTextFileHandler( const char* package,
                             const wxString& name = wxEmptyString,
                             const wxString& ext = wxEmptyString,
                             int type = 0 )
      : wxRichTextFileHandler( name, ext, type ),
        m_callback( "Wx::RichTextFileHandler" )
    {
        m_callback.SetSelf( wxPli_make_object( this, package ), true );
    }

    bool base_CanHandle( const wxString& filename )
        { return wxRichTextFileHandler::CanHandle( filename ); }
    bool base_CanLoad()
        { return wxRichTextFileHandler::CanLoad(); }
    bool base_CanSave()
        { return wxRichTextFileHandler::CanSave(); }

    DEC_V_CBACK_BOOL__WXSTRING( CanHandle );
    DEC_V_CBACK_BOOL__VOID( CanLoad );
    DEC_V_CBACK_BOOL__VOID( CanSave );

    bool DoLoadFile( wxRichTextBuffer *buffer, wxInputStream& stream );
    bool DoSaveFile( wxRichTextBuffer *buffer, wxOutputStream& stream );
};

DEF_V_CBACK_BOOL__WXSTRING( wxPlRichTextFileHandler,
                            wxRichTextFileHandler, CanHandle );
DEF_V_CBACK_BOOL__VOID( wxPlRichTextFileHandler,
                        wxRichTextFileHandler, CanLoad );
DEF_V_CBACK_BOOL__VOID( wxPlRichTextFileHandler,
                        wxRichTextFileHandler, CanSave );
DEF_V_CBACK_BOOL__WXRICHTEXTBUFFER_WXINPUTSTREAM( wxPlRichTextFileHandler,
                                                  wxRichTextFileHandler,
                                                  DoLoadFile );
DEF_V_CBACK_BOOL__WXRICHTEXTBUFFER_WXOUTPUTSTREAM( wxPlRichTextFileHandler,
                                                   wxRichTextFileHandler,
                                                   DoSaveFile );


