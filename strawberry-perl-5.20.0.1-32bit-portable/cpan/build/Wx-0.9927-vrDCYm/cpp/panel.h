/////////////////////////////////////////////////////////////////////////////
// Name:        cpp/panel.h
// Purpose:     c++ wrapper for wxPanel
// Author:      Mattia Barbon
// Modified by:
// Created:     29/10/2000
// RCS-ID:      $Id: panel.h 2057 2007-06-18 23:03:00Z mbarbon $
// Copyright:   (c) 2000-2001, 2004 Mattia Barbon
// Licence:     This program is free software; you can redistribute it and/or
//              modify it under the same terms as Perl itself
/////////////////////////////////////////////////////////////////////////////

class wxPliPanel:public wxPanel
{
    WXPLI_DECLARE_DYNAMIC_CLASS( wxPliPanel );
    WXPLI_DECLARE_V_CBACK();
public:
    WXPLI_DEFAULT_CONSTRUCTOR( wxPliPanel, "Wx::Panel", true );
    WXPLI_CONSTRUCTOR_6( wxPliPanel, "Wx::Panel", true,
                         wxWindow*, wxWindowID, const wxPoint&,
                         const wxSize&, long, const wxString& );

    DEC_V_CBACK_BOOL__VOID( TransferDataFromWindow );
    DEC_V_CBACK_BOOL__VOID( TransferDataToWindow );
    DEC_V_CBACK_BOOL__VOID( Validate );
};

DEF_V_CBACK_BOOL__VOID( wxPliPanel, wxPanel, TransferDataFromWindow );
DEF_V_CBACK_BOOL__VOID( wxPliPanel, wxPanel, TransferDataToWindow );
DEF_V_CBACK_BOOL__VOID( wxPliPanel, wxPanel, Validate );

WXPLI_IMPLEMENT_DYNAMIC_CLASS( wxPliPanel, wxPanel );

// Local variables: //
// mode: c++ //
// End: //
