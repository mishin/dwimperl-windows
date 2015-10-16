#include <exception>
#undef  xsp_constructor_class
#define xsp_constructor_class(c) (c)




#define DEC_V_CBACK_BOOL__WXMOUSEEVENT( METHOD ) \
  bool METHOD( wxMouseEvent& event )

#define DEF_V_CBACK_BOOL__WXMOUSEEVENT( CLASS, BASE, METHOD ) \
  bool CLASS::METHOD( wxMouseEvent& param1 )                                  \
  {                                                                           \
    dTHX;                                                                     \
    if( wxPliFCback( aTHX_ &m_callback, #METHOD ) )                           \
    {                                                                         \
        wxAutoSV evt( aTHX_ wxPli_object_2_sv( aTHX_ newSViv( 0 ), &param1 ));\
        wxAutoSV ret( aTHX_ wxPliCCback( aTHX_ &m_callback, G_SCALAR,         \
                                         "S", (SV*) evt ) );                  \
        sv_setiv( SvRV( evt ), 0 );                                           \
        return SvTRUE( ret );                                                 \
    } else                                                                    \
        return BASE::METHOD( param1 );                                        \
  }

class wxPlPopupTransientWindow : public wxPopupTransientWindow
{
    WXPLI_DECLARE_DYNAMIC_CLASS( wxPlPopupTransientWindow );
    WXPLI_DECLARE_V_CBACK();
public:
    WXPLI_DEFAULT_CONSTRUCTOR( wxPlPopupTransientWindow,
                               "Wx::PlPopupTransientWindow", true );
    WXPLI_CONSTRUCTOR_2( wxPlPopupTransientWindow,
                         "Wx::PlPopupTransientWindow", true,
                         wxWindow*, int );

    DEC_V_CBACK_VOID__WXWINDOW( Popup );
    DEC_V_CBACK_VOID__VOID( Dismiss );
    DEC_V_CBACK_BOOL__VOID( CanDismiss );
    DEC_V_CBACK_BOOL__WXMOUSEEVENT( ProcessLeftDown );
    DEC_V_CBACK_BOOL__BOOL( Show );
};

DEF_V_CBACK_VOID__WXWINDOW( wxPlPopupTransientWindow,
                            wxPopupTransientWindow, Popup );
DEF_V_CBACK_VOID__VOID( wxPlPopupTransientWindow,
                        wxPopupTransientWindow, Dismiss );
DEF_V_CBACK_BOOL__VOID( wxPlPopupTransientWindow,
                        wxPopupTransientWindow, CanDismiss );
DEF_V_CBACK_BOOL__WXMOUSEEVENT( wxPlPopupTransientWindow,
                                wxPopupTransientWindow, ProcessLeftDown );
DEF_V_CBACK_BOOL__BOOL( wxPlPopupTransientWindow,
                        wxPopupTransientWindow, Show );

WXPLI_IMPLEMENT_DYNAMIC_CLASS( wxPlPopupTransientWindow,
                               wxPopupTransientWindow );



