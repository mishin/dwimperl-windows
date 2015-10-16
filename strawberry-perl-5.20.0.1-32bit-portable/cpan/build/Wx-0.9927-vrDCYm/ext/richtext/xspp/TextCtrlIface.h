#include <exception>
#undef  xsp_constructor_class
#define xsp_constructor_class(c) (c)


MODULE=Wx
#if WXPERL_W_VERSION_GE( 2, 9, 2 )
#define XSpp_84f64d48_046483


MODULE=Wx PACKAGE=Wx::TextCtrlIface

wxString
wxTextCtrlIface::GetValue()
  CODE:
    try {
      RETVAL = THIS->GetValue();
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

void
wxTextCtrlIface::SetValue( wxString value )
  CODE:
    try {
      THIS->SetValue( value );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxTextCtrlIface::ChangeValue( wxString value )
  CODE:
    try {
      THIS->ChangeValue( value );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

wxString
wxTextCtrlIface::GetRange( long from, long to )
  CODE:
    try {
      RETVAL = THIS->GetRange( from, to );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

void
wxTextCtrlIface::WriteText( wxString text )
  CODE:
    try {
      THIS->WriteText( text );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxTextCtrlIface::AppendText( wxString text )
  CODE:
    try {
      THIS->AppendText( text );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

bool
wxTextCtrlIface::IsEmpty()
  CODE:
    try {
      RETVAL = THIS->IsEmpty();
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

void
wxTextCtrlIface::Clear()
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
wxTextCtrlIface::Replace( long from, long to, wxString value )
  CODE:
    try {
      THIS->Replace( from, to, value );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxTextCtrlIface::Remove( long from, long to )
  CODE:
    try {
      THIS->Remove( from, to );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxTextCtrlIface::RemoveSelection()
  CODE:
    try {
      THIS->RemoveSelection();
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxTextCtrlIface::Copy()
  CODE:
    try {
      THIS->Copy();
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxTextCtrlIface::Cut()
  CODE:
    try {
      THIS->Cut();
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxTextCtrlIface::Paste()
  CODE:
    try {
      THIS->Paste();
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

bool
wxTextCtrlIface::CanCopy()
  CODE:
    try {
      RETVAL = THIS->CanCopy();
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

bool
wxTextCtrlIface::CanCut()
  CODE:
    try {
      RETVAL = THIS->CanCut();
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

bool
wxTextCtrlIface::CanPaste()
  CODE:
    try {
      RETVAL = THIS->CanPaste();
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

void
wxTextCtrlIface::Undo()
  CODE:
    try {
      THIS->Undo();
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxTextCtrlIface::Redo()
  CODE:
    try {
      THIS->Redo();
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

bool
wxTextCtrlIface::CanUndo()
  CODE:
    try {
      RETVAL = THIS->CanUndo();
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

bool
wxTextCtrlIface::CanRedo()
  CODE:
    try {
      RETVAL = THIS->CanRedo();
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

void
wxTextCtrlIface::SetInsertionPoint( long pos )
  CODE:
    try {
      THIS->SetInsertionPoint( pos );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxTextCtrlIface::SetInsertionPointEnd()
  CODE:
    try {
      THIS->SetInsertionPointEnd();
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

long
wxTextCtrlIface::GetInsertionPoint()
  CODE:
    try {
      RETVAL = THIS->GetInsertionPoint();
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

long
wxTextCtrlIface::GetLastPosition()
  CODE:
    try {
      RETVAL = THIS->GetLastPosition();
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

void
wxTextCtrlIface::SetSelection( long from, long to )
  CODE:
    try {
      THIS->SetSelection( from, to );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxTextCtrlIface::SelectAll()
  CODE:
    try {
      THIS->SelectAll();
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

bool
wxTextCtrlIface::HasSelection()
  CODE:
    try {
      RETVAL = THIS->HasSelection();
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

wxString
wxTextCtrlIface::GetStringSelection()
  CODE:
    try {
      RETVAL = THIS->GetStringSelection();
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

##  void GetSelection(long *from, long *to);


bool
wxTextCtrlIface::AutoCompleteFileNames()
  CODE:
    try {
      RETVAL = THIS->AutoCompleteFileNames();
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

bool
wxTextCtrlIface::AutoComplete( wxArrayString choices )
  CODE:
    try {
      RETVAL = THIS->AutoComplete( choices );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

##	bool AutoComplete( wxTextCompleter *completer);


bool
wxTextCtrlIface::IsEditable()
  CODE:
    try {
      RETVAL = THIS->IsEditable();
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

void
wxTextCtrlIface::SetEditable( bool editable )
  CODE:
    try {
      THIS->SetEditable( editable );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxTextCtrlIface::SetMaxLength( unsigned long len )
  CODE:
    try {
      THIS->SetMaxLength( len );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

bool
wxTextCtrlIface::SetHint( wxString hint )
  CODE:
    try {
      RETVAL = THIS->SetHint( hint );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

wxString
wxTextCtrlIface::GetHint()
  CODE:
    try {
      RETVAL = THIS->GetHint();
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

bool
wxTextCtrlIface::SetMargins( wxPoint pt )
  CODE:
    try {
      RETVAL = THIS->SetMargins( pt );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

wxPoint
wxTextCtrlIface::GetMargins()
  CODE:
    try {
      RETVAL = THIS->GetMargins();
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL


int
wxTextCtrlIface::GetLineLength( long lineNo )
  CODE:
    try {
      RETVAL = THIS->GetLineLength( lineNo );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

wxString
wxTextCtrlIface::GetLineText( long lineNo )
  CODE:
    try {
      RETVAL = THIS->GetLineText( lineNo );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

int
wxTextCtrlIface::GetNumberOfLines()
  CODE:
    try {
      RETVAL = THIS->GetNumberOfLines();
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

#if defined(WXPERL_IN_RICHTEXTCTRL)
#define XSpp_84f64d48_020214

bool
wxTextCtrlIface::LoadFile( wxString file, int fileType = wxTEXT_TYPE_ANY )
  CODE:
    try {
      RETVAL = THIS->LoadFile( file, fileType );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

bool
wxTextCtrlIface::SaveFile( wxString file = wxEmptyString, int fileType = wxTEXT_TYPE_ANY )
  CODE:
    try {
      RETVAL = THIS->SaveFile( file, fileType );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

#endif

bool
wxTextCtrlIface::IsModified()
  CODE:
    try {
      RETVAL = THIS->IsModified();
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

void
wxTextCtrlIface::MarkDirty()
  CODE:
    try {
      THIS->MarkDirty();
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxTextCtrlIface::DiscardEdits()
  CODE:
    try {
      THIS->DiscardEdits();
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

void
wxTextCtrlIface::SetModified( bool modified )
  CODE:
    try {
      THIS->SetModified( modified );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

#if defined(WXPERL_IN_SEARCHCTRL)
#define XSpp_84f64d48_013905

bool
wxTextCtrlIface::SetStyle( long start, long end, wxTextAttr* style )
  CODE:
    try {
      RETVAL = THIS->SetStyle( start, end, *( style ) );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

##  bool GetStyle(long position, wxTextAttr& style) = 0;


#endif

#if !defined(WXPERL_IN_RICHTEXTCTRL)
#define XSpp_84f64d48_009411

bool
wxTextCtrlIface::SetDefaultStyle( wxTextAttr* style )
  CODE:
    try {
      RETVAL = THIS->SetDefaultStyle( *( style ) );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

#endif

wxTextAttr*
wxTextCtrlIface::GetDefaultStyle()
  CODE:
    try {
      RETVAL = new wxTextAttr( THIS->GetDefaultStyle() );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

long
wxTextCtrlIface::XYToPosition( long x, long y )
  CODE:
    try {
      RETVAL = THIS->XYToPosition( x, y );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }
  OUTPUT: RETVAL

##  bool PositionToXY(long pos, long *x, long *y) const;


void
wxTextCtrlIface::ShowPosition( long pos )
  CODE:
    try {
      THIS->ShowPosition( pos );
    }
    catch (std::exception& e) {
      croak("Caught C++ exception of type or derived from 'std::exception': %s", e.what());
    }
    catch (...) {
      croak("Caught C++ exception of unknown type");
    }

##  wxTextCtrlHitTestResult HitTest(const wxPoint& pt, long *pos) const;


##  wxTextCtrlHitTestResult HitTest(const wxPoint& pt, wxTextCoord *col, wxTextCoord *row) const;




void
wxTextCtrlIface::GetSelection()
  PREINIT:
    long from;
    long to;
  PPCODE:
    THIS->GetSelection( &from, &to );
    EXTEND( SP, 2 );
    PUSHs( sv_2mortal( newSViv( from ) ) );
    PUSHs( sv_2mortal( newSViv( to ) ) );



#if defined(WXPERL_IN_SEARCHCTRL)
#define XSpp_84f64d48_027010


void
wxTextCtrlIface::GetStyle( position )
    long position
  PPCODE:
    wxTextAttr attr;
    bool retval = THIS->GetStyle( position, attr );
    EXTEND( SP, 2 );
    PUSHs( newSViv( retval ) );
    PUSHs( retval ? wxPli_non_object_2_sv( aTHX_ sv_newmortal(),
                                           new wxTextAttr( attr ),
                                           "Wx::TextAttr" ) :
                    &PL_sv_undef );


#endif


void
wxTextCtrlIface::PositionToXY( pos )
    long pos
  PREINIT:
    long x;
    long y;
  PPCODE:
    THIS->PositionToXY( pos, &x, &y );
    EXTEND( SP, 2 );
    PUSHs( sv_2mortal( newSViv( x ) ) );
    PUSHs( sv_2mortal( newSViv( y ) ) );





void
wxTextCtrlIface::HitTest( pt )
    wxPoint pt
  PPCODE:
    long col, row;
    wxTextCtrlHitTestResult res = THIS->HitTest( pt, &col, &row );

    EXTEND( SP, 3 );
    PUSHs( sv_2mortal( newSViv( res ) ) );
    PUSHs( sv_2mortal( newSViv( col ) ) );
    PUSHs( sv_2mortal( newSViv( row ) ) );



#endif

