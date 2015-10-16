#include <exception>
#undef  xsp_constructor_class
#define xsp_constructor_class(c) (c)



#include "cpp/v_cback.h"

class wxPlPreviewFrame : public wxPreviewFrame
{
    WXPLI_DECLARE_DYNAMIC_CLASS( wxPlPreviewFrame );
    WXPLI_DECLARE_V_CBACK();
public: 
#if WXPERL_W_VERSION_GE( 2, 5, 3 )
    wxPlPreviewFrame( const char* package, wxPrintPreviewBase *preview,
                      wxWindow *parent,
                      const wxString& title = wxT("Print Preview"),
                      const wxPoint& pos = wxDefaultPosition,
                      const wxSize& size = wxDefaultSize,
                      long style = wxDEFAULT_FRAME_STYLE,
                      const wxString& name = wxFrameNameStr )
        : wxPreviewFrame( preview, parent, title, pos, size, style, name ),
          m_callback( "Wx::PlPreviewFrame" )
    {
        m_callback.SetSelf( wxPli_make_object( this, package ), true );
    }
#else
    wxPlPreviewFrame( const char* package, wxPrintPreviewBase *preview,
                      wxFrame *parent,
                      const wxString& title = wxT("Print Preview"),
                      const wxPoint& pos = wxDefaultPosition,
                      const wxSize& size = wxDefaultSize,
                      long style = wxDEFAULT_FRAME_STYLE,
                      const wxString& name = wxFrameNameStr )
        : wxPreviewFrame( preview, parent, title, pos, size, style, name ),
          m_callback( "Wx::PlPreviewFrame" )
    {
        m_callback.SetSelf( wxPli_make_object( this, package ), true );
    }
#endif

#if WXPERL_W_VERSION_GE( 2, 5, 3 )
    wxPreviewCanvas*     GetPreviewCanvas()     { return m_previewCanvas; }
#else
    wxWindow*            GetPreviewCanvas()     { return m_previewCanvas; }
#endif
    wxPreviewControlBar* GetPreviewControlBar() { return m_controlBar; }
    wxPrintPreviewBase*  GetPrintPreview()      { return m_printPreview; }

#if WXPERL_W_VERSION_GE( 2, 5, 3 )
    void SetPreviewCanvas( wxPreviewCanvas* p )       { m_previewCanvas = p; }
#else
    void SetPreviewCanvas( wxWindow* p )              { m_previewCanvas = p; }
#endif
    void SetPreviewControlBar( wxPreviewControlBar* p ) { m_controlBar = p; }
    void SetPrintPreview( wxPrintPreviewBase* p )       { m_printPreview = p; }

    DEC_V_CBACK_VOID__VOID( Initialize );
    DEC_V_CBACK_VOID__VOID( CreateCanvas );
    DEC_V_CBACK_VOID__VOID( CreateControlBar );
};

WXPLI_IMPLEMENT_DYNAMIC_CLASS( wxPlPreviewFrame, wxPreviewFrame );

DEF_V_CBACK_VOID__VOID( wxPlPreviewFrame, wxPreviewFrame, Initialize );
DEF_V_CBACK_VOID__VOID( wxPlPreviewFrame, wxPreviewFrame, CreateCanvas );
DEF_V_CBACK_VOID__VOID( wxPlPreviewFrame, wxPreviewFrame, CreateControlBar );


