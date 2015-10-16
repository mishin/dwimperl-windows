#include <exception>
#undef  xsp_constructor_class
#define xsp_constructor_class(c) (c)




#define DEC_V_CBACK_WXOBJECT__WXSTRING_pure( METHOD ) \
  wxObject* METHOD( const wxString& )

#define DEF_V_CBACK_WXOBJECT__WXSTRING_pure( CLASS, BASE, METHOD ) \
  wxObject* CLASS::METHOD( const wxString& param1 )                           \
  {                                                                           \
    dTHX;                                                                     \
    if( wxPliVirtualCallback_FindCallback( aTHX_ &m_callback, #METHOD ) )     \
    {                                                                         \
        SV* ret = wxPliVirtualCallback_CallCallback( aTHX_ &m_callback,       \
                                                     G_SCALAR, "P", &param1 );\
        wxObject* val = (wxObject*)wxPli_sv_2_object( aTHX_ ret, NULL );      \
        SvREFCNT_dec( ret );                                                  \
        return val;                                                           \
    }                                                                         \
    return NULL;                                                              \
  }

#include "cpp/v_cback.h"

class wxPliXmlSubclassFactory : public wxXmlSubclassFactory
{
    wxPliVirtualCallback m_callback;
public:
    wxPliXmlSubclassFactory( const char* package )
        : m_callback( "Wx::XmlSubclassFactory" )
    {
        m_callback.SetSelf( wxPli_make_object( this, package ), true );
    }

    DEC_V_CBACK_WXOBJECT__WXSTRING_pure( Create );
};

DEF_V_CBACK_WXOBJECT__WXSTRING_pure( wxPliXmlSubclassFactory, wxXmlSubclassFactory, Create );



