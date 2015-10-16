/////////////////////////////////////////////////////////////////////////////
// Name:        ext/print/Print.xs
// Purpose:     XS for Print Framework
// Author:      Mattia Barbon
// Modified by:
// Created:     04/05/2001
// RCS-ID:      $Id: Print.xs 3300 2012-05-31 00:58:11Z mdootson $
// Copyright:   (c) 2001-2002, 2004-2006, 2008-2010 Mattia Barbon
// Licence:     This program is free software; you can redistribute it and/or
//              modify it under the same terms as Perl itself
/////////////////////////////////////////////////////////////////////////////

#define PERL_NO_GET_CONTEXT

#include "cpp/wxapi.h"
#include "cpp/constants.h"
#include "cpp/overload.h"

#undef THIS

MODULE=Wx__Print

BOOT:
  INIT_PLI_HELPERS( wx_pli_helpers );

#if wxPERL_USE_PRINTING_ARCHITECTURE

INCLUDE: XS/PrintData.xs
INCLUDE: XS/PageSetupDialog.xs
INCLUDE: XS/PageSetupDialogData.xs
INCLUDE: XS/Printer.xs
INCLUDE: XS/PrintDialogData.xs
INCLUDE: XS/PrintPreview.xs
INCLUDE: XS/Printout.xs
INCLUDE: XS/PrintDialog.xs

INCLUDE_COMMAND: $^X -MExtUtils::XSpp::Cmd -e xspp -- -t ../../typemap.xsp XS/Preview.xsp

INCLUDE_COMMAND: $^X -MExtUtils::XSpp::Cmd -e xspp -- -t ../../typemap.xsp XS/PrintFactory.xsp

INCLUDE_COMMAND: $^X -MExtUtils::XSpp::Cmd -e xspp -- -t ../../typemap.xsp XS/PaperDatabase.xsp

#include "cpp/pr_constants.cpp"
#include "cpp/ovl_const.cpp"

#endif

#  //FIXME//tricky
#if defined(__WXMSW__)
#undef XS
#define XS( name ) WXXS( name )
#endif

MODULE=Wx__Print
