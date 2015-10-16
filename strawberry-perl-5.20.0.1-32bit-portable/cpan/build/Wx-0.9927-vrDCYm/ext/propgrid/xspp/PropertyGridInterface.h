#include <exception>
#undef  xsp_constructor_class
#define xsp_constructor_class(c) (c)


MODULE=Wx
#if WXPERL_W_VERSION_GE( 2, 9, 3 ) && wxUSE_PROPGRID
#define XSpp_0a5561ee_005829

## DECLARE_OVERLOAD( wpge, Wx::PGEditor )


## DECLARE_OVERLOAD( wpgp, Wx::PGProperty )


## DECLARE_OVERLOAD( wdtm, Wx::DateTime )


## DECLARE_OVERLOAD( wobj, Wx::Object )


## DECLARE_OVERLOAD( wvar, Wx::Variant )



MODULE=Wx PACKAGE=Wx::PGPGridInterfaceBase


wxPGProperty*
wxPGPGridInterfaceBase::Append( wxPGProperty* property )
  CODE:
    try {
      wxPli_object_set_deleteable( aTHX_ ST(1), false );
      RETVAL = THIS->Append( property );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL
  CLEANUP:
    wxPli_object_set_deleteable( aTHX_ ST(0), false );

wxPGProperty*
wxPGPGridInterfaceBase::AppendInString( wxString id, wxPGProperty* newProperty )
  CODE:
    try {
      wxPli_object_set_deleteable( aTHX_ ST(2), false );
      RETVAL = THIS->AppendIn( id, newProperty );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL
  CLEANUP:
    wxPli_object_set_deleteable( aTHX_ ST(0), false );

wxPGProperty*
wxPGPGridInterfaceBase::AppendInProperty( wxPGProperty* id, wxPGProperty* newProperty )
  CODE:
    try {
      wxPli_object_set_deleteable( aTHX_ ST(2), false );
      RETVAL = THIS->AppendIn( id, newProperty );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL
  CLEANUP:
    wxPli_object_set_deleteable( aTHX_ ST(0), false );

void
wxPGPGridInterfaceBase::BeginAddChildrenString( wxString id )
  CODE:
    try {
      THIS->BeginAddChildren( id );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxPGPGridInterfaceBase::BeginAddChildrenProperty( wxPGProperty* id )
  CODE:
    try {
      THIS->BeginAddChildren( id );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

bool
wxPGPGridInterfaceBase::ClearSelection( bool validation = false )
  CODE:
    try {
      RETVAL = THIS->ClearSelection( validation );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

void
wxPGPGridInterfaceBase::ClearModifiedStatus()
  CODE:
    try {
      THIS->ClearModifiedStatus();
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

bool
wxPGPGridInterfaceBase::CollapseString( wxString id )
  CODE:
    try {
      RETVAL = THIS->Collapse( id );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

bool
wxPGPGridInterfaceBase::CollapseProperty( wxPGProperty* id )
  CODE:
    try {
      RETVAL = THIS->Collapse( id );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

bool
wxPGPGridInterfaceBase::CollapseAll()
  CODE:
    try {
      RETVAL = THIS->CollapseAll();
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

void
wxPGPGridInterfaceBase::DeletePropertyString( wxString id )
  CODE:
    try {
      THIS->DeleteProperty( id );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxPGPGridInterfaceBase::DeletePropertyProperty( wxPGProperty* id )
  CODE:
    try {
      THIS->DeleteProperty( id );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

bool
wxPGPGridInterfaceBase::DisablePropertyString( wxString id )
  CODE:
    try {
      RETVAL = THIS->DisableProperty( id );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

bool
wxPGPGridInterfaceBase::DisablePropertyProperty( wxPGProperty* id )
  CODE:
    try {
      RETVAL = THIS->DisableProperty( id );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

bool
wxPGPGridInterfaceBase::EditorValidate()
  CODE:
    try {
      RETVAL = THIS->EditorValidate();
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

bool
wxPGPGridInterfaceBase::EnablePropertyString( wxString id, bool enable = true )
  CODE:
    try {
      RETVAL = THIS->EnableProperty( id, enable );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

bool
wxPGPGridInterfaceBase::EnablePropertyProperty( wxPGProperty* id, bool enable = true )
  CODE:
    try {
      RETVAL = THIS->EnableProperty( id, enable );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

void
wxPGPGridInterfaceBase::EndAddChildrenString( wxString id )
  CODE:
    try {
      THIS->EndAddChildren( id );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxPGPGridInterfaceBase::EndAddChildrenProperty( wxPGProperty* id )
  CODE:
    try {
      THIS->EndAddChildren( id );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

bool
wxPGPGridInterfaceBase::ExpandString( wxString id )
  CODE:
    try {
      RETVAL = THIS->Expand( id );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

bool
wxPGPGridInterfaceBase::ExpandProperty( wxPGProperty* id )
  CODE:
    try {
      RETVAL = THIS->Expand( id );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

bool
wxPGPGridInterfaceBase::ExpandAll( bool expand = true )
  CODE:
    try {
      RETVAL = THIS->ExpandAll( expand );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

int
wxPGPGridInterfaceBase::GetColumnProportion( unsigned int column )
  CODE:
    try {
      RETVAL = THIS->GetColumnProportion( column );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

wxPGProperty*
wxPGPGridInterfaceBase::GetFirstChildString( wxString id )
  CODE:
    try {
      RETVAL = THIS->GetFirstChild( id );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL
  CLEANUP:
    wxPli_object_set_deleteable( aTHX_ ST(0), false );

wxPGProperty*
wxPGPGridInterfaceBase::GetFirstChildProperty( wxPGProperty* id )
  CODE:
    try {
      RETVAL = THIS->GetFirstChild( id );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL
  CLEANUP:
    wxPli_object_set_deleteable( aTHX_ ST(0), false );

wxPropertyGridIterator*
wxPGPGridInterfaceBase::GetIteratorPropertyOverload( int flags = wxPG_ITERATE_DEFAULT, wxPGProperty* firstProp = NULL )
  CODE:
    try {
      RETVAL = new wxPropertyGridIterator( THIS->GetIterator( flags, firstProp ) );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL


wxPropertyGridIterator*
wxPGPGridInterfaceBase::GetIteratorPosOverload( int flags, int startPos )
  CODE:
    try {
      RETVAL = new wxPropertyGridIterator( THIS->GetIterator( flags, startPos ) );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL


wxPGProperty*
wxPGPGridInterfaceBase::GetFirst( int flags = wxPG_ITERATE_ALL )
  CODE:
     RETVAL = THIS->wxPropertyGridInterface::GetFirst( flags ); 
  OUTPUT: RETVAL
  CLEANUP:
    wxPli_object_set_deleteable( aTHX_ ST(0), false );

wxPGProperty*
wxPGPGridInterfaceBase::GetProperty( wxString name )
  CODE:
    try {
      RETVAL = THIS->GetProperty( name );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL
  CLEANUP:
    wxPli_object_set_deleteable( aTHX_ ST(0), false );




void
wxPGPGridInterfaceBase::GetPropertiesWithFlag(wxByte flags, bool inverse = false, int iterFlags = wxPerl_build_default_propertyflags )
  PREINIT:
    wxArrayPGProperty* targetArr;
  PPCODE:
    THIS->GetPropertiesWithFlag( targetArr, flags, inverse, iterFlags );
    size_t num = targetArr->GetCount();
    EXTEND( SP, (IV)num );
    for( size_t i = 0; i < num; ++i )
    {   
        SV* rvar = wxPli_object_2_sv( aTHX_ sv_newmortal(), targetArr->Item( i ) );
        wxPli_object_set_deleteable( aTHX_ rvar, false );
        PUSHs( rvar ); 
    }    
   


wxVariant*
wxPGPGridInterfaceBase::GetPropertyAttributeString( wxString id, wxString attrName )
  CODE:
    try {
      RETVAL = new wxVariant( THIS->GetPropertyAttribute( id, attrName ) );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

wxVariant*
wxPGPGridInterfaceBase::GetPropertyAttributeProperty( wxPGProperty* id, wxString attrName )
  CODE:
    try {
      RETVAL = new wxVariant( THIS->GetPropertyAttribute( id, attrName ) );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

wxColour*
wxPGPGridInterfaceBase::GetPropertyBackgroundColourString( wxString id )
  CODE:
    try {
      RETVAL = new wxColour( THIS->GetPropertyBackgroundColour( id ) );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

wxColour*
wxPGPGridInterfaceBase::GetPropertyBackgroundColourProperty( wxPGProperty* id )
  CODE:
    try {
      RETVAL = new wxColour( THIS->GetPropertyBackgroundColour( id ) );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

#if !defined(WXPERL_IN_PROPERTYGRIDPAGE)
#define XSpp_0a5561ee_091794

wxPGProperty*
wxPGPGridInterfaceBase::GetPropertyByLabel( wxString label )
  CODE:
    try {
      RETVAL = THIS->GetPropertyByLabel( label );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL
  CLEANUP:
    wxPli_object_set_deleteable( aTHX_ ST(0), false );

#endif

Wx_UserDataCD*
wxPGPGridInterfaceBase::GetPropertyClientData( wxString id )
  CODE:
	       wxPGProperty *prop = THIS->GetPropertyByName( id );
		   if( prop ) {
			RETVAL = (wxPliUserDataCD*)prop->GetClientObject();
		   } else {
		    RETVAL = NULL;
		   }
  OUTPUT: RETVAL

wxPGProperty*
wxPGPGridInterfaceBase::GetPropertyByNameName( wxString name )
  CODE:
    try {
      RETVAL = THIS->GetPropertyByName( name );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL
  CLEANUP:
    wxPli_object_set_deleteable( aTHX_ ST(0), false );

wxPGProperty*
wxPGPGridInterfaceBase::GetPropertyByNameSubName( wxString name, wxString subname )
  CODE:
    try {
      RETVAL = THIS->GetPropertyByName( name, subname );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL
  CLEANUP:
    wxPli_object_set_deleteable( aTHX_ ST(0), false );

const wxPGEditor*
wxPGPGridInterfaceBase::GetPropertyEditorString( wxString id )
  CODE:
    try {
      RETVAL = THIS->GetPropertyEditor( id );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL
  CLEANUP:
    wxPli_object_set_deleteable( aTHX_ ST(0), false );

const wxPGEditor*
wxPGPGridInterfaceBase::GetPropertyEditorProperty( wxPGProperty* id )
  CODE:
    try {
      RETVAL = THIS->GetPropertyEditor( id );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL
  CLEANUP:
    wxPli_object_set_deleteable( aTHX_ ST(0), false );

wxString
wxPGPGridInterfaceBase::GetPropertyHelpStringString( wxString id )
  CODE:
    try {
      RETVAL = THIS->GetPropertyHelpString( id );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

wxString
wxPGPGridInterfaceBase::GetPropertyHelpStringProperty( wxPGProperty* id )
  CODE:
    try {
      RETVAL = THIS->GetPropertyHelpString( id );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

wxBitmap*
wxPGPGridInterfaceBase::GetPropertyImageString( wxString id )
  CODE:
    try {
      RETVAL = THIS->GetPropertyImage( id );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

wxBitmap*
wxPGPGridInterfaceBase::GetPropertyImageProperty( wxPGProperty* id )
  CODE:
    try {
      RETVAL = THIS->GetPropertyImage( id );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

wxString
wxPGPGridInterfaceBase::GetPropertyLabelString( wxString id )
  CODE:
    try {
      RETVAL = THIS->GetPropertyLabel( id );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

wxString
wxPGPGridInterfaceBase::GetPropertyLabelProperty( wxPGProperty* id )
  CODE:
    try {
      RETVAL = THIS->GetPropertyLabel( id );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

wxString
wxPGPGridInterfaceBase::GetPropertyName( wxPGProperty* property )
  CODE:
    try {
      RETVAL = THIS->GetPropertyName( property );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

wxColour*
wxPGPGridInterfaceBase::GetPropertyTextColourString( wxString id )
  CODE:
    try {
      RETVAL = new wxColour( THIS->GetPropertyTextColour( id ) );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

wxColour*
wxPGPGridInterfaceBase::GetPropertyTextColourProperty( wxPGProperty* id )
  CODE:
    try {
      RETVAL = new wxColour( THIS->GetPropertyTextColour( id ) );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

wxValidator*
wxPGPGridInterfaceBase::GetPropertyValidatorString( wxString id )
  CODE:
    try {
      RETVAL = THIS->GetPropertyValidator( id );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

wxValidator*
wxPGPGridInterfaceBase::GetPropertyValidatorProperty( wxPGProperty* id )
  CODE:
    try {
      RETVAL = THIS->GetPropertyValidator( id );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

wxVariant*
wxPGPGridInterfaceBase::GetPropertyValueString( wxString id )
  CODE:
    try {
      RETVAL = new wxVariant( THIS->GetPropertyValue( id ) );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

wxVariant*
wxPGPGridInterfaceBase::GetPropertyValueProperty( wxPGProperty* id )
  CODE:
    try {
      RETVAL = new wxVariant( THIS->GetPropertyValue( id ) );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

wxArrayInt
wxPGPGridInterfaceBase::GetPropertyValueAsArrayIntString( wxString id )
  PPCODE:
    try {
      RETVAL = THIS->GetPropertyValueAsArrayInt( id );
    PUTBACK;
    wxPli_intarray_push( aTHX_ RETVAL );
    SPAGAIN;
  ;
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

wxArrayInt
wxPGPGridInterfaceBase::GetPropertyValueAsArrayIntProperty( wxPGProperty* id )
  PPCODE:
    try {
      RETVAL = THIS->GetPropertyValueAsArrayInt( id );
    PUTBACK;
    wxPli_intarray_push( aTHX_ RETVAL );
    SPAGAIN;
  ;
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

wxArrayString
wxPGPGridInterfaceBase::GetPropertyValueAsArrayStringString( wxString id )
  PPCODE:
    try {
      RETVAL = THIS->GetPropertyValueAsArrayString( id );
    PUTBACK;
    wxPli_stringarray_push( aTHX_ RETVAL );
    SPAGAIN;
  ;
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

wxArrayString
wxPGPGridInterfaceBase::GetPropertyValueAsArrayStringProperty( wxPGProperty* id )
  PPCODE:
    try {
      RETVAL = THIS->GetPropertyValueAsArrayString( id );
    PUTBACK;
    wxPli_stringarray_push( aTHX_ RETVAL );
    SPAGAIN;
  ;
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

bool
wxPGPGridInterfaceBase::GetPropertyValueAsBoolString( wxString id )
  CODE:
    try {
      RETVAL = THIS->GetPropertyValueAsBool( id );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

bool
wxPGPGridInterfaceBase::GetPropertyValueAsBoolProperty( wxPGProperty* id )
  CODE:
    try {
      RETVAL = THIS->GetPropertyValueAsBool( id );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

wxDateTime*
wxPGPGridInterfaceBase::GetPropertyValueAsDateTimeString( wxString id )
  CODE:
    try {
      RETVAL = new wxDateTime( THIS->GetPropertyValueAsDateTime( id ) );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

wxDateTime*
wxPGPGridInterfaceBase::GetPropertyValueAsDateTimeProperty( wxPGProperty* id )
  CODE:
    try {
      RETVAL = new wxDateTime( THIS->GetPropertyValueAsDateTime( id ) );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

double
wxPGPGridInterfaceBase::GetPropertyValueAsDoubleString( wxString id )
  CODE:
    try {
      RETVAL = THIS->GetPropertyValueAsDouble( id );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

double
wxPGPGridInterfaceBase::GetPropertyValueAsDoubleProperty( wxPGProperty* id )
  CODE:
    try {
      RETVAL = THIS->GetPropertyValueAsDouble( id );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

int
wxPGPGridInterfaceBase::GetPropertyValueAsIntString( wxString id )
  CODE:
    try {
      RETVAL = THIS->GetPropertyValueAsInt( id );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

int
wxPGPGridInterfaceBase::GetPropertyValueAsIntProperty( wxPGProperty* id )
  CODE:
    try {
      RETVAL = THIS->GetPropertyValueAsInt( id );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

long
wxPGPGridInterfaceBase::GetPropertyValueAsLongString( wxString id )
  CODE:
    try {
      RETVAL = THIS->GetPropertyValueAsLong( id );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

long
wxPGPGridInterfaceBase::GetPropertyValueAsLongProperty( wxPGProperty* id )
  CODE:
    try {
      RETVAL = THIS->GetPropertyValueAsLong( id );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

wxLongLong_t
wxPGPGridInterfaceBase::GetPropertyValueAsLongLongString( wxString id )
  CODE:
    try {
      RETVAL = THIS->GetPropertyValueAsLongLong( id );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

wxLongLong_t
wxPGPGridInterfaceBase::GetPropertyValueAsLongLongProperty( wxPGProperty* id )
  CODE:
    try {
      RETVAL = THIS->GetPropertyValueAsLongLong( id );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

wxString
wxPGPGridInterfaceBase::GetPropertyValueAsStringString( wxString id )
  CODE:
    try {
      RETVAL = THIS->GetPropertyValueAsString( id );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

wxString
wxPGPGridInterfaceBase::GetPropertyValueAsStringProperty( wxPGProperty* id )
  CODE:
    try {
      RETVAL = THIS->GetPropertyValueAsString( id );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

unsigned long
wxPGPGridInterfaceBase::GetPropertyValueAsULongString( wxString id )
  CODE:
    try {
      RETVAL = THIS->GetPropertyValueAsULong( id );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

unsigned long
wxPGPGridInterfaceBase::GetPropertyValueAsULongProperty( wxPGProperty* id )
  CODE:
    try {
      RETVAL = THIS->GetPropertyValueAsULong( id );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

wxULongLong_t
wxPGPGridInterfaceBase::GetPropertyValueAsULongLongString( wxString id )
  CODE:
    try {
      RETVAL = THIS->GetPropertyValueAsULongLong( id );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

wxULongLong_t
wxPGPGridInterfaceBase::GetPropertyValueAsULongLongProperty( wxPGProperty* id )
  CODE:
    try {
      RETVAL = THIS->GetPropertyValueAsULongLong( id );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

wxVariant*
wxPGPGridInterfaceBase::GetPropertyValues( wxString listname = wxEmptyString, wxPGProperty* baseparent = NULL, long flags = 0 )
  CODE:
    try {
      RETVAL = new wxVariant( THIS->GetPropertyValues( listname, baseparent, flags ) );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL



void
wxPGPGridInterfaceBase::GetSelectedProperties( )
  PPCODE:
    const wxArrayPGProperty& targetArr = THIS->GetSelectedProperties();
    size_t num = targetArr.GetCount();
    EXTEND( SP, (IV)num );
    for( size_t i = 0; i < num; ++i )
    {
        SV* rvar = wxPli_object_2_sv( aTHX_ sv_newmortal(), targetArr.Item( i ) );
        wxPli_object_set_deleteable( aTHX_ rvar, false );
        PUSHs( rvar );
    }    



#if !defined(WXPERL_IN_PROPERTYGRID) && !defined(WXPERL_IN_PROPERTYGRIDMANAGER)
#define XSpp_0a5561ee_048656

wxPGProperty*
wxPGPGridInterfaceBase::GetSelection()
  CODE:
    try {
      RETVAL = THIS->GetSelection();
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL
  CLEANUP:
    wxPli_object_set_deleteable( aTHX_ ST(0), false );

#endif

bool
wxPGPGridInterfaceBase::HidePropertyString( wxString id, bool hide = true, int flags = wxPG_RECURSE )
  CODE:
    try {
      RETVAL = THIS->HideProperty( id, hide, flags );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

bool
wxPGPGridInterfaceBase::HidePropertyProperty( wxPGProperty* id, bool hide = true, int flags = wxPG_RECURSE )
  CODE:
    try {
      RETVAL = THIS->HideProperty( id, hide, flags );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

void
InitAllTypeHandlers()
  CODE:
    try {
      wxPGPGridInterfaceBase::InitAllTypeHandlers();
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

wxPGProperty*
wxPGPGridInterfaceBase::InsertString( wxString priorThis, wxPGProperty* newProperty )
  CODE:
    try {
      wxPli_object_set_deleteable( aTHX_ ST(2), false );
      RETVAL = THIS->Insert( priorThis, newProperty );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL
  CLEANUP:
    wxPli_object_set_deleteable( aTHX_ ST(0), false );

wxPGProperty*
wxPGPGridInterfaceBase::InsertProperty( wxPGProperty* priorThis, wxPGProperty* newProperty )
  CODE:
    try {
      wxPli_object_set_deleteable( aTHX_ ST(2), false );
      RETVAL = THIS->Insert( priorThis, newProperty );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL
  CLEANUP:
    wxPli_object_set_deleteable( aTHX_ ST(0), false );

wxPGProperty*
wxPGPGridInterfaceBase::InsertIndexString( wxString parent, int index, wxPGProperty* newProperty )
  CODE:
    try {
      wxPli_object_set_deleteable( aTHX_ ST(3), false );
      RETVAL = THIS->Insert( parent, index, newProperty );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL
  CLEANUP:
    wxPli_object_set_deleteable( aTHX_ ST(0), false );

wxPGProperty*
wxPGPGridInterfaceBase::InsertIndexProperty( wxPGProperty* parent, int index, wxPGProperty* newProperty )
  CODE:
    try {
      wxPli_object_set_deleteable( aTHX_ ST(3), false );
      RETVAL = THIS->Insert( parent, index, newProperty );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL
  CLEANUP:
    wxPli_object_set_deleteable( aTHX_ ST(0), false );

bool
wxPGPGridInterfaceBase::IsPropertyCategoryString( wxString id )
  CODE:
    try {
      RETVAL = THIS->IsPropertyCategory( id );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

bool
wxPGPGridInterfaceBase::IsPropertyCategoryProperty( wxPGProperty* id )
  CODE:
    try {
      RETVAL = THIS->IsPropertyCategory( id );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

bool
wxPGPGridInterfaceBase::IsPropertyEnabledString( wxString id )
  CODE:
    try {
      RETVAL = THIS->IsPropertyEnabled( id );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

bool
wxPGPGridInterfaceBase::IsPropertyEnabledProperty( wxPGProperty* id )
  CODE:
    try {
      RETVAL = THIS->IsPropertyEnabled( id );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

bool
wxPGPGridInterfaceBase::IsPropertyExpandedString( wxString id )
  CODE:
    try {
      RETVAL = THIS->IsPropertyExpanded( id );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

bool
wxPGPGridInterfaceBase::IsPropertyExpandedProperty( wxPGProperty* id )
  CODE:
    try {
      RETVAL = THIS->IsPropertyExpanded( id );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

bool
wxPGPGridInterfaceBase::IsPropertyModifiedString( wxString id )
  CODE:
    try {
      RETVAL = THIS->IsPropertyModified( id );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

bool
wxPGPGridInterfaceBase::IsPropertyModifiedProperty( wxPGProperty* id )
  CODE:
    try {
      RETVAL = THIS->IsPropertyModified( id );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

bool
wxPGPGridInterfaceBase::IsPropertyShownString( wxString id )
  CODE:
    try {
      RETVAL = THIS->IsPropertyShown( id );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

bool
wxPGPGridInterfaceBase::IsPropertyShownProperty( wxPGProperty* id )
  CODE:
    try {
      RETVAL = THIS->IsPropertyShown( id );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

bool
wxPGPGridInterfaceBase::IsPropertyValueUnspecifiedString( wxString id )
  CODE:
    try {
      RETVAL = THIS->IsPropertyValueUnspecified( id );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

bool
wxPGPGridInterfaceBase::IsPropertyValueUnspecifiedProperty( wxPGProperty* id )
  CODE:
    try {
      RETVAL = THIS->IsPropertyValueUnspecified( id );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

void
wxPGPGridInterfaceBase::LimitPropertyEditingString( wxString id, bool limit = true )
  CODE:
    try {
      THIS->LimitPropertyEditing( id, limit );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxPGPGridInterfaceBase::LimitPropertyEditingProperty( wxPGProperty* id, bool limit = true )
  CODE:
    try {
      THIS->LimitPropertyEditing( id, limit );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
RegisterAdditionalEditors()
  CODE:
    try {
      wxPGPGridInterfaceBase::RegisterAdditionalEditors();
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

wxPGProperty*
wxPGPGridInterfaceBase::RemovePropertyString( wxString id )
  CODE:
    try {
      RETVAL = THIS->RemoveProperty( id );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL
  CLEANUP:
    wxPli_object_set_deleteable( aTHX_ ST(0), true );

wxPGProperty*
wxPGPGridInterfaceBase::RemovePropertyProperty( wxPGProperty* id )
  CODE:
    try {
      wxPli_object_set_deleteable( aTHX_ ST(1), true );
      RETVAL = THIS->RemoveProperty( id );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL
  CLEANUP:
    wxPli_object_set_deleteable( aTHX_ ST(0), true );

wxPGProperty*
wxPGPGridInterfaceBase::ReplacePropertyString( wxString id, wxPGProperty* property )
  CODE:
    try {
      wxPli_object_set_deleteable( aTHX_ ST(2), false );
      RETVAL = THIS->ReplaceProperty( id, property );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL
  CLEANUP:
    wxPli_object_set_deleteable( aTHX_ ST(0), false );

wxPGProperty*
wxPGPGridInterfaceBase::ReplacePropertyProperty( wxPGProperty* id, wxPGProperty* property )
  CODE:
    try {
      wxPli_object_set_deleteable( aTHX_ ST(1), true );
wxPli_object_set_deleteable( aTHX_ ST(2), false );
      RETVAL = THIS->ReplaceProperty( id, property );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL
  CLEANUP:
    wxPli_object_set_deleteable( aTHX_ ST(0), false );

bool
wxPGPGridInterfaceBase::RestoreEditableState( wxString src, int restoreStates = 0x3F )
  CODE:
    try {
      RETVAL = THIS->RestoreEditableState( src, restoreStates );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

wxString
wxPGPGridInterfaceBase::SaveEditableState( int includedStates = 0x3F )
  CODE:
    try {
      RETVAL = THIS->SaveEditableState( includedStates );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

void
SetBoolChoices( wxString trueChoice, wxString falseChoice )
  CODE:
    try {
      wxPGPGridInterfaceBase::SetBoolChoices( trueChoice, falseChoice );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

bool
wxPGPGridInterfaceBase::SetColumnProportion( unsigned int column, int proportion )
  CODE:
    try {
      RETVAL = THIS->SetColumnProportion( column, proportion );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

void
wxPGPGridInterfaceBase::SetPropertyAttributeString( wxString id, wxString attrName, wxVariant value, long argFlags = 0 )
  CODE:
    try {
       value = wxPli_sv_2_wxvariant( aTHX_ ST(3) ); ;
      THIS->SetPropertyAttribute( id, attrName, value, argFlags );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxPGPGridInterfaceBase::SetPropertyAttributeProperty( wxPGProperty* id, wxString attrName, wxVariant value, long argFlags = 0 )
  CODE:
    try {
       value = wxPli_sv_2_wxvariant( aTHX_ ST(3) ); ;
      THIS->SetPropertyAttribute( id, attrName, value, argFlags );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxPGPGridInterfaceBase::SetPropertyAttributeAll( wxString attrName, wxVariant value )
  CODE:
    try {
       value = wxPli_sv_2_wxvariant( aTHX_ ST(2) ); ;
      THIS->SetPropertyAttributeAll( attrName, value );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxPGPGridInterfaceBase::SetPropertyBackgroundColourString( wxString id, wxColour* colour, int flags = wxPG_RECURSE )
  CODE:
    try {
      THIS->SetPropertyBackgroundColour( id, *( colour ), flags );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxPGPGridInterfaceBase::SetPropertyBackgroundColourProperty( wxPGProperty* id, wxColour* colour, int flags = wxPG_RECURSE )
  CODE:
    try {
      THIS->SetPropertyBackgroundColour( id, *( colour ), flags );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxPGPGridInterfaceBase::SetPropertyCellString( wxString id, int column, wxString text = wxEmptyString, wxBitmap* bitmap = wxNullBitmapPtr, wxColour* fgCol = wxNullColourPtr, wxColour* bgCol = wxNullColourPtr )
  CODE:
    try {
      THIS->SetPropertyCell( id, column, text, *( bitmap ), *( fgCol ), *( bgCol ) );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxPGPGridInterfaceBase::SetPropertyCellProperty( wxPGProperty* id, int column, wxString text = wxEmptyString, wxBitmap* bitmap = wxNullBitmapPtr, wxColour* fgCol = wxNullColourPtr, wxColour* bgCol = wxNullColourPtr )
  CODE:
    try {
      THIS->SetPropertyCell( id, column, text, *( bitmap ), *( fgCol ), *( bgCol ) );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxPGPGridInterfaceBase::SetPropertyClientData( wxString id, Wx_UserDataCD* data )
  CODE:
			wxPGProperty *prop = THIS->GetPropertyByName( id );
		    if( prop )
			   prop->SetClientObject( data );

void
wxPGPGridInterfaceBase::SetPropertyColoursToDefaultString( wxString id )
  CODE:
    try {
      THIS->SetPropertyColoursToDefault( id );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxPGPGridInterfaceBase::SetPropertyColoursToDefaultProperty( wxPGProperty* id )
  CODE:
    try {
      THIS->SetPropertyColoursToDefault( id );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxPGPGridInterfaceBase::SetPropertyEditorString( wxString id, const wxPGEditor* editor )
  CODE:
    try {
      wxPli_object_set_deleteable( aTHX_ ST(2), false );
      THIS->SetPropertyEditor( id, editor );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxPGPGridInterfaceBase::SetPropertyEditorProperty( wxPGProperty* id, const wxPGEditor* editor )
  CODE:
    try {
      wxPli_object_set_deleteable( aTHX_ ST(2), false );
      THIS->SetPropertyEditor( id, editor );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxPGPGridInterfaceBase::SetPropertyEditorNameString( wxString id, wxString editorName )
  CODE:
    try {
      THIS->SetPropertyEditor( id, editorName );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxPGPGridInterfaceBase::SetPropertyEditorNameProperty( wxPGProperty* id, wxString editorName )
  CODE:
    try {
      THIS->SetPropertyEditor( id, editorName );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxPGPGridInterfaceBase::SetPropertyLabelString( wxString id, wxString newproplabel )
  CODE:
    try {
      THIS->SetPropertyLabel( id, newproplabel );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxPGPGridInterfaceBase::SetPropertyLabelProperty( wxPGProperty* id, wxString newproplabel )
  CODE:
    try {
      THIS->SetPropertyLabel( id, newproplabel );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxPGPGridInterfaceBase::SetPropertyNameString( wxString id, wxString newName )
  CODE:
    try {
      THIS->SetPropertyName( id, newName );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxPGPGridInterfaceBase::SetPropertyNameProperty( wxPGProperty* id, wxString newName )
  CODE:
    try {
      THIS->SetPropertyName( id, newName );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxPGPGridInterfaceBase::SetPropertyReadOnlyString( wxString id, bool set = true, int flags = wxPG_RECURSE )
  CODE:
    try {
      THIS->SetPropertyReadOnly( id, set, flags );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxPGPGridInterfaceBase::SetPropertyReadOnlyProperty( wxPGProperty* id, bool set = true, int flags = wxPG_RECURSE )
  CODE:
    try {
      THIS->SetPropertyReadOnly( id, set, flags );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxPGPGridInterfaceBase::SetPropertyValueUnspecifiedString( wxString id )
  CODE:
    try {
      THIS->SetPropertyValueUnspecified( id );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxPGPGridInterfaceBase::SetPropertyValueUnspecifiedProperty( wxPGProperty* id )
  CODE:
    try {
      THIS->SetPropertyValueUnspecified( id );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }


void
wxPGPGridInterfaceBase::SetPropertyValuesString( wxVariant* list, wxString defaultCategory = wxEmptyString )
  CODE:
    try {
      THIS->SetPropertyValues( *( list ), defaultCategory );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxPGPGridInterfaceBase::SetPropertyValuesProperty( wxVariant* list, wxPGProperty* defaultCategory = wxNullProperty )
  CODE:
    try {
      THIS->SetPropertyValues( *( list ), defaultCategory );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxPGPGridInterfaceBase::SetPropertyHelpStringString( wxString id, wxString helpString )
  CODE:
    try {
      THIS->SetPropertyHelpString( id, helpString );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxPGPGridInterfaceBase::SetPropertyHelpStringProperty( wxPGProperty* id, wxString helpString )
  CODE:
    try {
      THIS->SetPropertyHelpString( id, helpString );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxPGPGridInterfaceBase::SetPropertyImageString( wxString id, wxBitmap* bmp )
  CODE:
    try {
      THIS->SetPropertyImage( id, *( bmp ) );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxPGPGridInterfaceBase::SetPropertyImageProperty( wxPGProperty* id, wxBitmap* bmp )
  CODE:
    try {
      THIS->SetPropertyImage( id, *( bmp ) );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

bool
wxPGPGridInterfaceBase::SetPropertyMaxLengthString( wxString id, int maxLen )
  CODE:
    try {
      RETVAL = THIS->SetPropertyMaxLength( id, maxLen );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

bool
wxPGPGridInterfaceBase::SetPropertyMaxLengthProperty( wxPGProperty* id, int maxLen )
  CODE:
    try {
      RETVAL = THIS->SetPropertyMaxLength( id, maxLen );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

void
wxPGPGridInterfaceBase::SetPropertyTextColourString( wxString id, wxColour* colour, int flags = wxPG_RECURSE )
  CODE:
    try {
      THIS->SetPropertyTextColour( id, *( colour ), flags );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxPGPGridInterfaceBase::SetPropertyTextColourProperty( wxPGProperty* id, wxColour* colour, int flags = wxPG_RECURSE )
  CODE:
    try {
      THIS->SetPropertyTextColour( id, *( colour ), flags );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxPGPGridInterfaceBase::SetPropertyValidatorString( wxString id, wxValidator* validator )
  CODE:
    try {
      THIS->SetPropertyValidator( id, *( validator ) );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxPGPGridInterfaceBase::SetPropertyValidatorProperty( wxPGProperty* id, wxValidator* validator )
  CODE:
    try {
      THIS->SetPropertyValidator( id, *( validator ) );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }



void
wxPGPGridInterfaceBase::SetPropertyValue( ... )
  PPCODE:
    BEGIN_OVERLOAD()
        MATCH_REDISP( wxPliOvl_s_s, SetPropertyValueAsString_string )
        MATCH_REDISP( wxPliOvl_wpgp_s, SetPropertyValueAsString_property )
        MATCH_REDISP( wxPliOvl_s_n, SetPropertyValueAsDouble_string )
        MATCH_REDISP( wxPliOvl_wpgp_n, SetPropertyValueAsDouble_property )
        MATCH_REDISP( wxPliOvl_s_arr, SetPropertyValueAsArrayString_string )
        MATCH_REDISP( wxPliOvl_wpgp_arr, SetPropertyValueAsArrayString_property )
        MATCH_REDISP( wxPliOvl_s_wdtm, SetPropertyValueAsDateTime_string )
        MATCH_REDISP( wxPliOvl_wpgp_wdtm, SetPropertyValueAsDateTime_property )
        MATCH_REDISP( wxPliOvl_s_wobj, SetPropertyValueAsObject_string )
        MATCH_REDISP( wxPliOvl_wpgp_wobj, SetPropertyValueAsObject_property )
    END_OVERLOAD( Wx::PGPGridInterfaceBase::SetPropertyValue )

void
wxPGPGridInterfaceBase::SetPropertyValueAsLong( ... )
  PPCODE:
    BEGIN_OVERLOAD()
        MATCH_REDISP( wxPliOvl_s_n, SetPropertyValueAsLong_string )
        MATCH_REDISP( wxPliOvl_wpgp_n, SetPropertyValueAsLong_property )
    END_OVERLOAD( Wx::PGPGridInterfaceBase::SetPropertyValueAsLong )

void
wxPGPGridInterfaceBase::SetPropertyValueAsInt( ... )
  PPCODE:
    BEGIN_OVERLOAD()
        MATCH_REDISP( wxPliOvl_s_n, SetPropertyValueAsInt_string )
        MATCH_REDISP( wxPliOvl_wpgp_n, SetPropertyValueAsInt_property )
    END_OVERLOAD( Wx::PGPGridInterfaceBase::SetPropertyValueAsInt )

void
wxPGPGridInterfaceBase::SetPropertyValueAsDouble( ... )
  PPCODE:
    BEGIN_OVERLOAD()
        MATCH_REDISP( wxPliOvl_s_n, SetPropertyValueAsDouble_string )
        MATCH_REDISP( wxPliOvl_wpgp_n, SetPropertyValueAsDouble_property )
    END_OVERLOAD( Wx::PGPGridInterfaceBase::SetPropertyValueAsDouble )

void
wxPGPGridInterfaceBase::SetPropertyValueAsBool( ... )
  PPCODE:
    BEGIN_OVERLOAD()
        MATCH_REDISP( wxPliOvl_s_n, SetPropertyValueAsBool_string )
        MATCH_REDISP( wxPliOvl_wpgp_n, SetPropertyValueAsBool_property )
    END_OVERLOAD( Wx::PGPGridInterfaceBase::SetPropertyValueAsBool )

void
wxPGPGridInterfaceBase::SetPropertyValueAsString( ... )
  PPCODE:
    BEGIN_OVERLOAD()
        MATCH_REDISP( wxPliOvl_s_s, SetPropertyValueAsString_string )
        MATCH_REDISP( wxPliOvl_wpgp_s, SetPropertyValueAsString_property )
    END_OVERLOAD( Wx::PGPGridInterfaceBase::SetPropertyValueAsString )

void
wxPGPGridInterfaceBase::SetPropertyValueAsArrayString( ... )
  PPCODE:
    BEGIN_OVERLOAD()
        MATCH_REDISP( wxPliOvl_s_arr, SetPropertyValueAsArrayString_string )
        MATCH_REDISP( wxPliOvl_wpgp_arr, SetPropertyValueAsArrayString_property )
    END_OVERLOAD( Wx::PGPGridInterfaceBase::SetPropertyValueAsArrayString )

void
wxPGPGridInterfaceBase::SetPropertyValueAsArrayInt( ... )
  PPCODE:
    BEGIN_OVERLOAD()
        MATCH_REDISP( wxPliOvl_s_arr, SetPropertyValueAsArrayInt_string )
        MATCH_REDISP( wxPliOvl_wpgp_arr, SetPropertyValueAsArrayInt_property )
    END_OVERLOAD( Wx::PGPGridInterfaceBase::SetPropertyValueAsArrayInt )

void
wxPGPGridInterfaceBase::SetPropertyValueAsDateTime( ... )
  PPCODE:
    BEGIN_OVERLOAD()
        MATCH_REDISP( wxPliOvl_s_wdtm, SetPropertyValueAsDateTime_string )
        MATCH_REDISP( wxPliOvl_wpgp_wdtm, SetPropertyValueAsDateTime_property )
    END_OVERLOAD( Wx::PGPGridInterfaceBase::SetPropertyValueAsDateTime )

void
wxPGPGridInterfaceBase::SetPropertyValueAsObject( ... )
  PPCODE:
    BEGIN_OVERLOAD()
        MATCH_REDISP( wxPliOvl_s_wobj, SetPropertyValueAsObject_string )
        MATCH_REDISP( wxPliOvl_wpgp_wobj, SetPropertyValueAsObject_property )
    END_OVERLOAD( Wx::PGPGridInterfaceBase::SetPropertyValueAsObject )

void
wxPGPGridInterfaceBase::SetPropertyValueAsLongLong( ... )
  PPCODE:
    BEGIN_OVERLOAD()
        MATCH_REDISP( wxPliOvl_s_n, SetPropertyValueAsLongLong_string )
        MATCH_REDISP( wxPliOvl_wpgp_n, SetPropertyValueAsLongLong_property )
    END_OVERLOAD( Wx::PGPGridInterfaceBase::SetPropertyValueAsLongLong )

void
wxPGPGridInterfaceBase::SetPropertyValueAsULongLong( ... )
  PPCODE:
    BEGIN_OVERLOAD()
        MATCH_REDISP( wxPliOvl_s_n, SetPropertyValueAsULongLong_string )
        MATCH_REDISP( wxPliOvl_wpgp_n, SetPropertyValueAsULongLong_property )
    END_OVERLOAD( Wx::PGPGridInterfaceBase::SetPropertyValueAsULongLong )

void
wxPGPGridInterfaceBase::SetPropertyValueAsVariant( ... )
  PPCODE:
    BEGIN_OVERLOAD()
        MATCH_REDISP( wxPliOvl_s_wvar, SetPropertyValueAsVariant_string )
        MATCH_REDISP( wxPliOvl_wpgp_wvar, SetPropertyValueAsVariant_property )
    END_OVERLOAD( Wx::PGPGridInterfaceBase::SetPropertyValueAsVariant )




void
wxPGPGridInterfaceBase::SetPropertyValueAsLong_string( wxString id, long value )
  CODE:
    try {
      THIS->SetPropertyValue( id, value );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxPGPGridInterfaceBase::SetPropertyValueAsLong_property( wxPGProperty* id, long value )
  CODE:
    try {
      THIS->SetPropertyValue( id, value );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }


void
wxPGPGridInterfaceBase::SetPropertyValueAsInt_string( wxString id, int value )
  CODE:
    try {
      THIS->SetPropertyValue( id, value );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxPGPGridInterfaceBase::SetPropertyValueAsInt_property( wxPGProperty* id, int value )
  CODE:
    try {
      THIS->SetPropertyValue( id, value );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }


void
wxPGPGridInterfaceBase::SetPropertyValueAsDouble_string( wxString id, double value )
  CODE:
    try {
      THIS->SetPropertyValue( id, value );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxPGPGridInterfaceBase::SetPropertyValueAsDouble_property( wxPGProperty* id, double value )
  CODE:
    try {
      THIS->SetPropertyValue( id, value );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }


void
wxPGPGridInterfaceBase::SetPropertyValueAsBool_string( wxString id, bool value )
  CODE:
    try {
      THIS->SetPropertyValue( id, value );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxPGPGridInterfaceBase::SetPropertyValueAsBool_property( wxPGProperty* id, bool value )
  CODE:
    try {
      THIS->SetPropertyValue( id, value );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }


void
wxPGPGridInterfaceBase::SetPropertyValueAsString_string( wxString id, wxString value )
  CODE:
    try {
      THIS->SetPropertyValue( id, value );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxPGPGridInterfaceBase::SetPropertyValueAsString_property( wxPGProperty* id, wxString value )
  CODE:
    try {
      THIS->SetPropertyValue( id, value );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }


void
wxPGPGridInterfaceBase::SetPropertyValueAsArrayString_string( wxString id, wxArrayString value )
  CODE:
    try {
      THIS->SetPropertyValue( id, value );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxPGPGridInterfaceBase::SetPropertyValueAsArrayString_property( wxPGProperty* id, wxArrayString value )
  CODE:
    try {
      THIS->SetPropertyValue( id, value );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }


void
wxPGPGridInterfaceBase::SetPropertyValueAsDateTime_string( wxString id, wxDateTime* value )
  CODE:
    try {
      THIS->SetPropertyValue( id, *( value ) );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxPGPGridInterfaceBase::SetPropertyValueAsDateTime_property( wxPGProperty* id, wxDateTime* value )
  CODE:
    try {
      THIS->SetPropertyValue( id, *( value ) );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }


void
wxPGPGridInterfaceBase::SetPropertyValueAsObject_string( wxString id, wxObject* value )
  CODE:
    try {
      THIS->SetPropertyValue( id, value );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxPGPGridInterfaceBase::SetPropertyValueAsObject_property( wxPGProperty* id, wxObject* value )
  CODE:
    try {
      THIS->SetPropertyValue( id, value );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }




void
wxPGPGridInterfaceBase::SetPropertyValueAsLongLong_string( wxString id, wxLongLong_t value )
  CODE:
    try {
      THIS->SetPropertyValue( id, value );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxPGPGridInterfaceBase::SetPropertyValueAsLongLong_property( wxPGProperty* id, wxLongLong_t value )
  CODE:
    try {
      THIS->SetPropertyValue( id, value );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }


void
wxPGPGridInterfaceBase::SetPropertyValueAsULongLong_string( wxString id, wxULongLong_t value )
  CODE:
    try {
      THIS->SetPropertyValue( id, value );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxPGPGridInterfaceBase::SetPropertyValueAsULongLong_property( wxPGProperty* id, wxULongLong_t value )
  CODE:
    try {
      THIS->SetPropertyValue( id, value );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }


void
wxPGPGridInterfaceBase::SetPropertyValueAsArrayInt_string( wxString id, wxArrayInt value )
  CODE:
    try {
      THIS->SetPropertyValue( id, value );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxPGPGridInterfaceBase::SetPropertyValueAsArrayInt_property( wxPGProperty* id, wxArrayInt value )
  CODE:
    try {
      THIS->SetPropertyValue( id, value );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxPGPGridInterfaceBase::SetPropertyValueString_string( wxString id, wxString value )
  CODE:
    try {
      THIS->SetPropertyValueString( id, value );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxPGPGridInterfaceBase::SetPropertyValueString_property( wxPGProperty* id, wxString value )
  CODE:
    try {
      THIS->SetPropertyValueString( id, value );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxPGPGridInterfaceBase::SetPropertyValueAsVariant_string( wxString id, wxVariant* value )
  CODE:
    try {
      THIS->SetPropertyValue( id, *( value ) );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxPGPGridInterfaceBase::SetPropertyValueAsVariant_property( wxPGProperty* id, wxVariant* value )
  CODE:
    try {
      THIS->SetPropertyValue( id, *( value ) );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxPGPGridInterfaceBase::SetValidationFailureBehavior( int vfbFlags )
  CODE:
    try {
      THIS->SetValidationFailureBehavior( vfbFlags );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxPGPGridInterfaceBase::Sort( int flags = 0 )
  CODE:
    try {
      THIS->Sort( flags );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxPGPGridInterfaceBase::SortChildrenString( wxString id, int flags = 0 )
  CODE:
    try {
      THIS->SortChildren( id, flags );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxPGPGridInterfaceBase::SortChildrenProperty( wxPGProperty* id, int flags = 0 )
  CODE:
    try {
      THIS->SortChildren( id, flags );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

wxPGEditor*
GetEditorByName( wxString editorName )
  CODE:
    try {
      RETVAL = wxPGPGridInterfaceBase::GetEditorByName( editorName );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL
  CLEANUP:
    wxPli_object_set_deleteable( aTHX_ ST(0), false );

#include "cpp/overload.h"


#if defined( XSpp_0a5561ee_005829 )
void
wxPGPGridInterfaceBase::GetPropertyValueAsArrayInt( ... )
  PPCODE:
#if defined( XSpp_0a5561ee_005829 )
    static const char *GetPropertyValueAsArrayIntProperty_types[] = { "Wx::PGProperty" };
    static wxPliPrototype GetPropertyValueAsArrayIntProperty_proto( GetPropertyValueAsArrayIntProperty_types, sizeof( GetPropertyValueAsArrayIntProperty_types ) / sizeof( GetPropertyValueAsArrayIntProperty_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
    static const char *GetPropertyValueAsArrayIntString_types[] = { wxPliOvlstr };
    static wxPliPrototype GetPropertyValueAsArrayIntString_proto( GetPropertyValueAsArrayIntString_types, sizeof( GetPropertyValueAsArrayIntString_types ) / sizeof( GetPropertyValueAsArrayIntString_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
    static wxPliPrototype *wxPliOvl_all_prototypes[] = {
#if defined( XSpp_0a5561ee_005829 )
        &GetPropertyValueAsArrayIntProperty_proto,
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        &GetPropertyValueAsArrayIntString_proto,
#endif // defined( XSpp_0a5561ee_005829 )
        NULL };
    BEGIN_OVERLOAD()
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( GetPropertyValueAsArrayIntProperty_proto, GetPropertyValueAsArrayIntProperty, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( GetPropertyValueAsArrayIntString_proto, GetPropertyValueAsArrayIntString, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
    END_OVERLOAD_MESSAGE( Wx::PGPGridInterfaceBase::GetPropertyValueAsArrayInt, wxPliOvl_all_prototypes )



#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
void
wxPGPGridInterfaceBase::SetPropertyCell( ... )
  PPCODE:
#if defined( XSpp_0a5561ee_005829 )
    static const char *SetPropertyCellProperty_types[] = { "Wx::PGProperty", wxPliOvlnum, wxPliOvlstr, "Wx::Bitmap", "Wx::Colour", "Wx::Colour" };
    static wxPliPrototype SetPropertyCellProperty_proto( SetPropertyCellProperty_types, sizeof( SetPropertyCellProperty_types ) / sizeof( SetPropertyCellProperty_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
    static const char *SetPropertyCellString_types[] = { wxPliOvlstr, wxPliOvlnum, wxPliOvlstr, "Wx::Bitmap", "Wx::Colour", "Wx::Colour" };
    static wxPliPrototype SetPropertyCellString_proto( SetPropertyCellString_types, sizeof( SetPropertyCellString_types ) / sizeof( SetPropertyCellString_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
    static wxPliPrototype *wxPliOvl_all_prototypes[] = {
#if defined( XSpp_0a5561ee_005829 )
        &SetPropertyCellProperty_proto,
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        &SetPropertyCellString_proto,
#endif // defined( XSpp_0a5561ee_005829 )
        NULL };
    BEGIN_OVERLOAD()
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT_ALLOWMORE( SetPropertyCellProperty_proto, SetPropertyCellProperty, 2 )
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT_ALLOWMORE( SetPropertyCellString_proto, SetPropertyCellString, 2 )
#endif // defined( XSpp_0a5561ee_005829 )
    END_OVERLOAD_MESSAGE( Wx::PGPGridInterfaceBase::SetPropertyCell, wxPliOvl_all_prototypes )



#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
void
wxPGPGridInterfaceBase::GetFirstChild( ... )
  PPCODE:
#if defined( XSpp_0a5561ee_005829 )
    static const char *GetFirstChildProperty_types[] = { "Wx::PGProperty" };
    static wxPliPrototype GetFirstChildProperty_proto( GetFirstChildProperty_types, sizeof( GetFirstChildProperty_types ) / sizeof( GetFirstChildProperty_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
    static const char *GetFirstChildString_types[] = { wxPliOvlstr };
    static wxPliPrototype GetFirstChildString_proto( GetFirstChildString_types, sizeof( GetFirstChildString_types ) / sizeof( GetFirstChildString_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
    static wxPliPrototype *wxPliOvl_all_prototypes[] = {
#if defined( XSpp_0a5561ee_005829 )
        &GetFirstChildProperty_proto,
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        &GetFirstChildString_proto,
#endif // defined( XSpp_0a5561ee_005829 )
        NULL };
    BEGIN_OVERLOAD()
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( GetFirstChildProperty_proto, GetFirstChildProperty, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( GetFirstChildString_proto, GetFirstChildString, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
    END_OVERLOAD_MESSAGE( Wx::PGPGridInterfaceBase::GetFirstChild, wxPliOvl_all_prototypes )



#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
void
wxPGPGridInterfaceBase::GetPropertyValueAsDateTime( ... )
  PPCODE:
#if defined( XSpp_0a5561ee_005829 )
    static const char *GetPropertyValueAsDateTimeProperty_types[] = { "Wx::PGProperty" };
    static wxPliPrototype GetPropertyValueAsDateTimeProperty_proto( GetPropertyValueAsDateTimeProperty_types, sizeof( GetPropertyValueAsDateTimeProperty_types ) / sizeof( GetPropertyValueAsDateTimeProperty_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
    static const char *GetPropertyValueAsDateTimeString_types[] = { wxPliOvlstr };
    static wxPliPrototype GetPropertyValueAsDateTimeString_proto( GetPropertyValueAsDateTimeString_types, sizeof( GetPropertyValueAsDateTimeString_types ) / sizeof( GetPropertyValueAsDateTimeString_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
    static wxPliPrototype *wxPliOvl_all_prototypes[] = {
#if defined( XSpp_0a5561ee_005829 )
        &GetPropertyValueAsDateTimeProperty_proto,
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        &GetPropertyValueAsDateTimeString_proto,
#endif // defined( XSpp_0a5561ee_005829 )
        NULL };
    BEGIN_OVERLOAD()
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( GetPropertyValueAsDateTimeProperty_proto, GetPropertyValueAsDateTimeProperty, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( GetPropertyValueAsDateTimeString_proto, GetPropertyValueAsDateTimeString, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
    END_OVERLOAD_MESSAGE( Wx::PGPGridInterfaceBase::GetPropertyValueAsDateTime, wxPliOvl_all_prototypes )



#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
void
wxPGPGridInterfaceBase::Insert( ... )
  PPCODE:
#if defined( XSpp_0a5561ee_005829 )
    static const char *InsertProperty_types[] = { "Wx::PGProperty", "Wx::PGProperty" };
    static wxPliPrototype InsertProperty_proto( InsertProperty_types, sizeof( InsertProperty_types ) / sizeof( InsertProperty_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
    static const char *InsertString_types[] = { wxPliOvlstr, "Wx::PGProperty" };
    static wxPliPrototype InsertString_proto( InsertString_types, sizeof( InsertString_types ) / sizeof( InsertString_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
    static const char *InsertIndexProperty_types[] = { "Wx::PGProperty", wxPliOvlnum, "Wx::PGProperty" };
    static wxPliPrototype InsertIndexProperty_proto( InsertIndexProperty_types, sizeof( InsertIndexProperty_types ) / sizeof( InsertIndexProperty_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
    static const char *InsertIndexString_types[] = { wxPliOvlstr, wxPliOvlnum, "Wx::PGProperty" };
    static wxPliPrototype InsertIndexString_proto( InsertIndexString_types, sizeof( InsertIndexString_types ) / sizeof( InsertIndexString_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
    static wxPliPrototype *wxPliOvl_all_prototypes[] = {
#if defined( XSpp_0a5561ee_005829 )
        &InsertProperty_proto,
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        &InsertString_proto,
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        &InsertIndexProperty_proto,
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        &InsertIndexString_proto,
#endif // defined( XSpp_0a5561ee_005829 )
        NULL };
    BEGIN_OVERLOAD()
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( InsertProperty_proto, InsertProperty, 2 )
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( InsertString_proto, InsertString, 2 )
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( InsertIndexProperty_proto, InsertIndexProperty, 3 )
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( InsertIndexString_proto, InsertIndexString, 3 )
#endif // defined( XSpp_0a5561ee_005829 )
    END_OVERLOAD_MESSAGE( Wx::PGPGridInterfaceBase::Insert, wxPliOvl_all_prototypes )



#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
void
wxPGPGridInterfaceBase::SortChildren( ... )
  PPCODE:
#if defined( XSpp_0a5561ee_005829 )
    static const char *SortChildrenProperty_types[] = { "Wx::PGProperty", wxPliOvlnum };
    static wxPliPrototype SortChildrenProperty_proto( SortChildrenProperty_types, sizeof( SortChildrenProperty_types ) / sizeof( SortChildrenProperty_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
    static const char *SortChildrenString_types[] = { wxPliOvlstr, wxPliOvlnum };
    static wxPliPrototype SortChildrenString_proto( SortChildrenString_types, sizeof( SortChildrenString_types ) / sizeof( SortChildrenString_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
    static wxPliPrototype *wxPliOvl_all_prototypes[] = {
#if defined( XSpp_0a5561ee_005829 )
        &SortChildrenProperty_proto,
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        &SortChildrenString_proto,
#endif // defined( XSpp_0a5561ee_005829 )
        NULL };
    BEGIN_OVERLOAD()
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT_ALLOWMORE( SortChildrenProperty_proto, SortChildrenProperty, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT_ALLOWMORE( SortChildrenString_proto, SortChildrenString, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
    END_OVERLOAD_MESSAGE( Wx::PGPGridInterfaceBase::SortChildren, wxPliOvl_all_prototypes )



#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
void
wxPGPGridInterfaceBase::Expand( ... )
  PPCODE:
#if defined( XSpp_0a5561ee_005829 )
    static const char *ExpandProperty_types[] = { "Wx::PGProperty" };
    static wxPliPrototype ExpandProperty_proto( ExpandProperty_types, sizeof( ExpandProperty_types ) / sizeof( ExpandProperty_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
    static const char *ExpandString_types[] = { wxPliOvlstr };
    static wxPliPrototype ExpandString_proto( ExpandString_types, sizeof( ExpandString_types ) / sizeof( ExpandString_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
    static wxPliPrototype *wxPliOvl_all_prototypes[] = {
#if defined( XSpp_0a5561ee_005829 )
        &ExpandProperty_proto,
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        &ExpandString_proto,
#endif // defined( XSpp_0a5561ee_005829 )
        NULL };
    BEGIN_OVERLOAD()
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( ExpandProperty_proto, ExpandProperty, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( ExpandString_proto, ExpandString, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
    END_OVERLOAD_MESSAGE( Wx::PGPGridInterfaceBase::Expand, wxPliOvl_all_prototypes )



#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
void
wxPGPGridInterfaceBase::DisableProperty( ... )
  PPCODE:
#if defined( XSpp_0a5561ee_005829 )
    static const char *DisablePropertyProperty_types[] = { "Wx::PGProperty" };
    static wxPliPrototype DisablePropertyProperty_proto( DisablePropertyProperty_types, sizeof( DisablePropertyProperty_types ) / sizeof( DisablePropertyProperty_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
    static const char *DisablePropertyString_types[] = { wxPliOvlstr };
    static wxPliPrototype DisablePropertyString_proto( DisablePropertyString_types, sizeof( DisablePropertyString_types ) / sizeof( DisablePropertyString_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
    static wxPliPrototype *wxPliOvl_all_prototypes[] = {
#if defined( XSpp_0a5561ee_005829 )
        &DisablePropertyProperty_proto,
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        &DisablePropertyString_proto,
#endif // defined( XSpp_0a5561ee_005829 )
        NULL };
    BEGIN_OVERLOAD()
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( DisablePropertyProperty_proto, DisablePropertyProperty, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( DisablePropertyString_proto, DisablePropertyString, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
    END_OVERLOAD_MESSAGE( Wx::PGPGridInterfaceBase::DisableProperty, wxPliOvl_all_prototypes )



#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
void
wxPGPGridInterfaceBase::IsPropertyModified( ... )
  PPCODE:
#if defined( XSpp_0a5561ee_005829 )
    static const char *IsPropertyModifiedProperty_types[] = { "Wx::PGProperty" };
    static wxPliPrototype IsPropertyModifiedProperty_proto( IsPropertyModifiedProperty_types, sizeof( IsPropertyModifiedProperty_types ) / sizeof( IsPropertyModifiedProperty_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
    static const char *IsPropertyModifiedString_types[] = { wxPliOvlstr };
    static wxPliPrototype IsPropertyModifiedString_proto( IsPropertyModifiedString_types, sizeof( IsPropertyModifiedString_types ) / sizeof( IsPropertyModifiedString_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
    static wxPliPrototype *wxPliOvl_all_prototypes[] = {
#if defined( XSpp_0a5561ee_005829 )
        &IsPropertyModifiedProperty_proto,
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        &IsPropertyModifiedString_proto,
#endif // defined( XSpp_0a5561ee_005829 )
        NULL };
    BEGIN_OVERLOAD()
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( IsPropertyModifiedProperty_proto, IsPropertyModifiedProperty, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( IsPropertyModifiedString_proto, IsPropertyModifiedString, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
    END_OVERLOAD_MESSAGE( Wx::PGPGridInterfaceBase::IsPropertyModified, wxPliOvl_all_prototypes )



#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
void
wxPGPGridInterfaceBase::GetPropertyBackgroundColour( ... )
  PPCODE:
#if defined( XSpp_0a5561ee_005829 )
    static const char *GetPropertyBackgroundColourProperty_types[] = { "Wx::PGProperty" };
    static wxPliPrototype GetPropertyBackgroundColourProperty_proto( GetPropertyBackgroundColourProperty_types, sizeof( GetPropertyBackgroundColourProperty_types ) / sizeof( GetPropertyBackgroundColourProperty_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
    static const char *GetPropertyBackgroundColourString_types[] = { wxPliOvlstr };
    static wxPliPrototype GetPropertyBackgroundColourString_proto( GetPropertyBackgroundColourString_types, sizeof( GetPropertyBackgroundColourString_types ) / sizeof( GetPropertyBackgroundColourString_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
    static wxPliPrototype *wxPliOvl_all_prototypes[] = {
#if defined( XSpp_0a5561ee_005829 )
        &GetPropertyBackgroundColourProperty_proto,
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        &GetPropertyBackgroundColourString_proto,
#endif // defined( XSpp_0a5561ee_005829 )
        NULL };
    BEGIN_OVERLOAD()
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( GetPropertyBackgroundColourProperty_proto, GetPropertyBackgroundColourProperty, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( GetPropertyBackgroundColourString_proto, GetPropertyBackgroundColourString, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
    END_OVERLOAD_MESSAGE( Wx::PGPGridInterfaceBase::GetPropertyBackgroundColour, wxPliOvl_all_prototypes )



#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
void
wxPGPGridInterfaceBase::SetPropertyValueUnspecified( ... )
  PPCODE:
#if defined( XSpp_0a5561ee_005829 )
    static const char *SetPropertyValueUnspecifiedProperty_types[] = { "Wx::PGProperty" };
    static wxPliPrototype SetPropertyValueUnspecifiedProperty_proto( SetPropertyValueUnspecifiedProperty_types, sizeof( SetPropertyValueUnspecifiedProperty_types ) / sizeof( SetPropertyValueUnspecifiedProperty_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
    static const char *SetPropertyValueUnspecifiedString_types[] = { wxPliOvlstr };
    static wxPliPrototype SetPropertyValueUnspecifiedString_proto( SetPropertyValueUnspecifiedString_types, sizeof( SetPropertyValueUnspecifiedString_types ) / sizeof( SetPropertyValueUnspecifiedString_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
    static wxPliPrototype *wxPliOvl_all_prototypes[] = {
#if defined( XSpp_0a5561ee_005829 )
        &SetPropertyValueUnspecifiedProperty_proto,
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        &SetPropertyValueUnspecifiedString_proto,
#endif // defined( XSpp_0a5561ee_005829 )
        NULL };
    BEGIN_OVERLOAD()
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( SetPropertyValueUnspecifiedProperty_proto, SetPropertyValueUnspecifiedProperty, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( SetPropertyValueUnspecifiedString_proto, SetPropertyValueUnspecifiedString, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
    END_OVERLOAD_MESSAGE( Wx::PGPGridInterfaceBase::SetPropertyValueUnspecified, wxPliOvl_all_prototypes )



#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
void
wxPGPGridInterfaceBase::SetPropertyAttribute( ... )
  PPCODE:
#if defined( XSpp_0a5561ee_005829 )
    static const char *SetPropertyAttributeProperty_types[] = { "Wx::PGProperty", wxPliOvlstr, wxPliOvlstr, wxPliOvlnum };
    static wxPliPrototype SetPropertyAttributeProperty_proto( SetPropertyAttributeProperty_types, sizeof( SetPropertyAttributeProperty_types ) / sizeof( SetPropertyAttributeProperty_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
    static const char *SetPropertyAttributeString_types[] = { wxPliOvlstr, wxPliOvlstr, wxPliOvlstr, wxPliOvlnum };
    static wxPliPrototype SetPropertyAttributeString_proto( SetPropertyAttributeString_types, sizeof( SetPropertyAttributeString_types ) / sizeof( SetPropertyAttributeString_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
    static wxPliPrototype *wxPliOvl_all_prototypes[] = {
#if defined( XSpp_0a5561ee_005829 )
        &SetPropertyAttributeProperty_proto,
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        &SetPropertyAttributeString_proto,
#endif // defined( XSpp_0a5561ee_005829 )
        NULL };
    BEGIN_OVERLOAD()
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT_ALLOWMORE( SetPropertyAttributeProperty_proto, SetPropertyAttributeProperty, 3 )
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT_ALLOWMORE( SetPropertyAttributeString_proto, SetPropertyAttributeString, 3 )
#endif // defined( XSpp_0a5561ee_005829 )
    END_OVERLOAD_MESSAGE( Wx::PGPGridInterfaceBase::SetPropertyAttribute, wxPliOvl_all_prototypes )



#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
void
wxPGPGridInterfaceBase::GetPropertyValueAsArrayString( ... )
  PPCODE:
#if defined( XSpp_0a5561ee_005829 )
    static const char *GetPropertyValueAsArrayStringProperty_types[] = { "Wx::PGProperty" };
    static wxPliPrototype GetPropertyValueAsArrayStringProperty_proto( GetPropertyValueAsArrayStringProperty_types, sizeof( GetPropertyValueAsArrayStringProperty_types ) / sizeof( GetPropertyValueAsArrayStringProperty_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
    static const char *GetPropertyValueAsArrayStringString_types[] = { wxPliOvlstr };
    static wxPliPrototype GetPropertyValueAsArrayStringString_proto( GetPropertyValueAsArrayStringString_types, sizeof( GetPropertyValueAsArrayStringString_types ) / sizeof( GetPropertyValueAsArrayStringString_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
    static wxPliPrototype *wxPliOvl_all_prototypes[] = {
#if defined( XSpp_0a5561ee_005829 )
        &GetPropertyValueAsArrayStringProperty_proto,
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        &GetPropertyValueAsArrayStringString_proto,
#endif // defined( XSpp_0a5561ee_005829 )
        NULL };
    BEGIN_OVERLOAD()
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( GetPropertyValueAsArrayStringProperty_proto, GetPropertyValueAsArrayStringProperty, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( GetPropertyValueAsArrayStringString_proto, GetPropertyValueAsArrayStringString, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
    END_OVERLOAD_MESSAGE( Wx::PGPGridInterfaceBase::GetPropertyValueAsArrayString, wxPliOvl_all_prototypes )



#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
void
wxPGPGridInterfaceBase::GetPropertyValueAsLong( ... )
  PPCODE:
#if defined( XSpp_0a5561ee_005829 )
    static const char *GetPropertyValueAsLongProperty_types[] = { "Wx::PGProperty" };
    static wxPliPrototype GetPropertyValueAsLongProperty_proto( GetPropertyValueAsLongProperty_types, sizeof( GetPropertyValueAsLongProperty_types ) / sizeof( GetPropertyValueAsLongProperty_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
    static const char *GetPropertyValueAsLongString_types[] = { wxPliOvlstr };
    static wxPliPrototype GetPropertyValueAsLongString_proto( GetPropertyValueAsLongString_types, sizeof( GetPropertyValueAsLongString_types ) / sizeof( GetPropertyValueAsLongString_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
    static wxPliPrototype *wxPliOvl_all_prototypes[] = {
#if defined( XSpp_0a5561ee_005829 )
        &GetPropertyValueAsLongProperty_proto,
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        &GetPropertyValueAsLongString_proto,
#endif // defined( XSpp_0a5561ee_005829 )
        NULL };
    BEGIN_OVERLOAD()
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( GetPropertyValueAsLongProperty_proto, GetPropertyValueAsLongProperty, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( GetPropertyValueAsLongString_proto, GetPropertyValueAsLongString, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
    END_OVERLOAD_MESSAGE( Wx::PGPGridInterfaceBase::GetPropertyValueAsLong, wxPliOvl_all_prototypes )



#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
void
wxPGPGridInterfaceBase::GetPropertyHelpString( ... )
  PPCODE:
#if defined( XSpp_0a5561ee_005829 )
    static const char *GetPropertyHelpStringProperty_types[] = { "Wx::PGProperty" };
    static wxPliPrototype GetPropertyHelpStringProperty_proto( GetPropertyHelpStringProperty_types, sizeof( GetPropertyHelpStringProperty_types ) / sizeof( GetPropertyHelpStringProperty_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
    static const char *GetPropertyHelpStringString_types[] = { wxPliOvlstr };
    static wxPliPrototype GetPropertyHelpStringString_proto( GetPropertyHelpStringString_types, sizeof( GetPropertyHelpStringString_types ) / sizeof( GetPropertyHelpStringString_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
    static wxPliPrototype *wxPliOvl_all_prototypes[] = {
#if defined( XSpp_0a5561ee_005829 )
        &GetPropertyHelpStringProperty_proto,
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        &GetPropertyHelpStringString_proto,
#endif // defined( XSpp_0a5561ee_005829 )
        NULL };
    BEGIN_OVERLOAD()
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( GetPropertyHelpStringProperty_proto, GetPropertyHelpStringProperty, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( GetPropertyHelpStringString_proto, GetPropertyHelpStringString, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
    END_OVERLOAD_MESSAGE( Wx::PGPGridInterfaceBase::GetPropertyHelpString, wxPliOvl_all_prototypes )



#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
void
wxPGPGridInterfaceBase::GetPropertyImage( ... )
  PPCODE:
#if defined( XSpp_0a5561ee_005829 )
    static const char *GetPropertyImageProperty_types[] = { "Wx::PGProperty" };
    static wxPliPrototype GetPropertyImageProperty_proto( GetPropertyImageProperty_types, sizeof( GetPropertyImageProperty_types ) / sizeof( GetPropertyImageProperty_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
    static const char *GetPropertyImageString_types[] = { wxPliOvlstr };
    static wxPliPrototype GetPropertyImageString_proto( GetPropertyImageString_types, sizeof( GetPropertyImageString_types ) / sizeof( GetPropertyImageString_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
    static wxPliPrototype *wxPliOvl_all_prototypes[] = {
#if defined( XSpp_0a5561ee_005829 )
        &GetPropertyImageProperty_proto,
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        &GetPropertyImageString_proto,
#endif // defined( XSpp_0a5561ee_005829 )
        NULL };
    BEGIN_OVERLOAD()
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( GetPropertyImageProperty_proto, GetPropertyImageProperty, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( GetPropertyImageString_proto, GetPropertyImageString, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
    END_OVERLOAD_MESSAGE( Wx::PGPGridInterfaceBase::GetPropertyImage, wxPliOvl_all_prototypes )



#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
void
wxPGPGridInterfaceBase::Collapse( ... )
  PPCODE:
#if defined( XSpp_0a5561ee_005829 )
    static const char *CollapseProperty_types[] = { "Wx::PGProperty" };
    static wxPliPrototype CollapseProperty_proto( CollapseProperty_types, sizeof( CollapseProperty_types ) / sizeof( CollapseProperty_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
    static const char *CollapseString_types[] = { wxPliOvlstr };
    static wxPliPrototype CollapseString_proto( CollapseString_types, sizeof( CollapseString_types ) / sizeof( CollapseString_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
    static wxPliPrototype *wxPliOvl_all_prototypes[] = {
#if defined( XSpp_0a5561ee_005829 )
        &CollapseProperty_proto,
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        &CollapseString_proto,
#endif // defined( XSpp_0a5561ee_005829 )
        NULL };
    BEGIN_OVERLOAD()
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( CollapseProperty_proto, CollapseProperty, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( CollapseString_proto, CollapseString, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
    END_OVERLOAD_MESSAGE( Wx::PGPGridInterfaceBase::Collapse, wxPliOvl_all_prototypes )



#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
void
wxPGPGridInterfaceBase::GetPropertyEditor( ... )
  PPCODE:
#if defined( XSpp_0a5561ee_005829 )
    static const char *GetPropertyEditorProperty_types[] = { "Wx::PGProperty" };
    static wxPliPrototype GetPropertyEditorProperty_proto( GetPropertyEditorProperty_types, sizeof( GetPropertyEditorProperty_types ) / sizeof( GetPropertyEditorProperty_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
    static const char *GetPropertyEditorString_types[] = { wxPliOvlstr };
    static wxPliPrototype GetPropertyEditorString_proto( GetPropertyEditorString_types, sizeof( GetPropertyEditorString_types ) / sizeof( GetPropertyEditorString_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
    static wxPliPrototype *wxPliOvl_all_prototypes[] = {
#if defined( XSpp_0a5561ee_005829 )
        &GetPropertyEditorProperty_proto,
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        &GetPropertyEditorString_proto,
#endif // defined( XSpp_0a5561ee_005829 )
        NULL };
    BEGIN_OVERLOAD()
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( GetPropertyEditorProperty_proto, GetPropertyEditorProperty, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( GetPropertyEditorString_proto, GetPropertyEditorString, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
    END_OVERLOAD_MESSAGE( Wx::PGPGridInterfaceBase::GetPropertyEditor, wxPliOvl_all_prototypes )



#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
void
wxPGPGridInterfaceBase::IsPropertyExpanded( ... )
  PPCODE:
#if defined( XSpp_0a5561ee_005829 )
    static const char *IsPropertyExpandedProperty_types[] = { "Wx::PGProperty" };
    static wxPliPrototype IsPropertyExpandedProperty_proto( IsPropertyExpandedProperty_types, sizeof( IsPropertyExpandedProperty_types ) / sizeof( IsPropertyExpandedProperty_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
    static const char *IsPropertyExpandedString_types[] = { wxPliOvlstr };
    static wxPliPrototype IsPropertyExpandedString_proto( IsPropertyExpandedString_types, sizeof( IsPropertyExpandedString_types ) / sizeof( IsPropertyExpandedString_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
    static wxPliPrototype *wxPliOvl_all_prototypes[] = {
#if defined( XSpp_0a5561ee_005829 )
        &IsPropertyExpandedProperty_proto,
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        &IsPropertyExpandedString_proto,
#endif // defined( XSpp_0a5561ee_005829 )
        NULL };
    BEGIN_OVERLOAD()
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( IsPropertyExpandedProperty_proto, IsPropertyExpandedProperty, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( IsPropertyExpandedString_proto, IsPropertyExpandedString, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
    END_OVERLOAD_MESSAGE( Wx::PGPGridInterfaceBase::IsPropertyExpanded, wxPliOvl_all_prototypes )



#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
void
wxPGPGridInterfaceBase::GetPropertyValueAsULongLong( ... )
  PPCODE:
#if defined( XSpp_0a5561ee_005829 )
    static const char *GetPropertyValueAsULongLongProperty_types[] = { "Wx::PGProperty" };
    static wxPliPrototype GetPropertyValueAsULongLongProperty_proto( GetPropertyValueAsULongLongProperty_types, sizeof( GetPropertyValueAsULongLongProperty_types ) / sizeof( GetPropertyValueAsULongLongProperty_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
    static const char *GetPropertyValueAsULongLongString_types[] = { wxPliOvlstr };
    static wxPliPrototype GetPropertyValueAsULongLongString_proto( GetPropertyValueAsULongLongString_types, sizeof( GetPropertyValueAsULongLongString_types ) / sizeof( GetPropertyValueAsULongLongString_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
    static wxPliPrototype *wxPliOvl_all_prototypes[] = {
#if defined( XSpp_0a5561ee_005829 )
        &GetPropertyValueAsULongLongProperty_proto,
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        &GetPropertyValueAsULongLongString_proto,
#endif // defined( XSpp_0a5561ee_005829 )
        NULL };
    BEGIN_OVERLOAD()
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( GetPropertyValueAsULongLongProperty_proto, GetPropertyValueAsULongLongProperty, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( GetPropertyValueAsULongLongString_proto, GetPropertyValueAsULongLongString, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
    END_OVERLOAD_MESSAGE( Wx::PGPGridInterfaceBase::GetPropertyValueAsULongLong, wxPliOvl_all_prototypes )



#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
void
wxPGPGridInterfaceBase::AppendIn( ... )
  PPCODE:
#if defined( XSpp_0a5561ee_005829 )
    static const char *AppendInProperty_types[] = { "Wx::PGProperty", "Wx::PGProperty" };
    static wxPliPrototype AppendInProperty_proto( AppendInProperty_types, sizeof( AppendInProperty_types ) / sizeof( AppendInProperty_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
    static const char *AppendInString_types[] = { wxPliOvlstr, "Wx::PGProperty" };
    static wxPliPrototype AppendInString_proto( AppendInString_types, sizeof( AppendInString_types ) / sizeof( AppendInString_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
    static wxPliPrototype *wxPliOvl_all_prototypes[] = {
#if defined( XSpp_0a5561ee_005829 )
        &AppendInProperty_proto,
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        &AppendInString_proto,
#endif // defined( XSpp_0a5561ee_005829 )
        NULL };
    BEGIN_OVERLOAD()
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( AppendInProperty_proto, AppendInProperty, 2 )
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( AppendInString_proto, AppendInString, 2 )
#endif // defined( XSpp_0a5561ee_005829 )
    END_OVERLOAD_MESSAGE( Wx::PGPGridInterfaceBase::AppendIn, wxPliOvl_all_prototypes )



#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
void
wxPGPGridInterfaceBase::GetPropertyValueAsBool( ... )
  PPCODE:
#if defined( XSpp_0a5561ee_005829 )
    static const char *GetPropertyValueAsBoolProperty_types[] = { "Wx::PGProperty" };
    static wxPliPrototype GetPropertyValueAsBoolProperty_proto( GetPropertyValueAsBoolProperty_types, sizeof( GetPropertyValueAsBoolProperty_types ) / sizeof( GetPropertyValueAsBoolProperty_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
    static const char *GetPropertyValueAsBoolString_types[] = { wxPliOvlstr };
    static wxPliPrototype GetPropertyValueAsBoolString_proto( GetPropertyValueAsBoolString_types, sizeof( GetPropertyValueAsBoolString_types ) / sizeof( GetPropertyValueAsBoolString_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
    static wxPliPrototype *wxPliOvl_all_prototypes[] = {
#if defined( XSpp_0a5561ee_005829 )
        &GetPropertyValueAsBoolProperty_proto,
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        &GetPropertyValueAsBoolString_proto,
#endif // defined( XSpp_0a5561ee_005829 )
        NULL };
    BEGIN_OVERLOAD()
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( GetPropertyValueAsBoolProperty_proto, GetPropertyValueAsBoolProperty, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( GetPropertyValueAsBoolString_proto, GetPropertyValueAsBoolString, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
    END_OVERLOAD_MESSAGE( Wx::PGPGridInterfaceBase::GetPropertyValueAsBool, wxPliOvl_all_prototypes )



#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
void
wxPGPGridInterfaceBase::GetPropertyValueAsString( ... )
  PPCODE:
#if defined( XSpp_0a5561ee_005829 )
    static const char *GetPropertyValueAsStringProperty_types[] = { "Wx::PGProperty" };
    static wxPliPrototype GetPropertyValueAsStringProperty_proto( GetPropertyValueAsStringProperty_types, sizeof( GetPropertyValueAsStringProperty_types ) / sizeof( GetPropertyValueAsStringProperty_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
    static const char *GetPropertyValueAsStringString_types[] = { wxPliOvlstr };
    static wxPliPrototype GetPropertyValueAsStringString_proto( GetPropertyValueAsStringString_types, sizeof( GetPropertyValueAsStringString_types ) / sizeof( GetPropertyValueAsStringString_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
    static wxPliPrototype *wxPliOvl_all_prototypes[] = {
#if defined( XSpp_0a5561ee_005829 )
        &GetPropertyValueAsStringProperty_proto,
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        &GetPropertyValueAsStringString_proto,
#endif // defined( XSpp_0a5561ee_005829 )
        NULL };
    BEGIN_OVERLOAD()
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( GetPropertyValueAsStringProperty_proto, GetPropertyValueAsStringProperty, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( GetPropertyValueAsStringString_proto, GetPropertyValueAsStringString, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
    END_OVERLOAD_MESSAGE( Wx::PGPGridInterfaceBase::GetPropertyValueAsString, wxPliOvl_all_prototypes )



#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
void
wxPGPGridInterfaceBase::GetPropertyValue( ... )
  PPCODE:
#if defined( XSpp_0a5561ee_005829 )
    static const char *GetPropertyValueProperty_types[] = { "Wx::PGProperty" };
    static wxPliPrototype GetPropertyValueProperty_proto( GetPropertyValueProperty_types, sizeof( GetPropertyValueProperty_types ) / sizeof( GetPropertyValueProperty_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
    static const char *GetPropertyValueString_types[] = { wxPliOvlstr };
    static wxPliPrototype GetPropertyValueString_proto( GetPropertyValueString_types, sizeof( GetPropertyValueString_types ) / sizeof( GetPropertyValueString_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
    static wxPliPrototype *wxPliOvl_all_prototypes[] = {
#if defined( XSpp_0a5561ee_005829 )
        &GetPropertyValueProperty_proto,
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        &GetPropertyValueString_proto,
#endif // defined( XSpp_0a5561ee_005829 )
        NULL };
    BEGIN_OVERLOAD()
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( GetPropertyValueProperty_proto, GetPropertyValueProperty, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( GetPropertyValueString_proto, GetPropertyValueString, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
    END_OVERLOAD_MESSAGE( Wx::PGPGridInterfaceBase::GetPropertyValue, wxPliOvl_all_prototypes )



#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
void
wxPGPGridInterfaceBase::GetPropertyValidator( ... )
  PPCODE:
#if defined( XSpp_0a5561ee_005829 )
    static const char *GetPropertyValidatorProperty_types[] = { "Wx::PGProperty" };
    static wxPliPrototype GetPropertyValidatorProperty_proto( GetPropertyValidatorProperty_types, sizeof( GetPropertyValidatorProperty_types ) / sizeof( GetPropertyValidatorProperty_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
    static const char *GetPropertyValidatorString_types[] = { wxPliOvlstr };
    static wxPliPrototype GetPropertyValidatorString_proto( GetPropertyValidatorString_types, sizeof( GetPropertyValidatorString_types ) / sizeof( GetPropertyValidatorString_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
    static wxPliPrototype *wxPliOvl_all_prototypes[] = {
#if defined( XSpp_0a5561ee_005829 )
        &GetPropertyValidatorProperty_proto,
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        &GetPropertyValidatorString_proto,
#endif // defined( XSpp_0a5561ee_005829 )
        NULL };
    BEGIN_OVERLOAD()
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( GetPropertyValidatorProperty_proto, GetPropertyValidatorProperty, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( GetPropertyValidatorString_proto, GetPropertyValidatorString, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
    END_OVERLOAD_MESSAGE( Wx::PGPGridInterfaceBase::GetPropertyValidator, wxPliOvl_all_prototypes )



#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
void
wxPGPGridInterfaceBase::GetPropertyTextColour( ... )
  PPCODE:
#if defined( XSpp_0a5561ee_005829 )
    static const char *GetPropertyTextColourProperty_types[] = { "Wx::PGProperty" };
    static wxPliPrototype GetPropertyTextColourProperty_proto( GetPropertyTextColourProperty_types, sizeof( GetPropertyTextColourProperty_types ) / sizeof( GetPropertyTextColourProperty_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
    static const char *GetPropertyTextColourString_types[] = { wxPliOvlstr };
    static wxPliPrototype GetPropertyTextColourString_proto( GetPropertyTextColourString_types, sizeof( GetPropertyTextColourString_types ) / sizeof( GetPropertyTextColourString_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
    static wxPliPrototype *wxPliOvl_all_prototypes[] = {
#if defined( XSpp_0a5561ee_005829 )
        &GetPropertyTextColourProperty_proto,
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        &GetPropertyTextColourString_proto,
#endif // defined( XSpp_0a5561ee_005829 )
        NULL };
    BEGIN_OVERLOAD()
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( GetPropertyTextColourProperty_proto, GetPropertyTextColourProperty, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( GetPropertyTextColourString_proto, GetPropertyTextColourString, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
    END_OVERLOAD_MESSAGE( Wx::PGPGridInterfaceBase::GetPropertyTextColour, wxPliOvl_all_prototypes )



#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
void
wxPGPGridInterfaceBase::GetPropertyAttribute( ... )
  PPCODE:
#if defined( XSpp_0a5561ee_005829 )
    static const char *GetPropertyAttributeProperty_types[] = { "Wx::PGProperty", wxPliOvlstr };
    static wxPliPrototype GetPropertyAttributeProperty_proto( GetPropertyAttributeProperty_types, sizeof( GetPropertyAttributeProperty_types ) / sizeof( GetPropertyAttributeProperty_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
    static const char *GetPropertyAttributeString_types[] = { wxPliOvlstr, wxPliOvlstr };
    static wxPliPrototype GetPropertyAttributeString_proto( GetPropertyAttributeString_types, sizeof( GetPropertyAttributeString_types ) / sizeof( GetPropertyAttributeString_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
    static wxPliPrototype *wxPliOvl_all_prototypes[] = {
#if defined( XSpp_0a5561ee_005829 )
        &GetPropertyAttributeProperty_proto,
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        &GetPropertyAttributeString_proto,
#endif // defined( XSpp_0a5561ee_005829 )
        NULL };
    BEGIN_OVERLOAD()
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( GetPropertyAttributeProperty_proto, GetPropertyAttributeProperty, 2 )
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( GetPropertyAttributeString_proto, GetPropertyAttributeString, 2 )
#endif // defined( XSpp_0a5561ee_005829 )
    END_OVERLOAD_MESSAGE( Wx::PGPGridInterfaceBase::GetPropertyAttribute, wxPliOvl_all_prototypes )



#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
void
wxPGPGridInterfaceBase::GetPropertyByName( ... )
  PPCODE:
#if defined( XSpp_0a5561ee_005829 )
    static const char *GetPropertyByNameName_types[] = { wxPliOvlstr };
    static wxPliPrototype GetPropertyByNameName_proto( GetPropertyByNameName_types, sizeof( GetPropertyByNameName_types ) / sizeof( GetPropertyByNameName_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
    static const char *GetPropertyByNameSubName_types[] = { wxPliOvlstr, wxPliOvlstr };
    static wxPliPrototype GetPropertyByNameSubName_proto( GetPropertyByNameSubName_types, sizeof( GetPropertyByNameSubName_types ) / sizeof( GetPropertyByNameSubName_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
    static wxPliPrototype *wxPliOvl_all_prototypes[] = {
#if defined( XSpp_0a5561ee_005829 )
        &GetPropertyByNameName_proto,
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        &GetPropertyByNameSubName_proto,
#endif // defined( XSpp_0a5561ee_005829 )
        NULL };
    BEGIN_OVERLOAD()
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( GetPropertyByNameName_proto, GetPropertyByNameName, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( GetPropertyByNameSubName_proto, GetPropertyByNameSubName, 2 )
#endif // defined( XSpp_0a5561ee_005829 )
    END_OVERLOAD_MESSAGE( Wx::PGPGridInterfaceBase::GetPropertyByName, wxPliOvl_all_prototypes )



#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
void
wxPGPGridInterfaceBase::SetPropertyLabel( ... )
  PPCODE:
#if defined( XSpp_0a5561ee_005829 )
    static const char *SetPropertyLabelProperty_types[] = { "Wx::PGProperty", wxPliOvlstr };
    static wxPliPrototype SetPropertyLabelProperty_proto( SetPropertyLabelProperty_types, sizeof( SetPropertyLabelProperty_types ) / sizeof( SetPropertyLabelProperty_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
    static const char *SetPropertyLabelString_types[] = { wxPliOvlstr, wxPliOvlstr };
    static wxPliPrototype SetPropertyLabelString_proto( SetPropertyLabelString_types, sizeof( SetPropertyLabelString_types ) / sizeof( SetPropertyLabelString_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
    static wxPliPrototype *wxPliOvl_all_prototypes[] = {
#if defined( XSpp_0a5561ee_005829 )
        &SetPropertyLabelProperty_proto,
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        &SetPropertyLabelString_proto,
#endif // defined( XSpp_0a5561ee_005829 )
        NULL };
    BEGIN_OVERLOAD()
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( SetPropertyLabelProperty_proto, SetPropertyLabelProperty, 2 )
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( SetPropertyLabelString_proto, SetPropertyLabelString, 2 )
#endif // defined( XSpp_0a5561ee_005829 )
    END_OVERLOAD_MESSAGE( Wx::PGPGridInterfaceBase::SetPropertyLabel, wxPliOvl_all_prototypes )



#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
void
wxPGPGridInterfaceBase::GetPropertyLabel( ... )
  PPCODE:
#if defined( XSpp_0a5561ee_005829 )
    static const char *GetPropertyLabelProperty_types[] = { "Wx::PGProperty" };
    static wxPliPrototype GetPropertyLabelProperty_proto( GetPropertyLabelProperty_types, sizeof( GetPropertyLabelProperty_types ) / sizeof( GetPropertyLabelProperty_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
    static const char *GetPropertyLabelString_types[] = { wxPliOvlstr };
    static wxPliPrototype GetPropertyLabelString_proto( GetPropertyLabelString_types, sizeof( GetPropertyLabelString_types ) / sizeof( GetPropertyLabelString_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
    static wxPliPrototype *wxPliOvl_all_prototypes[] = {
#if defined( XSpp_0a5561ee_005829 )
        &GetPropertyLabelProperty_proto,
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        &GetPropertyLabelString_proto,
#endif // defined( XSpp_0a5561ee_005829 )
        NULL };
    BEGIN_OVERLOAD()
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( GetPropertyLabelProperty_proto, GetPropertyLabelProperty, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( GetPropertyLabelString_proto, GetPropertyLabelString, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
    END_OVERLOAD_MESSAGE( Wx::PGPGridInterfaceBase::GetPropertyLabel, wxPliOvl_all_prototypes )



#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
void
wxPGPGridInterfaceBase::GetPropertyValueAsULong( ... )
  PPCODE:
#if defined( XSpp_0a5561ee_005829 )
    static const char *GetPropertyValueAsULongProperty_types[] = { "Wx::PGProperty" };
    static wxPliPrototype GetPropertyValueAsULongProperty_proto( GetPropertyValueAsULongProperty_types, sizeof( GetPropertyValueAsULongProperty_types ) / sizeof( GetPropertyValueAsULongProperty_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
    static const char *GetPropertyValueAsULongString_types[] = { wxPliOvlstr };
    static wxPliPrototype GetPropertyValueAsULongString_proto( GetPropertyValueAsULongString_types, sizeof( GetPropertyValueAsULongString_types ) / sizeof( GetPropertyValueAsULongString_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
    static wxPliPrototype *wxPliOvl_all_prototypes[] = {
#if defined( XSpp_0a5561ee_005829 )
        &GetPropertyValueAsULongProperty_proto,
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        &GetPropertyValueAsULongString_proto,
#endif // defined( XSpp_0a5561ee_005829 )
        NULL };
    BEGIN_OVERLOAD()
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( GetPropertyValueAsULongProperty_proto, GetPropertyValueAsULongProperty, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( GetPropertyValueAsULongString_proto, GetPropertyValueAsULongString, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
    END_OVERLOAD_MESSAGE( Wx::PGPGridInterfaceBase::GetPropertyValueAsULong, wxPliOvl_all_prototypes )



#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
void
wxPGPGridInterfaceBase::HideProperty( ... )
  PPCODE:
#if defined( XSpp_0a5561ee_005829 )
    static const char *HidePropertyProperty_types[] = { "Wx::PGProperty", wxPliOvlbool, wxPliOvlnum };
    static wxPliPrototype HidePropertyProperty_proto( HidePropertyProperty_types, sizeof( HidePropertyProperty_types ) / sizeof( HidePropertyProperty_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
    static const char *HidePropertyString_types[] = { wxPliOvlstr, wxPliOvlbool, wxPliOvlnum };
    static wxPliPrototype HidePropertyString_proto( HidePropertyString_types, sizeof( HidePropertyString_types ) / sizeof( HidePropertyString_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
    static wxPliPrototype *wxPliOvl_all_prototypes[] = {
#if defined( XSpp_0a5561ee_005829 )
        &HidePropertyProperty_proto,
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        &HidePropertyString_proto,
#endif // defined( XSpp_0a5561ee_005829 )
        NULL };
    BEGIN_OVERLOAD()
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT_ALLOWMORE( HidePropertyProperty_proto, HidePropertyProperty, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT_ALLOWMORE( HidePropertyString_proto, HidePropertyString, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
    END_OVERLOAD_MESSAGE( Wx::PGPGridInterfaceBase::HideProperty, wxPliOvl_all_prototypes )



#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
void
wxPGPGridInterfaceBase::GetPropertyValueAsInt( ... )
  PPCODE:
#if defined( XSpp_0a5561ee_005829 )
    static const char *GetPropertyValueAsIntProperty_types[] = { "Wx::PGProperty" };
    static wxPliPrototype GetPropertyValueAsIntProperty_proto( GetPropertyValueAsIntProperty_types, sizeof( GetPropertyValueAsIntProperty_types ) / sizeof( GetPropertyValueAsIntProperty_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
    static const char *GetPropertyValueAsIntString_types[] = { wxPliOvlstr };
    static wxPliPrototype GetPropertyValueAsIntString_proto( GetPropertyValueAsIntString_types, sizeof( GetPropertyValueAsIntString_types ) / sizeof( GetPropertyValueAsIntString_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
    static wxPliPrototype *wxPliOvl_all_prototypes[] = {
#if defined( XSpp_0a5561ee_005829 )
        &GetPropertyValueAsIntProperty_proto,
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        &GetPropertyValueAsIntString_proto,
#endif // defined( XSpp_0a5561ee_005829 )
        NULL };
    BEGIN_OVERLOAD()
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( GetPropertyValueAsIntProperty_proto, GetPropertyValueAsIntProperty, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( GetPropertyValueAsIntString_proto, GetPropertyValueAsIntString, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
    END_OVERLOAD_MESSAGE( Wx::PGPGridInterfaceBase::GetPropertyValueAsInt, wxPliOvl_all_prototypes )



#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
void
wxPGPGridInterfaceBase::SetPropertyValidator( ... )
  PPCODE:
#if defined( XSpp_0a5561ee_005829 )
    static const char *SetPropertyValidatorProperty_types[] = { "Wx::PGProperty", "Wx::Validator" };
    static wxPliPrototype SetPropertyValidatorProperty_proto( SetPropertyValidatorProperty_types, sizeof( SetPropertyValidatorProperty_types ) / sizeof( SetPropertyValidatorProperty_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
    static const char *SetPropertyValidatorString_types[] = { wxPliOvlstr, "Wx::Validator" };
    static wxPliPrototype SetPropertyValidatorString_proto( SetPropertyValidatorString_types, sizeof( SetPropertyValidatorString_types ) / sizeof( SetPropertyValidatorString_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
    static wxPliPrototype *wxPliOvl_all_prototypes[] = {
#if defined( XSpp_0a5561ee_005829 )
        &SetPropertyValidatorProperty_proto,
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        &SetPropertyValidatorString_proto,
#endif // defined( XSpp_0a5561ee_005829 )
        NULL };
    BEGIN_OVERLOAD()
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( SetPropertyValidatorProperty_proto, SetPropertyValidatorProperty, 2 )
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( SetPropertyValidatorString_proto, SetPropertyValidatorString, 2 )
#endif // defined( XSpp_0a5561ee_005829 )
    END_OVERLOAD_MESSAGE( Wx::PGPGridInterfaceBase::SetPropertyValidator, wxPliOvl_all_prototypes )



#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
void
wxPGPGridInterfaceBase::IsPropertyValueUnspecified( ... )
  PPCODE:
#if defined( XSpp_0a5561ee_005829 )
    static const char *IsPropertyValueUnspecifiedProperty_types[] = { "Wx::PGProperty" };
    static wxPliPrototype IsPropertyValueUnspecifiedProperty_proto( IsPropertyValueUnspecifiedProperty_types, sizeof( IsPropertyValueUnspecifiedProperty_types ) / sizeof( IsPropertyValueUnspecifiedProperty_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
    static const char *IsPropertyValueUnspecifiedString_types[] = { wxPliOvlstr };
    static wxPliPrototype IsPropertyValueUnspecifiedString_proto( IsPropertyValueUnspecifiedString_types, sizeof( IsPropertyValueUnspecifiedString_types ) / sizeof( IsPropertyValueUnspecifiedString_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
    static wxPliPrototype *wxPliOvl_all_prototypes[] = {
#if defined( XSpp_0a5561ee_005829 )
        &IsPropertyValueUnspecifiedProperty_proto,
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        &IsPropertyValueUnspecifiedString_proto,
#endif // defined( XSpp_0a5561ee_005829 )
        NULL };
    BEGIN_OVERLOAD()
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( IsPropertyValueUnspecifiedProperty_proto, IsPropertyValueUnspecifiedProperty, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( IsPropertyValueUnspecifiedString_proto, IsPropertyValueUnspecifiedString, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
    END_OVERLOAD_MESSAGE( Wx::PGPGridInterfaceBase::IsPropertyValueUnspecified, wxPliOvl_all_prototypes )



#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
void
wxPGPGridInterfaceBase::SetPropertyName( ... )
  PPCODE:
#if defined( XSpp_0a5561ee_005829 )
    static const char *SetPropertyNameProperty_types[] = { "Wx::PGProperty", wxPliOvlstr };
    static wxPliPrototype SetPropertyNameProperty_proto( SetPropertyNameProperty_types, sizeof( SetPropertyNameProperty_types ) / sizeof( SetPropertyNameProperty_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
    static const char *SetPropertyNameString_types[] = { wxPliOvlstr, wxPliOvlstr };
    static wxPliPrototype SetPropertyNameString_proto( SetPropertyNameString_types, sizeof( SetPropertyNameString_types ) / sizeof( SetPropertyNameString_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
    static wxPliPrototype *wxPliOvl_all_prototypes[] = {
#if defined( XSpp_0a5561ee_005829 )
        &SetPropertyNameProperty_proto,
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        &SetPropertyNameString_proto,
#endif // defined( XSpp_0a5561ee_005829 )
        NULL };
    BEGIN_OVERLOAD()
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( SetPropertyNameProperty_proto, SetPropertyNameProperty, 2 )
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( SetPropertyNameString_proto, SetPropertyNameString, 2 )
#endif // defined( XSpp_0a5561ee_005829 )
    END_OVERLOAD_MESSAGE( Wx::PGPGridInterfaceBase::SetPropertyName, wxPliOvl_all_prototypes )



#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
void
wxPGPGridInterfaceBase::DeleteProperty( ... )
  PPCODE:
#if defined( XSpp_0a5561ee_005829 )
    static const char *DeletePropertyProperty_types[] = { "Wx::PGProperty" };
    static wxPliPrototype DeletePropertyProperty_proto( DeletePropertyProperty_types, sizeof( DeletePropertyProperty_types ) / sizeof( DeletePropertyProperty_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
    static const char *DeletePropertyString_types[] = { wxPliOvlstr };
    static wxPliPrototype DeletePropertyString_proto( DeletePropertyString_types, sizeof( DeletePropertyString_types ) / sizeof( DeletePropertyString_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
    static wxPliPrototype *wxPliOvl_all_prototypes[] = {
#if defined( XSpp_0a5561ee_005829 )
        &DeletePropertyProperty_proto,
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        &DeletePropertyString_proto,
#endif // defined( XSpp_0a5561ee_005829 )
        NULL };
    BEGIN_OVERLOAD()
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( DeletePropertyProperty_proto, DeletePropertyProperty, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( DeletePropertyString_proto, DeletePropertyString, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
    END_OVERLOAD_MESSAGE( Wx::PGPGridInterfaceBase::DeleteProperty, wxPliOvl_all_prototypes )



#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
void
wxPGPGridInterfaceBase::GetPropertyValueAsDouble( ... )
  PPCODE:
#if defined( XSpp_0a5561ee_005829 )
    static const char *GetPropertyValueAsDoubleProperty_types[] = { "Wx::PGProperty" };
    static wxPliPrototype GetPropertyValueAsDoubleProperty_proto( GetPropertyValueAsDoubleProperty_types, sizeof( GetPropertyValueAsDoubleProperty_types ) / sizeof( GetPropertyValueAsDoubleProperty_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
    static const char *GetPropertyValueAsDoubleString_types[] = { wxPliOvlstr };
    static wxPliPrototype GetPropertyValueAsDoubleString_proto( GetPropertyValueAsDoubleString_types, sizeof( GetPropertyValueAsDoubleString_types ) / sizeof( GetPropertyValueAsDoubleString_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
    static wxPliPrototype *wxPliOvl_all_prototypes[] = {
#if defined( XSpp_0a5561ee_005829 )
        &GetPropertyValueAsDoubleProperty_proto,
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        &GetPropertyValueAsDoubleString_proto,
#endif // defined( XSpp_0a5561ee_005829 )
        NULL };
    BEGIN_OVERLOAD()
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( GetPropertyValueAsDoubleProperty_proto, GetPropertyValueAsDoubleProperty, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( GetPropertyValueAsDoubleString_proto, GetPropertyValueAsDoubleString, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
    END_OVERLOAD_MESSAGE( Wx::PGPGridInterfaceBase::GetPropertyValueAsDouble, wxPliOvl_all_prototypes )



#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
void
wxPGPGridInterfaceBase::GetIterator( ... )
  PPCODE:
#if defined( XSpp_0a5561ee_005829 )
    static const char *GetIteratorPropertyOverload_types[] = { wxPliOvlnum, "Wx::PGProperty" };
    static wxPliPrototype GetIteratorPropertyOverload_proto( GetIteratorPropertyOverload_types, sizeof( GetIteratorPropertyOverload_types ) / sizeof( GetIteratorPropertyOverload_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
    static const char *GetIteratorPosOverload_types[] = { wxPliOvlnum, wxPliOvlnum };
    static wxPliPrototype GetIteratorPosOverload_proto( GetIteratorPosOverload_types, sizeof( GetIteratorPosOverload_types ) / sizeof( GetIteratorPosOverload_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
    static wxPliPrototype *wxPliOvl_all_prototypes[] = {
#if defined( XSpp_0a5561ee_005829 )
        &GetIteratorPropertyOverload_proto,
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        &GetIteratorPosOverload_proto,
#endif // defined( XSpp_0a5561ee_005829 )
        NULL };
    BEGIN_OVERLOAD()
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT_ALLOWMORE( GetIteratorPropertyOverload_proto, GetIteratorPropertyOverload, 0 )
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( GetIteratorPosOverload_proto, GetIteratorPosOverload, 2 )
#endif // defined( XSpp_0a5561ee_005829 )
    END_OVERLOAD_MESSAGE( Wx::PGPGridInterfaceBase::GetIterator, wxPliOvl_all_prototypes )



#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
void
wxPGPGridInterfaceBase::SetPropertyColoursToDefault( ... )
  PPCODE:
#if defined( XSpp_0a5561ee_005829 )
    static const char *SetPropertyColoursToDefaultProperty_types[] = { "Wx::PGProperty" };
    static wxPliPrototype SetPropertyColoursToDefaultProperty_proto( SetPropertyColoursToDefaultProperty_types, sizeof( SetPropertyColoursToDefaultProperty_types ) / sizeof( SetPropertyColoursToDefaultProperty_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
    static const char *SetPropertyColoursToDefaultString_types[] = { wxPliOvlstr };
    static wxPliPrototype SetPropertyColoursToDefaultString_proto( SetPropertyColoursToDefaultString_types, sizeof( SetPropertyColoursToDefaultString_types ) / sizeof( SetPropertyColoursToDefaultString_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
    static wxPliPrototype *wxPliOvl_all_prototypes[] = {
#if defined( XSpp_0a5561ee_005829 )
        &SetPropertyColoursToDefaultProperty_proto,
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        &SetPropertyColoursToDefaultString_proto,
#endif // defined( XSpp_0a5561ee_005829 )
        NULL };
    BEGIN_OVERLOAD()
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( SetPropertyColoursToDefaultProperty_proto, SetPropertyColoursToDefaultProperty, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( SetPropertyColoursToDefaultString_proto, SetPropertyColoursToDefaultString, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
    END_OVERLOAD_MESSAGE( Wx::PGPGridInterfaceBase::SetPropertyColoursToDefault, wxPliOvl_all_prototypes )



#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
void
wxPGPGridInterfaceBase::SetPropertyMaxLength( ... )
  PPCODE:
#if defined( XSpp_0a5561ee_005829 )
    static const char *SetPropertyMaxLengthProperty_types[] = { "Wx::PGProperty", wxPliOvlnum };
    static wxPliPrototype SetPropertyMaxLengthProperty_proto( SetPropertyMaxLengthProperty_types, sizeof( SetPropertyMaxLengthProperty_types ) / sizeof( SetPropertyMaxLengthProperty_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
    static const char *SetPropertyMaxLengthString_types[] = { wxPliOvlstr, wxPliOvlnum };
    static wxPliPrototype SetPropertyMaxLengthString_proto( SetPropertyMaxLengthString_types, sizeof( SetPropertyMaxLengthString_types ) / sizeof( SetPropertyMaxLengthString_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
    static wxPliPrototype *wxPliOvl_all_prototypes[] = {
#if defined( XSpp_0a5561ee_005829 )
        &SetPropertyMaxLengthProperty_proto,
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        &SetPropertyMaxLengthString_proto,
#endif // defined( XSpp_0a5561ee_005829 )
        NULL };
    BEGIN_OVERLOAD()
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( SetPropertyMaxLengthProperty_proto, SetPropertyMaxLengthProperty, 2 )
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( SetPropertyMaxLengthString_proto, SetPropertyMaxLengthString, 2 )
#endif // defined( XSpp_0a5561ee_005829 )
    END_OVERLOAD_MESSAGE( Wx::PGPGridInterfaceBase::SetPropertyMaxLength, wxPliOvl_all_prototypes )



#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
void
wxPGPGridInterfaceBase::SetPropertyReadOnly( ... )
  PPCODE:
#if defined( XSpp_0a5561ee_005829 )
    static const char *SetPropertyReadOnlyProperty_types[] = { "Wx::PGProperty", wxPliOvlbool, wxPliOvlnum };
    static wxPliPrototype SetPropertyReadOnlyProperty_proto( SetPropertyReadOnlyProperty_types, sizeof( SetPropertyReadOnlyProperty_types ) / sizeof( SetPropertyReadOnlyProperty_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
    static const char *SetPropertyReadOnlyString_types[] = { wxPliOvlstr, wxPliOvlbool, wxPliOvlnum };
    static wxPliPrototype SetPropertyReadOnlyString_proto( SetPropertyReadOnlyString_types, sizeof( SetPropertyReadOnlyString_types ) / sizeof( SetPropertyReadOnlyString_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
    static wxPliPrototype *wxPliOvl_all_prototypes[] = {
#if defined( XSpp_0a5561ee_005829 )
        &SetPropertyReadOnlyProperty_proto,
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        &SetPropertyReadOnlyString_proto,
#endif // defined( XSpp_0a5561ee_005829 )
        NULL };
    BEGIN_OVERLOAD()
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT_ALLOWMORE( SetPropertyReadOnlyProperty_proto, SetPropertyReadOnlyProperty, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT_ALLOWMORE( SetPropertyReadOnlyString_proto, SetPropertyReadOnlyString, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
    END_OVERLOAD_MESSAGE( Wx::PGPGridInterfaceBase::SetPropertyReadOnly, wxPliOvl_all_prototypes )



#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
void
wxPGPGridInterfaceBase::IsPropertyShown( ... )
  PPCODE:
#if defined( XSpp_0a5561ee_005829 )
    static const char *IsPropertyShownProperty_types[] = { "Wx::PGProperty" };
    static wxPliPrototype IsPropertyShownProperty_proto( IsPropertyShownProperty_types, sizeof( IsPropertyShownProperty_types ) / sizeof( IsPropertyShownProperty_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
    static const char *IsPropertyShownString_types[] = { wxPliOvlstr };
    static wxPliPrototype IsPropertyShownString_proto( IsPropertyShownString_types, sizeof( IsPropertyShownString_types ) / sizeof( IsPropertyShownString_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
    static wxPliPrototype *wxPliOvl_all_prototypes[] = {
#if defined( XSpp_0a5561ee_005829 )
        &IsPropertyShownProperty_proto,
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        &IsPropertyShownString_proto,
#endif // defined( XSpp_0a5561ee_005829 )
        NULL };
    BEGIN_OVERLOAD()
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( IsPropertyShownProperty_proto, IsPropertyShownProperty, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( IsPropertyShownString_proto, IsPropertyShownString, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
    END_OVERLOAD_MESSAGE( Wx::PGPGridInterfaceBase::IsPropertyShown, wxPliOvl_all_prototypes )



#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
void
wxPGPGridInterfaceBase::ReplaceProperty( ... )
  PPCODE:
#if defined( XSpp_0a5561ee_005829 )
    static const char *ReplacePropertyProperty_types[] = { "Wx::PGProperty", "Wx::PGProperty" };
    static wxPliPrototype ReplacePropertyProperty_proto( ReplacePropertyProperty_types, sizeof( ReplacePropertyProperty_types ) / sizeof( ReplacePropertyProperty_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
    static const char *ReplacePropertyString_types[] = { wxPliOvlstr, "Wx::PGProperty" };
    static wxPliPrototype ReplacePropertyString_proto( ReplacePropertyString_types, sizeof( ReplacePropertyString_types ) / sizeof( ReplacePropertyString_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
    static wxPliPrototype *wxPliOvl_all_prototypes[] = {
#if defined( XSpp_0a5561ee_005829 )
        &ReplacePropertyProperty_proto,
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        &ReplacePropertyString_proto,
#endif // defined( XSpp_0a5561ee_005829 )
        NULL };
    BEGIN_OVERLOAD()
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( ReplacePropertyProperty_proto, ReplacePropertyProperty, 2 )
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( ReplacePropertyString_proto, ReplacePropertyString, 2 )
#endif // defined( XSpp_0a5561ee_005829 )
    END_OVERLOAD_MESSAGE( Wx::PGPGridInterfaceBase::ReplaceProperty, wxPliOvl_all_prototypes )



#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
void
wxPGPGridInterfaceBase::IsPropertyEnabled( ... )
  PPCODE:
#if defined( XSpp_0a5561ee_005829 )
    static const char *IsPropertyEnabledProperty_types[] = { "Wx::PGProperty" };
    static wxPliPrototype IsPropertyEnabledProperty_proto( IsPropertyEnabledProperty_types, sizeof( IsPropertyEnabledProperty_types ) / sizeof( IsPropertyEnabledProperty_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
    static const char *IsPropertyEnabledString_types[] = { wxPliOvlstr };
    static wxPliPrototype IsPropertyEnabledString_proto( IsPropertyEnabledString_types, sizeof( IsPropertyEnabledString_types ) / sizeof( IsPropertyEnabledString_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
    static wxPliPrototype *wxPliOvl_all_prototypes[] = {
#if defined( XSpp_0a5561ee_005829 )
        &IsPropertyEnabledProperty_proto,
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        &IsPropertyEnabledString_proto,
#endif // defined( XSpp_0a5561ee_005829 )
        NULL };
    BEGIN_OVERLOAD()
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( IsPropertyEnabledProperty_proto, IsPropertyEnabledProperty, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( IsPropertyEnabledString_proto, IsPropertyEnabledString, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
    END_OVERLOAD_MESSAGE( Wx::PGPGridInterfaceBase::IsPropertyEnabled, wxPliOvl_all_prototypes )



#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
void
wxPGPGridInterfaceBase::SetPropertyEditor( ... )
  PPCODE:
#if defined( XSpp_0a5561ee_005829 )
    static const char *SetPropertyEditorProperty_types[] = { "Wx::PGProperty", "Wx::PGEditor" };
    static wxPliPrototype SetPropertyEditorProperty_proto( SetPropertyEditorProperty_types, sizeof( SetPropertyEditorProperty_types ) / sizeof( SetPropertyEditorProperty_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
    static const char *SetPropertyEditorNameProperty_types[] = { "Wx::PGProperty", wxPliOvlstr };
    static wxPliPrototype SetPropertyEditorNameProperty_proto( SetPropertyEditorNameProperty_types, sizeof( SetPropertyEditorNameProperty_types ) / sizeof( SetPropertyEditorNameProperty_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
    static const char *SetPropertyEditorString_types[] = { wxPliOvlstr, "Wx::PGEditor" };
    static wxPliPrototype SetPropertyEditorString_proto( SetPropertyEditorString_types, sizeof( SetPropertyEditorString_types ) / sizeof( SetPropertyEditorString_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
    static const char *SetPropertyEditorNameString_types[] = { wxPliOvlstr, wxPliOvlstr };
    static wxPliPrototype SetPropertyEditorNameString_proto( SetPropertyEditorNameString_types, sizeof( SetPropertyEditorNameString_types ) / sizeof( SetPropertyEditorNameString_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
    static wxPliPrototype *wxPliOvl_all_prototypes[] = {
#if defined( XSpp_0a5561ee_005829 )
        &SetPropertyEditorProperty_proto,
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        &SetPropertyEditorNameProperty_proto,
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        &SetPropertyEditorString_proto,
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        &SetPropertyEditorNameString_proto,
#endif // defined( XSpp_0a5561ee_005829 )
        NULL };
    BEGIN_OVERLOAD()
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( SetPropertyEditorProperty_proto, SetPropertyEditorProperty, 2 )
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( SetPropertyEditorNameProperty_proto, SetPropertyEditorNameProperty, 2 )
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( SetPropertyEditorString_proto, SetPropertyEditorString, 2 )
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( SetPropertyEditorNameString_proto, SetPropertyEditorNameString, 2 )
#endif // defined( XSpp_0a5561ee_005829 )
    END_OVERLOAD_MESSAGE( Wx::PGPGridInterfaceBase::SetPropertyEditor, wxPliOvl_all_prototypes )



#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
void
wxPGPGridInterfaceBase::RemoveProperty( ... )
  PPCODE:
#if defined( XSpp_0a5561ee_005829 )
    static const char *RemovePropertyProperty_types[] = { "Wx::PGProperty" };
    static wxPliPrototype RemovePropertyProperty_proto( RemovePropertyProperty_types, sizeof( RemovePropertyProperty_types ) / sizeof( RemovePropertyProperty_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
    static const char *RemovePropertyString_types[] = { wxPliOvlstr };
    static wxPliPrototype RemovePropertyString_proto( RemovePropertyString_types, sizeof( RemovePropertyString_types ) / sizeof( RemovePropertyString_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
    static wxPliPrototype *wxPliOvl_all_prototypes[] = {
#if defined( XSpp_0a5561ee_005829 )
        &RemovePropertyProperty_proto,
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        &RemovePropertyString_proto,
#endif // defined( XSpp_0a5561ee_005829 )
        NULL };
    BEGIN_OVERLOAD()
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( RemovePropertyProperty_proto, RemovePropertyProperty, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( RemovePropertyString_proto, RemovePropertyString, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
    END_OVERLOAD_MESSAGE( Wx::PGPGridInterfaceBase::RemoveProperty, wxPliOvl_all_prototypes )



#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
void
wxPGPGridInterfaceBase::EnableProperty( ... )
  PPCODE:
#if defined( XSpp_0a5561ee_005829 )
    static const char *EnablePropertyProperty_types[] = { "Wx::PGProperty", wxPliOvlbool };
    static wxPliPrototype EnablePropertyProperty_proto( EnablePropertyProperty_types, sizeof( EnablePropertyProperty_types ) / sizeof( EnablePropertyProperty_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
    static const char *EnablePropertyString_types[] = { wxPliOvlstr, wxPliOvlbool };
    static wxPliPrototype EnablePropertyString_proto( EnablePropertyString_types, sizeof( EnablePropertyString_types ) / sizeof( EnablePropertyString_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
    static wxPliPrototype *wxPliOvl_all_prototypes[] = {
#if defined( XSpp_0a5561ee_005829 )
        &EnablePropertyProperty_proto,
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        &EnablePropertyString_proto,
#endif // defined( XSpp_0a5561ee_005829 )
        NULL };
    BEGIN_OVERLOAD()
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT_ALLOWMORE( EnablePropertyProperty_proto, EnablePropertyProperty, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT_ALLOWMORE( EnablePropertyString_proto, EnablePropertyString, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
    END_OVERLOAD_MESSAGE( Wx::PGPGridInterfaceBase::EnableProperty, wxPliOvl_all_prototypes )



#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
void
wxPGPGridInterfaceBase::IsPropertyCategory( ... )
  PPCODE:
#if defined( XSpp_0a5561ee_005829 )
    static const char *IsPropertyCategoryProperty_types[] = { "Wx::PGProperty" };
    static wxPliPrototype IsPropertyCategoryProperty_proto( IsPropertyCategoryProperty_types, sizeof( IsPropertyCategoryProperty_types ) / sizeof( IsPropertyCategoryProperty_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
    static const char *IsPropertyCategoryString_types[] = { wxPliOvlstr };
    static wxPliPrototype IsPropertyCategoryString_proto( IsPropertyCategoryString_types, sizeof( IsPropertyCategoryString_types ) / sizeof( IsPropertyCategoryString_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
    static wxPliPrototype *wxPliOvl_all_prototypes[] = {
#if defined( XSpp_0a5561ee_005829 )
        &IsPropertyCategoryProperty_proto,
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        &IsPropertyCategoryString_proto,
#endif // defined( XSpp_0a5561ee_005829 )
        NULL };
    BEGIN_OVERLOAD()
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( IsPropertyCategoryProperty_proto, IsPropertyCategoryProperty, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( IsPropertyCategoryString_proto, IsPropertyCategoryString, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
    END_OVERLOAD_MESSAGE( Wx::PGPGridInterfaceBase::IsPropertyCategory, wxPliOvl_all_prototypes )



#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
void
wxPGPGridInterfaceBase::SetPropertyHelpString( ... )
  PPCODE:
#if defined( XSpp_0a5561ee_005829 )
    static const char *SetPropertyHelpStringProperty_types[] = { "Wx::PGProperty", wxPliOvlstr };
    static wxPliPrototype SetPropertyHelpStringProperty_proto( SetPropertyHelpStringProperty_types, sizeof( SetPropertyHelpStringProperty_types ) / sizeof( SetPropertyHelpStringProperty_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
    static const char *SetPropertyHelpStringString_types[] = { wxPliOvlstr, wxPliOvlstr };
    static wxPliPrototype SetPropertyHelpStringString_proto( SetPropertyHelpStringString_types, sizeof( SetPropertyHelpStringString_types ) / sizeof( SetPropertyHelpStringString_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
    static wxPliPrototype *wxPliOvl_all_prototypes[] = {
#if defined( XSpp_0a5561ee_005829 )
        &SetPropertyHelpStringProperty_proto,
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        &SetPropertyHelpStringString_proto,
#endif // defined( XSpp_0a5561ee_005829 )
        NULL };
    BEGIN_OVERLOAD()
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( SetPropertyHelpStringProperty_proto, SetPropertyHelpStringProperty, 2 )
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( SetPropertyHelpStringString_proto, SetPropertyHelpStringString, 2 )
#endif // defined( XSpp_0a5561ee_005829 )
    END_OVERLOAD_MESSAGE( Wx::PGPGridInterfaceBase::SetPropertyHelpString, wxPliOvl_all_prototypes )



#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
void
wxPGPGridInterfaceBase::EndAddChildren( ... )
  PPCODE:
#if defined( XSpp_0a5561ee_005829 )
    static const char *EndAddChildrenProperty_types[] = { "Wx::PGProperty" };
    static wxPliPrototype EndAddChildrenProperty_proto( EndAddChildrenProperty_types, sizeof( EndAddChildrenProperty_types ) / sizeof( EndAddChildrenProperty_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
    static const char *EndAddChildrenString_types[] = { wxPliOvlstr };
    static wxPliPrototype EndAddChildrenString_proto( EndAddChildrenString_types, sizeof( EndAddChildrenString_types ) / sizeof( EndAddChildrenString_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
    static wxPliPrototype *wxPliOvl_all_prototypes[] = {
#if defined( XSpp_0a5561ee_005829 )
        &EndAddChildrenProperty_proto,
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        &EndAddChildrenString_proto,
#endif // defined( XSpp_0a5561ee_005829 )
        NULL };
    BEGIN_OVERLOAD()
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( EndAddChildrenProperty_proto, EndAddChildrenProperty, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( EndAddChildrenString_proto, EndAddChildrenString, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
    END_OVERLOAD_MESSAGE( Wx::PGPGridInterfaceBase::EndAddChildren, wxPliOvl_all_prototypes )



#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
void
wxPGPGridInterfaceBase::SetPropertyImage( ... )
  PPCODE:
#if defined( XSpp_0a5561ee_005829 )
    static const char *SetPropertyImageProperty_types[] = { "Wx::PGProperty", "Wx::Bitmap" };
    static wxPliPrototype SetPropertyImageProperty_proto( SetPropertyImageProperty_types, sizeof( SetPropertyImageProperty_types ) / sizeof( SetPropertyImageProperty_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
    static const char *SetPropertyImageString_types[] = { wxPliOvlstr, "Wx::Bitmap" };
    static wxPliPrototype SetPropertyImageString_proto( SetPropertyImageString_types, sizeof( SetPropertyImageString_types ) / sizeof( SetPropertyImageString_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
    static wxPliPrototype *wxPliOvl_all_prototypes[] = {
#if defined( XSpp_0a5561ee_005829 )
        &SetPropertyImageProperty_proto,
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        &SetPropertyImageString_proto,
#endif // defined( XSpp_0a5561ee_005829 )
        NULL };
    BEGIN_OVERLOAD()
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( SetPropertyImageProperty_proto, SetPropertyImageProperty, 2 )
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( SetPropertyImageString_proto, SetPropertyImageString, 2 )
#endif // defined( XSpp_0a5561ee_005829 )
    END_OVERLOAD_MESSAGE( Wx::PGPGridInterfaceBase::SetPropertyImage, wxPliOvl_all_prototypes )



#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
void
wxPGPGridInterfaceBase::SetPropertyValues( ... )
  PPCODE:
#if defined( XSpp_0a5561ee_005829 )
    static const char *SetPropertyValuesString_types[] = { "Wx::Variant", wxPliOvlstr };
    static wxPliPrototype SetPropertyValuesString_proto( SetPropertyValuesString_types, sizeof( SetPropertyValuesString_types ) / sizeof( SetPropertyValuesString_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
    static const char *SetPropertyValuesProperty_types[] = { "Wx::Variant", "Wx::PGProperty" };
    static wxPliPrototype SetPropertyValuesProperty_proto( SetPropertyValuesProperty_types, sizeof( SetPropertyValuesProperty_types ) / sizeof( SetPropertyValuesProperty_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
    static wxPliPrototype *wxPliOvl_all_prototypes[] = {
#if defined( XSpp_0a5561ee_005829 )
        &SetPropertyValuesString_proto,
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        &SetPropertyValuesProperty_proto,
#endif // defined( XSpp_0a5561ee_005829 )
        NULL };
    BEGIN_OVERLOAD()
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT_ALLOWMORE( SetPropertyValuesString_proto, SetPropertyValuesString, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT_ALLOWMORE( SetPropertyValuesProperty_proto, SetPropertyValuesProperty, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
    END_OVERLOAD_MESSAGE( Wx::PGPGridInterfaceBase::SetPropertyValues, wxPliOvl_all_prototypes )



#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
void
wxPGPGridInterfaceBase::GetPropertyValueAsLongLong( ... )
  PPCODE:
#if defined( XSpp_0a5561ee_005829 )
    static const char *GetPropertyValueAsLongLongProperty_types[] = { "Wx::PGProperty" };
    static wxPliPrototype GetPropertyValueAsLongLongProperty_proto( GetPropertyValueAsLongLongProperty_types, sizeof( GetPropertyValueAsLongLongProperty_types ) / sizeof( GetPropertyValueAsLongLongProperty_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
    static const char *GetPropertyValueAsLongLongString_types[] = { wxPliOvlstr };
    static wxPliPrototype GetPropertyValueAsLongLongString_proto( GetPropertyValueAsLongLongString_types, sizeof( GetPropertyValueAsLongLongString_types ) / sizeof( GetPropertyValueAsLongLongString_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
    static wxPliPrototype *wxPliOvl_all_prototypes[] = {
#if defined( XSpp_0a5561ee_005829 )
        &GetPropertyValueAsLongLongProperty_proto,
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        &GetPropertyValueAsLongLongString_proto,
#endif // defined( XSpp_0a5561ee_005829 )
        NULL };
    BEGIN_OVERLOAD()
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( GetPropertyValueAsLongLongProperty_proto, GetPropertyValueAsLongLongProperty, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( GetPropertyValueAsLongLongString_proto, GetPropertyValueAsLongLongString, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
    END_OVERLOAD_MESSAGE( Wx::PGPGridInterfaceBase::GetPropertyValueAsLongLong, wxPliOvl_all_prototypes )



#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
void
wxPGPGridInterfaceBase::SetPropertyBackgroundColour( ... )
  PPCODE:
#if defined( XSpp_0a5561ee_005829 )
    static const char *SetPropertyBackgroundColourProperty_types[] = { "Wx::PGProperty", "Wx::Colour", wxPliOvlnum };
    static wxPliPrototype SetPropertyBackgroundColourProperty_proto( SetPropertyBackgroundColourProperty_types, sizeof( SetPropertyBackgroundColourProperty_types ) / sizeof( SetPropertyBackgroundColourProperty_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
    static const char *SetPropertyBackgroundColourString_types[] = { wxPliOvlstr, "Wx::Colour", wxPliOvlnum };
    static wxPliPrototype SetPropertyBackgroundColourString_proto( SetPropertyBackgroundColourString_types, sizeof( SetPropertyBackgroundColourString_types ) / sizeof( SetPropertyBackgroundColourString_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
    static wxPliPrototype *wxPliOvl_all_prototypes[] = {
#if defined( XSpp_0a5561ee_005829 )
        &SetPropertyBackgroundColourProperty_proto,
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        &SetPropertyBackgroundColourString_proto,
#endif // defined( XSpp_0a5561ee_005829 )
        NULL };
    BEGIN_OVERLOAD()
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT_ALLOWMORE( SetPropertyBackgroundColourProperty_proto, SetPropertyBackgroundColourProperty, 2 )
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT_ALLOWMORE( SetPropertyBackgroundColourString_proto, SetPropertyBackgroundColourString, 2 )
#endif // defined( XSpp_0a5561ee_005829 )
    END_OVERLOAD_MESSAGE( Wx::PGPGridInterfaceBase::SetPropertyBackgroundColour, wxPliOvl_all_prototypes )



#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
void
wxPGPGridInterfaceBase::SetPropertyTextColour( ... )
  PPCODE:
#if defined( XSpp_0a5561ee_005829 )
    static const char *SetPropertyTextColourProperty_types[] = { "Wx::PGProperty", "Wx::Colour", wxPliOvlnum };
    static wxPliPrototype SetPropertyTextColourProperty_proto( SetPropertyTextColourProperty_types, sizeof( SetPropertyTextColourProperty_types ) / sizeof( SetPropertyTextColourProperty_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
    static const char *SetPropertyTextColourString_types[] = { wxPliOvlstr, "Wx::Colour", wxPliOvlnum };
    static wxPliPrototype SetPropertyTextColourString_proto( SetPropertyTextColourString_types, sizeof( SetPropertyTextColourString_types ) / sizeof( SetPropertyTextColourString_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
    static wxPliPrototype *wxPliOvl_all_prototypes[] = {
#if defined( XSpp_0a5561ee_005829 )
        &SetPropertyTextColourProperty_proto,
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        &SetPropertyTextColourString_proto,
#endif // defined( XSpp_0a5561ee_005829 )
        NULL };
    BEGIN_OVERLOAD()
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT_ALLOWMORE( SetPropertyTextColourProperty_proto, SetPropertyTextColourProperty, 2 )
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT_ALLOWMORE( SetPropertyTextColourString_proto, SetPropertyTextColourString, 2 )
#endif // defined( XSpp_0a5561ee_005829 )
    END_OVERLOAD_MESSAGE( Wx::PGPGridInterfaceBase::SetPropertyTextColour, wxPliOvl_all_prototypes )



#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
void
wxPGPGridInterfaceBase::BeginAddChildren( ... )
  PPCODE:
#if defined( XSpp_0a5561ee_005829 )
    static const char *BeginAddChildrenProperty_types[] = { "Wx::PGProperty" };
    static wxPliPrototype BeginAddChildrenProperty_proto( BeginAddChildrenProperty_types, sizeof( BeginAddChildrenProperty_types ) / sizeof( BeginAddChildrenProperty_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
    static const char *BeginAddChildrenString_types[] = { wxPliOvlstr };
    static wxPliPrototype BeginAddChildrenString_proto( BeginAddChildrenString_types, sizeof( BeginAddChildrenString_types ) / sizeof( BeginAddChildrenString_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
    static wxPliPrototype *wxPliOvl_all_prototypes[] = {
#if defined( XSpp_0a5561ee_005829 )
        &BeginAddChildrenProperty_proto,
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        &BeginAddChildrenString_proto,
#endif // defined( XSpp_0a5561ee_005829 )
        NULL };
    BEGIN_OVERLOAD()
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( BeginAddChildrenProperty_proto, BeginAddChildrenProperty, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT( BeginAddChildrenString_proto, BeginAddChildrenString, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
    END_OVERLOAD_MESSAGE( Wx::PGPGridInterfaceBase::BeginAddChildren, wxPliOvl_all_prototypes )



#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
void
wxPGPGridInterfaceBase::LimitPropertyEditing( ... )
  PPCODE:
#if defined( XSpp_0a5561ee_005829 )
    static const char *LimitPropertyEditingProperty_types[] = { "Wx::PGProperty", wxPliOvlbool };
    static wxPliPrototype LimitPropertyEditingProperty_proto( LimitPropertyEditingProperty_types, sizeof( LimitPropertyEditingProperty_types ) / sizeof( LimitPropertyEditingProperty_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
    static const char *LimitPropertyEditingString_types[] = { wxPliOvlstr, wxPliOvlbool };
    static wxPliPrototype LimitPropertyEditingString_proto( LimitPropertyEditingString_types, sizeof( LimitPropertyEditingString_types ) / sizeof( LimitPropertyEditingString_types[0] ) );
#endif // defined( XSpp_0a5561ee_005829 )
    static wxPliPrototype *wxPliOvl_all_prototypes[] = {
#if defined( XSpp_0a5561ee_005829 )
        &LimitPropertyEditingProperty_proto,
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        &LimitPropertyEditingString_proto,
#endif // defined( XSpp_0a5561ee_005829 )
        NULL };
    BEGIN_OVERLOAD()
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT_ALLOWMORE( LimitPropertyEditingProperty_proto, LimitPropertyEditingProperty, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
#if defined( XSpp_0a5561ee_005829 )
        MATCH_REDISP_COUNT_ALLOWMORE( LimitPropertyEditingString_proto, LimitPropertyEditingString, 1 )
#endif // defined( XSpp_0a5561ee_005829 )
    END_OVERLOAD_MESSAGE( Wx::PGPGridInterfaceBase::LimitPropertyEditing, wxPliOvl_all_prototypes )



#endif // defined( XSpp_0a5561ee_005829 )
#endif

