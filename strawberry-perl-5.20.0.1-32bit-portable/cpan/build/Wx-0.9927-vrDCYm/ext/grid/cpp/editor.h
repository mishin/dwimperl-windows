/////////////////////////////////////////////////////////////////////////////
// Name:        ext/grid/cpp/editor.h
// Purpose:     wxPlGridCellEditor
// Author:      Mattia Barbon
// Modified by:
// Created:     28/05/2003
// RCS-ID:      $Id: editor.h 3514 2014-03-31 14:07:45Z mdootson $
// Copyright:   (c) 2003-2005, 2009 Mattia Barbon
// Licence:     This program is free software; you can redistribute it and/or
//              modify it under the same terms as Perl itself
/////////////////////////////////////////////////////////////////////////////

#include "cpp/v_cback.h"
#if WXPERL_W_VERSION_GE( 2, 9, 5 )
#include <wx/dc.h>
#endif
#include <wx/clntdata.h>
#include "cpp/helpers.h"

#define DEC_V_CBACK_BOOL__INT_INT_cWXGRID_WXSTRING_WXSTRINGp( METHOD ) \
    bool METHOD( int, int, const wxGrid*, const wxString&, wxString* )

#define DEF_V_CBACK_BOOL__INT_INT_cWXGRID_WXSTRING_WXSTRINGp_pure( CLASS, BASE, METHOD )\
  bool CLASS::METHOD( int p1, int p2, const wxGrid* p3, const wxString& p4, wxString* p5 ) \
  {                                                                           \
    dTHX;                                                                     \
    if( wxPliVirtualCallback_FindCallback( aTHX_ &m_callback, #METHOD ) )     \
    {                                                                         \
        wxAutoSV ret( aTHX_ wxPliCCback( aTHX_ &m_callback, G_SCALAR,         \
                                         "iiOP", p1, p2, p3, &p4 ) );         \
        WXSTRING_INPUT( *p5, const char *, ret );                             \
        return SvOK( ret );                                                   \
    } else                                                                    \
        return false;                                                         \
  }

#define DEC_V_CBACK_VOID__INT_INT_WXGRID_pure( METHOD ) \
  void METHOD( int, int, wxGrid* )

#define DEF_V_CBACK_VOID__INT_INT_WXGRID_pure( CLASS, BASE, METHOD ) \
  void CLASS::METHOD( int param1, int param2, wxGrid* param3 )                \
  {                                                                           \
    dTHX;                                                                     \
    if( wxPliVirtualCallback_FindCallback( aTHX_ &m_callback, #METHOD ) )     \
    {                                                                         \
        wxPliVirtualCallback_CallCallback( aTHX_ &m_callback,                 \
                                           G_SCALAR|G_DISCARD,                \
                                           "iiO", param1, param2, param3 );   \
    }                                                                         \
  }

#define DEC_V_CBACK_BOOL__INT_INT_WXGRID_pure( METHOD ) \
  bool METHOD( int, int, wxGrid* )

#define DEF_V_CBACK_BOOL__INT_INT_WXGRID_pure( CLASS, BASE, METHOD ) \
  bool CLASS::METHOD( int param1, int param2, wxGrid* param3 )                \
  {                                                                           \
    dTHX;                                                                     \
    if( wxPliVirtualCallback_FindCallback( aTHX_ &m_callback, #METHOD ) )     \
    {                                                                         \
        SV* ret = wxPliVirtualCallback_CallCallback( aTHX_ &m_callback,       \
                                                     G_SCALAR,                \
                                                     "iiO", param1, param2,   \
                                                     param3 );                \
        bool bret = SvTRUE( ret );                                            \
        SvREFCNT_dec( ret );                                                  \
        return bret;                                                          \
    }                                                                         \
    return false;                                                             \
  }

#define DEC_V_CBACK_BOOL__WXKEYEVENT( METHOD ) \
  bool METHOD( wxKeyEvent& event )

#define DEF_V_CBACK_BOOL__WXKEYEVENT( CLASS, BASE, METHOD ) \
  bool CLASS::METHOD( wxKeyEvent& param1 )                                    \
  {                                                                           \
    dTHX;                                                                     \
    if( wxPliVirtualCallback_FindCallback( aTHX_ &m_callback, #METHOD ) )     \
    {                                                                         \
        SV* evt = wxPli_object_2_sv( aTHX_ newSViv( 0 ), &param1 );           \
        SV* ret = wxPliVirtualCallback_CallCallback( aTHX_ &m_callback,       \
                                                     G_SCALAR,                \
                                                     "S", evt );              \
        bool val = SvTRUE( ret );                                             \
        sv_setiv( SvRV( evt ), 0 );                                           \
        SvREFCNT_dec( evt );                                                  \
        SvREFCNT_dec( ret );                                                  \
        return val;                                                           \
    } else                                                                    \
        return BASE::METHOD( param1 );                                        \
  }

#define DEC_V_CBACK_VOID__WXKEYEVENT( METHOD ) \
  void METHOD( wxKeyEvent& event )

#define DEF_V_CBACK_VOID__WXKEYEVENT( CLASS, BASE, METHOD ) \
  void CLASS::METHOD( wxKeyEvent& param1 )                                    \
  {                                                                           \
    dTHX;                                                                     \
    if( wxPliVirtualCallback_FindCallback( aTHX_ &m_callback, #METHOD ) )     \
    {                                                                         \
        SV* evt = wxPli_object_2_sv( aTHX_ newSViv( 0 ), &param1 );           \
        wxPliVirtualCallback_CallCallback( aTHX_ &m_callback,                 \
                                           G_SCALAR|G_DISCARD,                \
                                           "S", evt );                        \
        sv_setiv( SvRV( evt ), 0 );                                           \
        SvREFCNT_dec( evt );                                                  \
    } else                                                                    \
        BASE::METHOD( param1 );                                               \
  }

class wxPlGridCellEditor : public wxGridCellEditor
{
public:
    wxPliVirtualCallback m_callback;
public:
    wxPlGridCellEditor( const char* package )
        : m_callback( "Wx::PlGridCellEditor" )
    {
        m_callback.SetSelf( wxPli_make_object( this, package ), true );
    }

    void Create( wxWindow* parent, wxWindowID id, wxEvtHandler* evtHandler )
    {
        dTHX;

        if( wxPliVirtualCallback_FindCallback( aTHX_ &m_callback, "Create" ) )
        {
            wxPliVirtualCallback_CallCallback( aTHX_ &m_callback,
                                               G_DISCARD|G_SCALAR,
                                               "OiO", parent, id,
                                               evtHandler );
        }
    }

    void SetSize( const wxRect& rect )
    {
        dTHX;

        if( wxPliVirtualCallback_FindCallback( aTHX_ &m_callback, "SetSize" ) )
        {
            wxPliVirtualCallback_CallCallback( aTHX_ &m_callback,
                                               G_DISCARD|G_SCALAR,
                                               "o", new wxRect( rect ),
                                               "Wx::Rect" );
        } else
            wxGridCellEditor::SetSize( rect );
    }

    void Show( bool show, wxGridCellAttr* attr )
    {
        dTHX;

        if( wxPliVirtualCallback_FindCallback( aTHX_ &m_callback, "Show" ) )
        {
            ENTER;
            SAVETMPS;

            SV* attr_sv = wxPli_non_object_2_sv( aTHX_ sv_newmortal(),
                                                 &attr, "Wx::GridCellAttr" );

            wxPliVirtualCallback_CallCallback( aTHX_ &m_callback,
                                               G_DISCARD|G_SCALAR,
                                               "bs", show, attr_sv );

            wxPli_detach_object( aTHX_ attr_sv );

            FREETMPS;
            LEAVE;
        } else
            wxGridCellEditor::Show( show, attr );
    }

#if WXPERL_W_VERSION_LT( 2, 9, 5 )

    void PaintBackground( const wxRect& rect, wxGridCellAttr* attr )
    {
        dTHX;

        if( wxPliVirtualCallback_FindCallback( aTHX_ &m_callback, "PaintBackground" ) )
        {
            ENTER;
            SAVETMPS;
            
            SV* attr_sv = wxPli_non_object_2_sv( aTHX_ sv_newmortal(),
                                                 &attr, "Wx::GridCellAttr" );

            wxPliVirtualCallback_CallCallback( aTHX_ &m_callback,
                                               G_DISCARD|G_SCALAR,
                                               "os", new wxRect( rect ),
                                               attr_sv );

            wxPli_detach_object( aTHX_ attr_sv );

            FREETMPS;
            LEAVE;
        } else
            wxGridCellEditor::PaintBackground( rect, attr );
    }

#else
    
    virtual void PaintBackground( wxDC& dc, const wxRect& rect, const wxGridCellAttr& attr )
    {
        dTHX;

        if( wxPliVirtualCallback_FindCallback( aTHX_ &m_callback, "PaintBackground" ) )
        {
            ENTER;
            SAVETMPS;
            
            SV* attr_sv  = wxPli_non_object_2_sv( aTHX_ sv_newmortal(),
                                                 &attr, "Wx::GridCellAttr" );
            SV* dc_sv    = wxPli_object_2_sv( aTHX_ sv_newmortal(), &dc );
            SV* rect_sv  = wxPli_non_object_2_sv( aTHX_ sv_newmortal(),
                                                 (void*)&rect, "Wx::Rect" );

            wxPliVirtualCallback_CallCallback
                ( aTHX_ &m_callback, G_DISCARD|G_SCALAR,
                  "sss", dc_sv, rect_sv, attr_sv );

            wxPli_detach_object( aTHX_ attr_sv );
            wxPli_detach_object( aTHX_ dc_sv );
            wxPli_detach_object( aTHX_ rect_sv );
            
            FREETMPS;
            LEAVE;
        } else
            wxGridCellEditor::PaintBackground( dc, rect, attr );
    }
    
#endif

    virtual wxGridCellEditor* Clone() const
    {
        dTHX;

        if( wxPliVirtualCallback_FindCallback( aTHX_ &m_callback, "Clone" ) )
        {
            SV* ret = wxPliVirtualCallback_CallCallback
                ( aTHX_ &m_callback, G_SCALAR, NULL );
            wxGridCellEditor* clone =
                (wxGridCellEditor*)wxPli_sv_2_object( aTHX_ ret, "Wx::GridCellEditor" );
            SvREFCNT_dec( ret );
        
            return clone;
        }

        return 0;
    }

    virtual wxString GetValue() const { return wxEmptyString; }

    DEC_V_CBACK_VOID__INT_INT_WXGRID_pure( BeginEdit );
#if WXPERL_W_VERSION_GE( 2, 9, 0 )
    DEC_V_CBACK_VOID__INT_INT_WXGRID_pure( ApplyEdit );
    DEC_V_CBACK_BOOL__INT_INT_cWXGRID_WXSTRING_WXSTRINGp( EndEdit );
#else
    DEC_V_CBACK_BOOL__INT_INT_WXGRID_pure( EndEdit );
#endif
    DEC_V_CBACK_VOID__VOID( Reset );
    DEC_V_CBACK_VOID__VOID( Destroy );
    DEC_V_CBACK_VOID__VOID( StartingClick );
    DEC_V_CBACK_BOOL__WXKEYEVENT( IsAcceptedKey );
    DEC_V_CBACK_VOID__WXKEYEVENT( StartingKey );
    DEC_V_CBACK_VOID__WXKEYEVENT( HandleReturn );
};

DEF_V_CBACK_VOID__INT_INT_WXGRID_pure( wxPlGridCellEditor, wxGridCellEditor, BeginEdit );
#if WXPERL_W_VERSION_GE( 2, 9, 0 )
DEF_V_CBACK_VOID__INT_INT_WXGRID_pure( wxPlGridCellEditor, wxGridCellEditor, ApplyEdit );
DEF_V_CBACK_BOOL__INT_INT_cWXGRID_WXSTRING_WXSTRINGp_pure( wxPlGridCellEditor, wxGridCellEditor, EndEdit );
#else
DEF_V_CBACK_BOOL__INT_INT_WXGRID_pure( wxPlGridCellEditor, wxGridCellEditor, EndEdit );
#endif
DEF_V_CBACK_VOID__VOID_pure( wxPlGridCellEditor, wxGridCellEditor, Reset );
DEF_V_CBACK_VOID__VOID( wxPlGridCellEditor, wxGridCellEditor, Destroy );
DEF_V_CBACK_VOID__VOID( wxPlGridCellEditor, wxGridCellEditor, StartingClick );
DEF_V_CBACK_BOOL__WXKEYEVENT( wxPlGridCellEditor, wxGridCellEditor, IsAcceptedKey );
DEF_V_CBACK_VOID__WXKEYEVENT( wxPlGridCellEditor, wxGridCellEditor, StartingKey );
DEF_V_CBACK_VOID__WXKEYEVENT( wxPlGridCellEditor, wxGridCellEditor, HandleReturn );

