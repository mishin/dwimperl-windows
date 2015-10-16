/////////////////////////////////////////////////////////////////////////////
// Name:        cpp/dialog.h
// Purpose:     c++ wrapper for wxDialog
// Author:      Mattia Barbon
// Modified by:
// Created:     29/10/2000
// RCS-ID:      $Id: dialog.h 2057 2007-06-18 23:03:00Z mbarbon $
// Copyright:   (c) 2000-2001, 2004 Mattia Barbon
// Licence:     This program is free software; you can redistribute it and/or
//              modify it under the same terms as Perl itself
/////////////////////////////////////////////////////////////////////////////

class wxPliDialog:public wxDialog
{
    WXPLI_DECLARE_DYNAMIC_CLASS( wxPliDialog );
    WXPLI_DECLARE_V_CBACK();
public:
    WXPLI_DEFAULT_CONSTRUCTOR( wxPliDialog, "Wx::Dialog", true );
    WXPLI_CONSTRUCTOR_7( wxPliDialog, "Wx::Dialog", true,
                         wxWindow*, wxWindowID, const wxString&,
                         const wxPoint&, const wxSize&,
                         long, const wxString& );

    DEC_V_CBACK_BOOL__VOID( TransferDataFromWindow );
    DEC_V_CBACK_BOOL__VOID( TransferDataToWindow );
    DEC_V_CBACK_BOOL__VOID( Validate );
};

DEF_V_CBACK_BOOL__VOID( wxPliDialog, wxDialog, TransferDataFromWindow );
DEF_V_CBACK_BOOL__VOID( wxPliDialog, wxDialog, TransferDataToWindow );
DEF_V_CBACK_BOOL__VOID( wxPliDialog, wxDialog, Validate );

WXPLI_IMPLEMENT_DYNAMIC_CLASS( wxPliDialog, wxDialog );

// Local variables: //
// mode: c++ //
// End: //
