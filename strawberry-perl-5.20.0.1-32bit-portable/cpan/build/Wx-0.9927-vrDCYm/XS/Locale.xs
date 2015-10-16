#############################################################################
## Name:        XS/Locale.xs
## Purpose:     XS for Wx::Locale
## Author:      Mattia Barbon
## Modified by:
## Created:     30/11/2000
## RCS-ID:      $Id: Locale.xs 3125 2011-11-21 02:47:30Z mdootson $
## Copyright:   (c) 2000-2007, 2010-2011 Mattia Barbon
## Licence:     This program is free software; you can redistribute it and/or
##              modify it under the same terms as Perl itself
#############################################################################

#include <wx/intl.h>

MODULE=Wx PACKAGE=Wx::LanguageInfo

wxLanguageInfo*
wxLanguageInfo::new( language, canonicalName, winLang, winSublang, descr )
    int language
    wxString canonicalName
    int winLang
    int winSublang
    wxString descr
  CODE:
    RETVAL = new wxLanguageInfo;
    RETVAL->Language = language;
    RETVAL->CanonicalName = canonicalName;
#if defined( __WXMSW__ )
    RETVAL->WinLang = winLang;
    RETVAL->WinSublang = winSublang;
#endif
    RETVAL->Description = descr;
  OUTPUT: RETVAL

static void
wxLanguageInfo::CLONE()
  CODE:
    wxPli_thread_sv_clone( aTHX_ CLASS, (wxPliCloneSV)wxPli_detach_object );

## // thread OK
void
wxLanguageInfo::DESTROY()
  CODE:
    if( wxPli_object_is_deleteable( aTHX_ ST(0) ) )
        delete THIS;

int
wxLanguageInfo::GetLanguage()
  CODE:
    RETVAL = THIS->Language;
  OUTPUT: RETVAL

wxString
wxLanguageInfo::GetCanonicalName()
  CODE:
    RETVAL = THIS->CanonicalName;
  OUTPUT: RETVAL

unsigned int
wxLanguageInfo::GetWinLang()
  CODE:
#if defined( __WXMSW__ )
    RETVAL = THIS->WinLang;
#else
    RETVAL = 0;
#endif
  OUTPUT: RETVAL

unsigned int
wxLanguageInfo::GetWinSublang()
  CODE:
#if defined( __WXMSW__ )
    RETVAL = THIS->WinSublang;
#else
    RETVAL = 0;
#endif
  OUTPUT: RETVAL

wxString
wxLanguageInfo::GetDescription()
  CODE:
    RETVAL = THIS->Description;
  OUTPUT: RETVAL

MODULE=Wx PACKAGE=Wx::Locale

#if WXPERL_W_VERSION_GE( 2, 9, 1 )
#define wxPL_LOCALE_CTOR_FLAGS wxLOCALE_LOAD_DEFAULT
#define wxPL_LOCALE_CONVERT_ENCODING true
#else
#define wxPL_LOCALE_CTOR_FLAGS wxLOCALE_LOAD_DEFAULT|wxLOCALE_CONV_ENCODING
#define wxPL_LOCALE_CONVERT_ENCODING false
#endif

wxLocale*
newLong( name, shorts = NULL, locale = NULL, loaddefault = true, convertencoding = wxPL_LOCALE_CONVERT_ENCODING )
    const wxChar* name
    const wxChar* shorts = NO_INIT
    const wxChar* locale = NO_INIT
    bool loaddefault
    bool convertencoding
  CODE:
    wxString shorts_tmp, locale_tmp;
    
    if( items < 2 ) shorts = NULL;
    else
    {
        WXSTRING_INPUT( shorts_tmp, const char*, ST(1) );
        shorts = shorts_tmp.c_str();
    }

    if( items < 3 ) locale = NULL;
    else
    {
        WXSTRING_INPUT( locale_tmp, const char*, ST(2) );
        locale = locale_tmp.c_str();
    }

    RETVAL = new wxLocale( name, shorts,
        ( locale && wxStrlen( locale ) ) ? locale : NULL,
        loaddefault, convertencoding );
  OUTPUT:
    RETVAL

