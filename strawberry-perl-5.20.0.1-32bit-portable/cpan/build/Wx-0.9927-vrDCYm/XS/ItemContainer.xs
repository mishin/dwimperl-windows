#include <exception>
#undef  xsp_constructor_class
#define xsp_constructor_class(c) (c)


#############################################################################


## Name:        XS/ItemContainer.xsp


## Purpose:     XS for Wx::ItemContainer


## Author:      Mattia Barbon


## Modified by:


## Created:     14/08/2007


## RCS-ID:      $Id: ItemContainer.xsp 2504 2008-11-06 00:25:57Z mbarbon $


## Copyright:   (c) 2007-2008 Mattia Barbon


## Licence:     This program is free software; you can redistribute it and/or


##              modify it under the same terms as Perl itself


#############################################################################


MODULE=Wx

MODULE=Wx PACKAGE=Wx::ItemContainer


void
wxItemContainer::Append( ... )
  PPCODE:
    BEGIN_OVERLOAD()
        MATCH_REDISP( wxPliOvl_arr_arr, AppendItemsData )
        MATCH_REDISP( wxPliOvl_arr, AppendItems )
        MATCH_REDISP( wxPliOvl_s_s, AppendData )
        MATCH_REDISP( wxPliOvl_s, AppendString )
    END_OVERLOAD( Wx::ItemContainer::Append )


void
wxItemContainer::AppendString( wxString item )
  CODE:
    try {
      THIS->Append( item );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxItemContainer::AppendData( wxString item, wxPliUserDataCD* data )
  CODE:
    try {
      THIS->Append( item, data );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxItemContainer::AppendItems( wxArrayString items )
  CODE:
    try {
      THIS->Append( items );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

#if WXPERL_W_VERSION_GE( 2, 9, 0 )
#define XSpp_060c861b_075861

void
wxItemContainer::AppendItemsData( wxArrayString items, wxPliUserDataCD** data )
  CODE:
     THIS->Append( items, (wxClientData**)data ); 

#endif


void
wxItemContainer::Insert( ... )
  PPCODE:
    BEGIN_OVERLOAD()
        MATCH_REDISP( wxPliOvl_arr_n_arr, InsertItemsData )
        MATCH_REDISP( wxPliOvl_arr_n, InsertItems )
        MATCH_REDISP( wxPliOvl_s_n_s, InsertData )
        MATCH_REDISP( wxPliOvl_s_n, InsertString )
    END_OVERLOAD( Wx::ItemContainer::Insert )


void
wxItemContainer::InsertString( wxString item, unsigned int pos )
  CODE:
    try {
      THIS->Insert( item, pos );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxItemContainer::InsertData( wxString item, unsigned int pos, wxPliUserDataCD* data )
  CODE:
    try {
      THIS->Insert( item, pos, data );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

#if WXPERL_W_VERSION_GE( 2, 9, 0 )
#define XSpp_060c861b_049608

void
wxItemContainer::InsertItems( wxArrayString items, unsigned int pos )
  CODE:
    try {
      THIS->Insert( items, pos );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxItemContainer::InsertItemsData( wxArrayString items, unsigned int pos, wxPliUserDataCD** data )
  CODE:
     THIS->Insert( items, pos, (wxClientData**)data ); 

#endif

#if WXPERL_W_VERSION_GE( 2, 9, 0 )
#define XSpp_060c861b_096215


void
wxItemContainer::Set( ... )
  PPCODE:
    BEGIN_OVERLOAD()
        MATCH_REDISP( wxPliOvl_arr_arr, SetItemsData )
        MATCH_REDISP( wxPliOvl_arr, SetItems )
    END_OVERLOAD( Wx::ItemContainer::Set )


void
wxItemContainer::SetItems( wxArrayString items )
  CODE:
    try {
      THIS->Set( items );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxItemContainer::SetItemsData( wxArrayString items, wxPliUserDataCD** data )
  CODE:
     THIS->Set( items, (wxClientData**)data ); 

#endif

void
wxItemContainer::Clear()
  CODE:
    try {
      THIS->Clear();
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxItemContainer::Delete( int n )
  CODE:
    try {
      THIS->Delete( n );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

wxPliUserDataCD*
wxItemContainer::GetClientData( int n )
  CODE:
     RETVAL = (wxPliUserDataCD*) THIS->GetClientObject( n ); 
  OUTPUT: RETVAL

void
wxItemContainer::SetClientData( int n, wxPliUserDataCD* data )
  CODE:
    try {
      THIS->SetClientObject( n, data );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

#if WXPERL_W_VERSION_GE( 2, 9, 0 )
#define XSpp_060c861b_045524

##    bool IsSorted() const;


#endif

