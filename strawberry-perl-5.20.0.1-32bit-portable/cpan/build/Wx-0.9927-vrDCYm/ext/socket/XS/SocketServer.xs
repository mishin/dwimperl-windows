#############################################################################
## Name:        ext/socket/XS/SocketServer.xs
## Purpose:     XS for Wx::SocketServer
## Author:      Graciliano M. P.
## Created:     04/03/2003
## RCS-ID:      $Id: SocketServer.xs 2057 2007-06-18 23:03:00Z mbarbon $
## Copyright:   (c) 2003 Graciliano M. P.
## Licence:     This program is free software; you can redistribute it and/or
##              modify it under the same terms as Perl itself
#############################################################################

MODULE=Wx PACKAGE=Wx::SocketServer

wxSocketServer*
wxSocketServer::new( host , port , style = 0 )
    wxString host
    wxString port
    long style
  CODE:
    wxIPV4address addr ;
    addr.Hostname(host) ;
    addr.Service(port) ;
    RETVAL = new wxPlSocketServer( CLASS , addr , style ) ;
  OUTPUT: RETVAL


wxSocketBase*
wxSocketServer::Accept(wait = true)
    bool wait
  CODE:
    // works, more or less; not a good example of C++
    RETVAL = ((wxPlSocketServer*)THIS)->Accept(wait);
  OUTPUT: RETVAL

bool
wxSocketServer::AcceptWith( socket , wait = true )
    wxSocketBase* socket
    bool wait
  CODE:
    RETVAL = THIS->AcceptWith( *socket , wait );
  OUTPUT: RETVAL 


bool
wxSocketServer::WaitForAccept( seconds = -1 , millisecond = 0 )
    long seconds
    long millisecond



