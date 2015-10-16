#include <exception>
#undef  xsp_constructor_class
#define xsp_constructor_class(c) (c)




#include "cpp/v_cback.h"

#define DEC_V_CBACK_WXOBJECT__VOID_pure( METHOD ) \
  wxObject* METHOD()

#define DEF_V_CBACK_WXOBJECT__VOID_pure( CLASS, BASE, METHOD )                \
  wxObject* CLASS::METHOD()                                                   \
  {                                                                           \
    dTHX;                                                                     \
    if( wxPliVirtualCallback_FindCallback( aTHX_ &m_callback, #METHOD ) )     \
    {                                                                         \
        SV* ret = wxPliVirtualCallback_CallCallback( aTHX_ &m_callback,       \
                                                     G_SCALAR, NULL );        \
        wxObject* val = (wxObject*)wxPli_sv_2_object( aTHX_ ret, NULL );      \
        SvREFCNT_dec( ret );                                                  \
        return val;                                                           \
    } else                                                                    \
        return NULL;                                                          \
  }

#define DEC_V_CBACK_BOOL__WXXMLNODE_pure( METHOD ) \
  bool METHOD( wxXmlNode* )

#define DEF_V_CBACK_BOOL__WXXMLNODE_pure( CLASS, BASE, METHOD )               \
  bool CLASS::METHOD( wxXmlNode* param1 )                                     \
  {                                                                           \
    dTHX;                                                                     \
    if( wxPliVirtualCallback_FindCallback( aTHX_ &m_callback, #METHOD ) )     \
    {                                                                         \
        SV* ret = wxPliVirtualCallback_CallCallback( aTHX_ &m_callback,       \
                                                     G_SCALAR,                \
                                                     "o", param1,             \
                                                     "Wx::XmlNode" );         \
        bool val = SvTRUE( ret );                                             \
        SvREFCNT_dec( ret );                                                  \
        return val;                                                           \
    } else                                                                    \
        return false;                                                         \
  }


class wxPlXmlResourceHandler : public wxXmlResourceHandler
{
    WXPLI_DECLARE_DYNAMIC_CLASS( wxPlXmlResourceHandler );
    WXPLI_DECLARE_V_CBACK();
public:
    wxPlXmlResourceHandler( const char* package )
        :m_callback( "Wx::XmlResourceHandler" )
    {
        m_callback.SetSelf( wxPli_make_object( this, package ), true );
    }

    DEC_V_CBACK_BOOL__WXXMLNODE_pure( CanHandle );
    DEC_V_CBACK_WXOBJECT__VOID_pure( DoCreateResource );

    wxXmlResource* GetResource() { return m_resource; }
    wxXmlNode* GetNode() { return m_node; }
    wxString GetClass() { return m_class; }
    wxObject* GetParent() { return m_parent; }
    wxObject* GetInstance() { return m_instance; }
    wxWindow* GetParentAsWindow() { return m_parentAsWindow; }
#if WXPERL_W_VERSION_LE( 2, 5, 2 )
    wxWindow* GetInstanceAsWindow() { return m_instanceAsWindow; }
#endif

    bool IsOfClass( wxXmlNode* node, const wxString& className )
        { return wxXmlResourceHandler::IsOfClass( node, className ); }
    wxString GetNodeContent( wxXmlNode* node )
        { return wxXmlResourceHandler::GetNodeContent( node ); }
    bool HasParam( const wxString& param )
        { return wxXmlResourceHandler::HasParam( param ); }
    wxXmlNode* GetParamNode( const wxString& param )
        { return wxXmlResourceHandler::GetParamNode( param ); }
    wxString GetParamValue( const wxString& param )
        { return wxXmlResourceHandler::GetParamValue( param ); }
    void AddStyle( const wxString& name, int value )
        { wxXmlResourceHandler::AddStyle( name, value ); }
    void AddWindowStyles()
        { wxXmlResourceHandler::AddWindowStyles(); }
    int GetStyle( const wxString& param, int defaults )
        { return wxXmlResourceHandler::GetStyle( param, defaults ); }
    wxString GetText(const wxString& param, bool translate)
        { return wxXmlResourceHandler::GetText( param, translate ); }
    int GetID()
        { return wxXmlResourceHandler::GetID(); }
    wxString GetName()
        { return wxXmlResourceHandler::GetName(); }
    bool GetBool(const wxString& param, bool defaultv)
        { return wxXmlResourceHandler::GetBool( param, defaultv ); }
    long GetLong( const wxString& param, long defaultv)
        { return wxXmlResourceHandler::GetLong( param, defaultv ); }
    wxColour GetColour(const wxString& param)
        { return wxXmlResourceHandler::GetColour( param ); }
    wxSize GetSize(const wxString& param)
        { return wxXmlResourceHandler::GetSize( param ); }
    wxPoint GetPosition(const wxString& param)
        { return wxXmlResourceHandler::GetPosition( param ); }
    wxCoord GetDimension(const wxString& param, wxCoord defaultv)
        { return wxXmlResourceHandler::GetDimension( param, defaultv ); }
    wxBitmap GetBitmap(const wxString& param,
                       const wxArtClient& defaultArtClient,
                       wxSize size)
        { return wxXmlResourceHandler::GetBitmap( param, defaultArtClient,
                                                  size ); }
    wxIcon GetIcon(const wxString& param,
                   const wxArtClient& defaultArtClient,
                   wxSize size)
        { return wxXmlResourceHandler::GetIcon( param, defaultArtClient,
                                                size ); }
    wxFont GetFont(const wxString& param)
        { return wxXmlResourceHandler::GetFont( param ); }
    void SetupWindow(wxWindow *wnd)
        { wxXmlResourceHandler::SetupWindow( wnd ); }
    void CreateChildren(wxObject *parent, bool this_hnd_only)
        { wxXmlResourceHandler::CreateChildren( parent, this_hnd_only ); }
    void CreateChildrenPrivately(wxObject *parent, wxXmlNode *rootnode)
        { wxXmlResourceHandler::CreateChildrenPrivately( parent, rootnode ); }
    wxObject *CreateResFromNode(wxXmlNode *node,
                                wxObject *parent, wxObject *instance)
        { return wxXmlResourceHandler::CreateResFromNode( node, parent,
                                                          instance ); }

#if wxUSE_FILESYSTEM
    wxFileSystem& GetCurFileSystem();
#endif
};

DEF_V_CBACK_BOOL__WXXMLNODE_pure( wxPlXmlResourceHandler, wxXmlResourceHandler,
                                  CanHandle );
DEF_V_CBACK_WXOBJECT__VOID_pure( wxPlXmlResourceHandler, wxXmlResourceHandler,
                                 DoCreateResource );

#if WXPERL_W_VERSION_GE( 2, 5, 1 )
WXPLI_IMPLEMENT_DYNAMIC_CLASS( wxPlXmlResourceHandler, wxXmlResourceHandler );
#else
WXPLI_IMPLEMENT_DYNAMIC_CLASS( wxPlXmlResourceHandler, wxObject );
#endif



