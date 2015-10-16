#############################################################################
## Name:        ext/docview/XS/DocChildFrame.xs
## Purpose:     XS for wxDocChildFrame (Document/View framwork)
## Author:      Simon Flack
## Modified by:
## Created:     11/09/2002
## RCS-ID:      $Id: DocChildFrame.xs 2057 2007-06-18 23:03:00Z mbarbon $
## Copyright:   (c) 2001, 2004 Mattia Barbon
## Licence:     This program is free software; you can redistribute it and/or
##              modify it under the same terms as Perl itself
#############################################################################

MODULE=Wx PACKAGE=Wx::DocChildFrame

wxDocChildFrame *
wxDocChildFrame::new(doc, view, frame, id, title, pos = wxDefaultPosition, size = wxDefaultSize, style = wxDEFAULT_FRAME_STYLE, name = wxFrameNameStr)
    wxDocument* doc
    wxView* view
    wxFrame* frame
    wxWindowID id
    wxString title
    wxPoint pos
    wxSize size
    long style
    wxString name
  CODE:
    RETVAL=new wxPliDocChildFrame(CLASS, doc, view, frame, id, title, pos, size, style, name);
  OUTPUT:
    RETVAL

wxDocument *
wxDocChildFrame::GetDocument()

wxView *
wxDocChildFrame::GetView()

void
wxDocChildFrame::SetDocument( doc )
    wxDocument* doc

void
wxDocChildFrame::SetView( view )
    wxView* view

bool
wxDocChildFrame::Destroy()

## Some event stuff missing here

