#include <exception>
#undef  xsp_constructor_class
#define xsp_constructor_class(c) (c)




#include "cpp/v_cback.h"

#define DEC_V_CBACK_WXBITMAP__WXARTID_WXARTCLIENT_WXSIZE_pure( METHOD ) \
  wxBitmap METHOD( const wxArtID& id, const wxArtClient& client, const wxSize& size )

#define DEF_V_CBACK_WXBITMAP__WXARTID_WXARTCLIENT_WXSIZE_pure( CLASS, BASE, METHOD ) \
  wxBitmap CLASS::METHOD( const wxArtID& id, const wxArtClient& client,      \
                          const wxSize& size )                               \
  {                                                                          \
      dTHX;                                                                  \
      if( wxPliVirtualCallback_FindCallback( aTHX_ &m_callback, #METHOD ) )  \
      {                                                                      \
          wxAutoSV ret( aTHX_ wxPliCCback( aTHX_ &m_callback,                \
                        G_SCALAR, "PPo", &id, &client,                       \
                        new wxSize( size ), "Wx::Size" ) );        \
          return *(wxBitmap*)wxPli_sv_2_object( aTHX_ ret, "Wx::Bitmap" );   \
      } else                                                                 \
          return wxNullBitmap;                                               \
  }

#define DEC_V_CBACK_WXICONBUNDLE__WXARTID_WXARTCLIENT_pure( METHOD ) \
  wxIconBundle METHOD( const wxArtID& id, const wxArtClient& client )

#define DEF_V_CBACK_WXICONBUNDLE__WXARTID_WXARTCLIENT_pure( CLASS, BASE, METHOD ) \
  wxIconBundle CLASS::METHOD( const wxArtID& id, const wxArtClient& client )     \
  {                                                                          \
      dTHX;                                                                  \
      if( wxPliVirtualCallback_FindCallback( aTHX_ &m_callback, #METHOD ) )  \
      {                                                                      \
          wxAutoSV ret( aTHX_ wxPliCCback( aTHX_ &m_callback,                \
                        G_SCALAR, "PP", &id, &client ) );                    \
          return *(wxIconBundle*)wxPli_sv_2_object( aTHX_ ret, "Wx::IconBundle" );   \
      } else                                                                 \
          return wxNullIconBundle;                                           \
  }

class wxPlArtProvider : public wxArtProvider
{
    WXPLI_DECLARE_DYNAMIC_CLASS( wxPlArtProvider );
    WXPLI_DECLARE_V_CBACK();
public:
    wxPlArtProvider( const char* package )
      : m_callback( "Wx::ArtProvider" )
    {
        m_callback.SetSelf( wxPli_make_object( this, package ), true );
    }

    DEC_V_CBACK_WXBITMAP__WXARTID_WXARTCLIENT_WXSIZE_pure( CreateBitmap );
#if WXPERL_W_VERSION_GE( 2, 9, 0 )
    DEC_V_CBACK_WXICONBUNDLE__WXARTID_WXARTCLIENT_pure( CreateIconBundle );
#endif
};

DEF_V_CBACK_WXBITMAP__WXARTID_WXARTCLIENT_WXSIZE_pure( wxPlArtProvider,
  wxArtProvider, CreateBitmap );
#if WXPERL_W_VERSION_GE( 2, 9, 0 )
DEF_V_CBACK_WXICONBUNDLE__WXARTID_WXARTCLIENT_pure( wxPlArtProvider,
  wxArtProvider, CreateIconBundle );
#endif

#if WXPERL_W_VERSION_GE( 2, 5, 1 )
WXPLI_IMPLEMENT_DYNAMIC_CLASS( wxPlArtProvider, wxArtProvider );
#else
WXPLI_IMPLEMENT_DYNAMIC_CLASS( wxPlArtProvider, wxObject );
#endif



