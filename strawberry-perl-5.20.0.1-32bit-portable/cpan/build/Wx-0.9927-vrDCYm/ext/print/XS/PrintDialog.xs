#############################################################################
## Name:        ext/print/XS/PrintDialog.xs
## Purpose:     XS for Wx::PrintDialog
## Author:      Mattia Barbon
## Modified by:
## Created:     02/06/2001
## RCS-ID:      $Id: PrintDialog.xs 3163 2012-03-01 00:54:35Z mdootson $
## Copyright:   (c) 2001, 2004 Mattia Barbon
## Licence:     This program is free software; you can redistribute it and/or
##              modify it under the same terms as Perl itself
#############################################################################

#include <wx/printdlg.h>
#include <wx/dc.h>

MODULE=Wx PACKAGE=Wx::PrintDialog

wxPrintDialog*
wxPrintDialog::new( parent, data = 0 )
    wxWindow* parent
    wxPrintDialogData* data

wxPrintDialogData*
wxPrintDialog::GetPrintDialogData()
  CODE:
    RETVAL = new wxPrintDialogData( THIS->GetPrintDialogData() );
  OUTPUT:
    RETVAL

wxDC*
wxPrintDialog::GetPrintDC()

int
wxPrintDialog::ShowModal()
