#include <exception>
#undef  xsp_constructor_class
#define xsp_constructor_class(c) (c)




class wxPlEventFilter : public wxEventFilter
{
    WXPLI_DECLARE_V_CBACK();
public:
    wxPlEventFilter( const char* package )
      : wxEventFilter(),
        m_callback( "Wx::EventFilter" )
    {
        dTHX;
        m_callback.SetSelf( wxPli_non_object_2_sv(aTHX_ sv_newmortal(), this, package ), true );
    }
    
    virtual int FilterEvent(wxEvent& event)
    {
        dTHX;
        
        if( wxPliFCback( aTHX_ &m_callback, "FilterEvent" ) )
        {
            // code from e_cback.h
            
            dSP;
        
            ENTER;
            SAVETMPS;
            
            int retval;
            
            {
                wxPliGuard guard;
                SV* e = 0;
                SV* rv = 0;
    
                wxClassInfo *ci = event.GetClassInfo();
                const wxChar* classname = ci->GetClassName();
                if( wcsncmp( classname, wxT("wxPl"), 4 ) == 0 ) 
                {
                    wxPliClassInfo* cci = (wxPliClassInfo*)ci;
                    wxPliSelfRef* sr = cci->m_func( &event );
                
                    if( sr )
                    {
                        // this needs to have the refcount incremented, otherwise
                        // the refcount will be decremented one time too much when
                        // exiting from the handler
                        e = sv_2mortal( newRV_inc( SvRV( sr->m_self ) ) );
                    }
                }
        
                if( !e )
                {
                    char buffer[WXPL_BUF_SIZE];
                    const char* CLASS = wxPli_cpp_class_2_perl( classname, buffer );
        
                    e = sv_newmortal();
                    sv_setref_pv( e, CHAR_P CLASS, &event );
                    rv = SvRV( e );
                    // corner case: prevent destruction if referrer is
                    // destroyed
                    SvREFCNT_inc( rv );
                    sv_2mortal( rv );
                    guard.SetSV( rv );
                    wxPli_thread_sv_register( aTHX_ CLASS, &event, e );
                }
        
                PUSHMARK( SP );
                XPUSHs( m_callback.GetSelf() );
                XPUSHs( e );
                PUTBACK;
                
                SV* method = sv_2mortal( newRV_inc( (SV*) m_callback.GetMethod() ) );
                call_sv( method, G_SCALAR );
    
                SPAGAIN;
                
                retval = POPi;    
            }
            
            PUTBACK;
            FREETMPS;
            LEAVE;
            
            return retval;
        }
        else
            return -1; // constant Event_Skip
    }
    
};



