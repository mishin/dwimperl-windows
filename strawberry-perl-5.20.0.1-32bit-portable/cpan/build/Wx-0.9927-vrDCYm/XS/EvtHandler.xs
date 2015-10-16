#############################################################################
## Name:        XS/EvtHandler.xs
## Purpose:     XS for Wx::EvtHandler
## Author:      Mattia Barbon
## Modified by:
## Created:     26/11/2000
## RCS-ID:      $Id: EvtHandler.xs 3379 2012-09-26 22:35:22Z mdootson $
## Copyright:   (c) 2000-2003, 2005, 2008 Mattia Barbon
## Licence:     This program is free software; you can redistribute it and/or
##              modify it under the same terms as Perl itself
#############################################################################

MODULE=Wx PACKAGE=Wx::EvtHandler

wxEvtHandler*
wxEvtHandler::new()
  CODE:
    RETVAL = new wxEvtHandler();
    wxPli_create_evthandler( aTHX_ RETVAL, CLASS );
  OUTPUT:
    RETVAL

#if WXPERL_W_VERSION_GE( 2, 9, 3 )
void
AddFilter( filter )
    wxEventFilter* filter
  CODE:
    wxEvtHandler::AddFilter( filter );
    
void
RemoveFilter( filter )
    wxEventFilter* filter
  CODE:
    wxEvtHandler::RemoveFilter( filter );
    
#endif // end if WXPERL_W_VERSION_GE( 2, 9, 3 )

void
wxEvtHandler::AddPendingEvent( event )
    wxEvent* event
  CODE:
    THIS->AddPendingEvent( *event );

void
wxEvtHandler::Connect( id, lastid, type, method )
    wxWindowID id
    int lastid
    wxEventType type
    SV* method
  CODE:
    if( SvOK( method ) )
    {
        THIS->Connect( id, lastid, type,
                       wxPliCastEvtHandler( &wxPliEventCallback::Handler ),
                       new wxPliEventCallback( method, ST(0) ) );
    }
    else
    {
        THIS->Disconnect( id, lastid, type,
                          wxPliCastEvtHandler( &wxPliEventCallback::Handler ),
                          0 );
    }

void
wxEvtHandler::Destroy()
  CODE:
    delete THIS;

bool
wxEvtHandler::Disconnect( id, lastid, type )
    wxWindowID id
    int lastid
    wxEventType type
  CODE:
    RETVAL = THIS->Disconnect( id, lastid, type,
        wxPliCastEvtHandler( &wxPliEventCallback::Handler ) );
  OUTPUT:
    RETVAL

bool
wxEvtHandler::GetEvtHandlerEnabled()

wxEvtHandler*
wxEvtHandler::GetNextHandler()

wxEvtHandler*
wxEvtHandler::GetPreviousHandler()

bool
wxEvtHandler::ProcessEvent( event )
    wxEvent* event
  C_ARGS: *event

#if WXPERL_W_VERSION_GE( 2, 9, 0 )

bool
wxEvtHandler::SafelyProcessEvent( event );
    wxEvent* event
  C_ARGS: *event

#endif

void
wxEvtHandler::SetEvtHandlerEnabled( enabled )
    bool enabled

void
wxEvtHandler::SetNextHandler( handler )
    wxEvtHandler* handler

void
wxEvtHandler::SetPreviousHandler( handler )
    wxEvtHandler* handler

#if WXPERL_W_VERSION_GE( 2, 9, 1 )

bool
wxEvtHandler::ProcessEventLocally( event )
    wxEvent* event
  C_ARGS: *event
  
#endif
