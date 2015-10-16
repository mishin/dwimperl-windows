#############################################################################
## Name:        ext/html/XS/HtmlEasyPrinting.xs
## Purpose:     XS for Wx::HtmlEasyPrinting
## Author:      Mattia Barbon
## Modified by:
## Created:     04/05/2001
## RCS-ID:      $Id: HtmlEasyPrinting.xs 2134 2007-08-11 21:32:25Z mbarbon $
## Copyright:   (c) 2001-2004, 2006-2007 Mattia Barbon
## Licence:     This program is free software; you can redistribute it and/or
##              modify it under the same terms as Perl itself
#############################################################################

#include <wx/html/htmprint.h>

MODULE=Wx PACKAGE=Wx::HtmlEasyPrinting

#if WXPERL_W_VERSION_GE( 2, 5, 1 )

wxHtmlEasyPrinting*
wxHtmlEasyPrinting::new( wxString name = wxT("Printing"), \
                         wxWindow* parent = 0 )

#else

wxHtmlEasyPrinting*
wxHtmlEasyPrinting::new( name = wxT("Printing"), parent_frame = 0 )
    wxString name
    wxFrame* parent_frame

#endif

static void
wxHtmlEasyPrinting::CLONE()
  CODE:
    wxPli_thread_sv_clone( aTHX_ CLASS, (wxPliCloneSV)wxPli_detach_object );

## // thread OK
void
wxHtmlEasyPrinting::DESTROY()
  CODE:
    wxPli_thread_sv_unregister( aTHX_ "Wx::HtmlEasyPrinting", THIS, ST(0) );
    delete THIS;

bool
wxHtmlEasyPrinting::PreviewFile( htmlFile )
    wxString htmlFile

bool
wxHtmlEasyPrinting::PreviewText( htmlText, basepath = wxEmptyString )
    wxString htmlText
    wxString basepath

bool
wxHtmlEasyPrinting::PrintFile( htmlFile )
    wxString htmlFile

bool
wxHtmlEasyPrinting::PrintText( htmlText, basepath = wxEmptyString )
    wxString htmlText
    wxString basepath

#if WXPERL_W_VERSION_LE( 2, 5, 2 )

void
wxHtmlEasyPrinting::PrinterSetup()

#endif

void
wxHtmlEasyPrinting::PageSetup()

void
wxHtmlEasyPrinting::SetHeader( header, pg = wxPAGE_ALL )
    wxString header
    int pg

void
wxHtmlEasyPrinting::SetFonts( normal_face, fixed_face, sizes )
    wxString normal_face
    wxString fixed_face
    SV* sizes
  PREINIT:
    int* array;
    int n = wxPli_av_2_intarray( aTHX_ sizes, &array );
  CODE:
    if( n != 7 )
    {
       delete[] array;
       croak( "Specified %d sizes, 7 wanted", n );
    }
    THIS->SetFonts( normal_face, fixed_face, array );
    delete[] array;    
    
void
wxHtmlEasyPrinting::SetFooter( header, pg = wxPAGE_ALL )
    wxString header
    int pg

wxPrintData*
wxHtmlEasyPrinting::GetPrintData()

wxPageSetupDialogData*
wxHtmlEasyPrinting::GetPageSetupData()

#if WXPERL_W_VERSION_GE( 2, 9, 0 )

wxWindow*
wxHtmlEasyPrinting::GetParentWindow()

void
wxHtmlEasyPrinting::SetParentWindow( window )
    wxWindow* window

#endif
