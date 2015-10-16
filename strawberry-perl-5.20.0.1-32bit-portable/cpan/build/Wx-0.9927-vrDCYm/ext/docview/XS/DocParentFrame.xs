#############################################################################
## Name:        ext/docview/XS/DocParentFrame.xs
## Purpose:     XS for wxDocParentFrame (Document/View Framework)
## Author:      Simon Flack
## Modified by:
## Created:     11/09/2002
## RCS-ID:      $Id: DocParentFrame.xs 2057 2007-06-18 23:03:00Z mbarbon $
## Copyright:   (c) 2001, 2004 Mattia Barbon
## Licence:     This program is free software; you can redistribute it and/or
##              modify it under the same terms as Perl itself
#############################################################################

MODULE=Wx PACKAGE=Wx::DocParentFrame

wxDocParentFrame *
wxDocParentFrame::new( manager, frame, id, title, pos = wxDefaultPosition, size = wxDefaultSize, style = wxDEFAULT_FRAME_STYLE, name = wxFrameNameStr)
    wxDocManager* manager
    wxFrame* frame
    wxWindowID id
    wxString title
    wxPoint pos
    wxSize size
    long style
    wxString name
  CODE:
    RETVAL=new wxPliDocParentFrame(CLASS, manager, frame, id, title, pos, size, style, name);
  OUTPUT:
    RETVAL

## Some event stuff missing here

wxDocManager*
wxDocParentFrame::GetDocumentManager()

