#include <exception>
#undef  xsp_constructor_class
#define xsp_constructor_class(c) (c)




class wxPlCommand : public wxCommand
{
    WXPLI_DECLARE_DYNAMIC_CLASS( wxPlCommand );
    WXPLI_DECLARE_V_CBACK();
public:
    wxPlCommand( const char* package, bool canUndoIt, const wxString& name );

    bool base_CanUndo() const
        { return wxCommand::CanUndo(); }

    DEC_V_CBACK_BOOL__VOID( Do );
    DEC_V_CBACK_BOOL__VOID( Undo );
    DEC_V_CBACK_BOOL__VOID_const( CanUndo );
};

inline wxPlCommand::wxPlCommand( const char* package,
                                 bool canUndoIt, const wxString& name )
    : wxCommand( canUndoIt, name ),
      m_callback( "Wx::Command" )
{
    m_callback.SetSelf( wxPli_make_object( this, package ), true );
}

DEF_V_CBACK_BOOL__VOID_pure( wxPlCommand, wxCommand, Do );
DEF_V_CBACK_BOOL__VOID_pure( wxPlCommand, wxCommand, Undo );
DEF_V_CBACK_BOOL__VOID_const( wxPlCommand, wxCommand, CanUndo );

WXPLI_IMPLEMENT_DYNAMIC_CLASS( wxPlCommand, wxCommand );