wxLocale*
newShort( language, flags = wxPL_LOCALE_CTOR_FLAGS )
    int language
    int flags
  CODE:
    RETVAL = new wxLocale( language, flags );
  OUTPUT:
    RETVAL

static void
wxLocale::CLONE()
  CODE:
    wxPli_thread_sv_clone( aTHX_ CLASS, (wxPliCloneSV)wxPli_detach_object );

## // thread OK
void
wxLocale::DESTROY()
  CODE:
    wxPli_thread_sv_unregister( aTHX_ "Wx::Locale", THIS, ST(0) );
    delete THIS;

bool
wxLocale::AddCatalog( domain )
    wxString domain

void
wxLocale::AddCatalogLookupPathPrefix( prefix )
    wxString prefix

#if WXPERL_W_VERSION_GE( 2, 7, 2 )

bool
IsAvailable( lang )
    int lang
  CODE:
    RETVAL = wxLocale::IsAvailable( lang );
  OUTPUT: RETVAL

#endif

void
AddLanguage( info )
    wxLanguageInfo* info
  CODE:
    wxLocale::AddLanguage( *info );

const wxChar*
wxLocale::GetLocale()

wxString
wxLocale::GetName()

const wxChar*
wxLocale::GetString( string, domain = NULL )
    const wxChar* string
    const wxChar* domain

#if WXPERL_W_VERSION_GE( 2, 5, 3 )

wxString
wxLocale::GetHeaderValue( header, domain = NULL )
    const wxChar* header
    const wxChar* domain

#endif

int
GetSystemLanguage()
  CODE:
    RETVAL = wxLocale::GetSystemLanguage();
  OUTPUT:
    RETVAL

int
wxLocale::GetLanguage()

#if WXPERL_W_VERSION_GE( 2, 5, 1 )

wxString
wxLocale::GetLanguageName( lang )
    int lang

#endif

wxString
wxLocale::GetSysName()

wxString
wxLocale::GetCanonicalName()

wxFontEncoding
GetSystemEncoding()
  CODE:
    RETVAL = wxLocale::GetSystemEncoding();
  OUTPUT:
    RETVAL

wxString
GetSystemEncodingName()
  CODE:
    RETVAL = wxLocale::GetSystemEncodingName();
  OUTPUT:
    RETVAL

bool
wxLocale::IsLoaded( domain )
    const wxChar* domain

bool
wxLocale::IsOk()

const wxLanguageInfo*
FindLanguageInfo( name )
    wxString name
  CODE:
    RETVAL = wxLocale::FindLanguageInfo( name );
  OUTPUT:
    RETVAL
  CLEANUP:
    if( ST(0) != NULL )
    	wxPli_object_set_deleteable( aTHX_ ST(0), false );

bool
wxLocale::Init( language, flags = wxLOCALE_LOAD_DEFAULT|wxLOCALE_CONV_ENCODING )
    int language
    int flags

const wxLanguageInfo*
GetLanguageInfo( language )
    int language
  CODE:
    RETVAL = wxLocale::GetLanguageInfo( language );
  OUTPUT:
    RETVAL
  CLEANUP:
    if( ST(0) != NULL )
    	wxPli_object_set_deleteable( aTHX_ ST(0), false );

MODULE=Wx PACKAGE=Wx PREFIX=wx

void
wxGetTranslation( ... )
  PPCODE:
    BEGIN_OVERLOAD()
        MATCH_REDISP_FUNCTION( wxPliOvl_s, Wx::GetTranslationNormal )   
        MATCH_REDISP_FUNCTION( wxPliOvl_s_s_n, Wx::GetTranslationPlural )
    END_OVERLOAD( "Wx::GetTranslation" )

const wxChar*
wxGetTranslationNormal( string )
    const wxChar* string
  CODE:
    RETVAL = wxGetTranslation( string );
  OUTPUT:
    RETVAL

const wxChar*
wxGetTranslationPlural( string, plural, n )
    const wxChar* string
    const wxChar* plural
    size_t n
  CODE:
    RETVAL = wxGetTranslation( string, plural, n );
  OUTPUT:
    RETVAL
