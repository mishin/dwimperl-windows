#include "cpp/v_cback.h"

class wxPlGridTable : public wxGridTableBase
{
     WXPLI_DECLARE_DYNAMIC_CLASS( wxPlGridTable ); 
    // TODO wxPerl-specific
    WXPLI_DECLARE_V_CBACK();
public:
    SV* GetSelf()
    {
        return m_callback.GetSelf();
    }


    wxPlGridTable( const char* CLASS   )
        : wxGridTableBase(  ),
          m_callback( "Wx::PlGridTable" )
    {
        m_callback.SetSelf( wxPli_make_object( this, CLASS ), true );
    }

#if 1
    int GetNumberRows( )
    // TODO wxPerl-specific
    {
        dTHX;
        if( wxPliFCback( aTHX_ &m_callback, "GetNumberRows" ) )
        {
            wxAutoSV ret( aTHX_ wxPliCCback( aTHX_ &m_callback, G_SCALAR,
                                             NULL  ) );
            return SvIV( ret );
        }
        else
            return 0;
    }

#endif
#if 1
    int GetNumberCols( )
    // TODO wxPerl-specific
    {
        dTHX;
        if( wxPliFCback( aTHX_ &m_callback, "GetNumberCols" ) )
        {
            wxAutoSV ret( aTHX_ wxPliCCback( aTHX_ &m_callback, G_SCALAR,
                                             NULL  ) );
            return SvIV( ret );
        }
        else
            return 0;
    }

#endif
#if defined( XSpp_c7ffe73c_076083 )
    bool IsEmptyCell( int row, int col)
    // TODO wxPerl-specific
    {
        dTHX;
        if( wxPliFCback( aTHX_ &m_callback, "IsEmptyCell" ) )
        {
            wxAutoSV ret( aTHX_ wxPliCCback( aTHX_ &m_callback, G_SCALAR,
                                             "ii",  row, col ) );
            return SvTRUE( ret );
        }
        else
            return wxGridTableBase::IsEmptyCell(row, col);
    }

#endif
#if defined( XSpp_c7ffe73c_076083 )
    bool base_IsEmptyCell( int row, int col)
    {
        return wxGridTableBase::IsEmptyCell(row, col);
    }
#endif
#if defined( XSpp_c7ffe73c_066550 )
    bool IsEmptyCell( int row, int col)
    // TODO wxPerl-specific
    {
        dTHX;
        if( wxPliFCback( aTHX_ &m_callback, "IsEmptyCell" ) )
        {
            wxAutoSV ret( aTHX_ wxPliCCback( aTHX_ &m_callback, G_SCALAR,
                                             "ii",  row, col ) );
            return SvTRUE( ret );
        }
        else
            return false;
    }

#endif
#if 1
    wxString GetValue( int row, int col)
    // TODO wxPerl-specific
    {
        dTHX;
        if( wxPliFCback( aTHX_ &m_callback, "GetValue" ) )
        {
            wxAutoSV ret( aTHX_ wxPliCCback( aTHX_ &m_callback, G_SCALAR,
                                             "ii",  row, col ) );
            return wxPli_sv_2_wxString( aTHX_ ret );
        }
        else
            return wxEmptyString;
    }

#endif
#if 1
    void SetValue( int row, int col, const wxString& value)
    // TODO wxPerl-specific
    {
        dTHX;
        if( wxPliFCback( aTHX_ &m_callback, "SetValue" ) )
        {
            wxPliCCback( aTHX_ &m_callback, G_SCALAR|G_DISCARD,
                         "iiP",  row, col, &value );
        }
        else
            return;
    }

#endif
#if 1
    wxString GetTypeName( int row, int col)
    // TODO wxPerl-specific
    {
        dTHX;
        if( wxPliFCback( aTHX_ &m_callback, "GetTypeName" ) )
        {
            wxAutoSV ret( aTHX_ wxPliCCback( aTHX_ &m_callback, G_SCALAR,
                                             "ii",  row, col ) );
            return wxPli_sv_2_wxString( aTHX_ ret );
        }
        else
            return wxGridTableBase::GetTypeName(row, col);
    }

#endif
#if 1
    wxString base_GetTypeName( int row, int col)
    {
        return wxGridTableBase::GetTypeName(row, col);
    }
#endif
#if 1
    bool CanGetValueAs( int row, int col, const wxString& typeName)
    // TODO wxPerl-specific
    {
        dTHX;
        if( wxPliFCback( aTHX_ &m_callback, "CanGetValueAs" ) )
        {
            wxAutoSV ret( aTHX_ wxPliCCback( aTHX_ &m_callback, G_SCALAR,
                                             "iiP",  row, col, &typeName ) );
            return SvTRUE( ret );
        }
        else
            return wxGridTableBase::CanGetValueAs(row, col, typeName);
    }

#endif
#if 1
    bool base_CanGetValueAs( int row, int col, const wxString& typeName)
    {
        return wxGridTableBase::CanGetValueAs(row, col, typeName);
    }
#endif
#if 1
    bool CanSetValueAs( int row, int col, const wxString& typeName)
    // TODO wxPerl-specific
    {
        dTHX;
        if( wxPliFCback( aTHX_ &m_callback, "CanSetValueAs" ) )
        {
            wxAutoSV ret( aTHX_ wxPliCCback( aTHX_ &m_callback, G_SCALAR,
                                             "iiP",  row, col, &typeName ) );
            return SvTRUE( ret );
        }
        else
            return wxGridTableBase::CanSetValueAs(row, col, typeName);
    }

#endif
#if 1
    bool base_CanSetValueAs( int row, int col, const wxString& typeName)
    {
        return wxGridTableBase::CanSetValueAs(row, col, typeName);
    }
#endif
#if 1
    long GetValueAsLong( int row, int col)
    // TODO wxPerl-specific
    {
        dTHX;
        if( wxPliFCback( aTHX_ &m_callback, "GetValueAsLong" ) )
        {
            wxAutoSV ret( aTHX_ wxPliCCback( aTHX_ &m_callback, G_SCALAR,
                                             "ii",  row, col ) );
            return SvIV( ret );
        }
        else
            return wxGridTableBase::GetValueAsLong(row, col);
    }

#endif
#if 1
    long base_GetValueAsLong( int row, int col)
    {
        return wxGridTableBase::GetValueAsLong(row, col);
    }
#endif
#if 1
    double GetValueAsDouble( int row, int col)
    // TODO wxPerl-specific
    {
        dTHX;
        if( wxPliFCback( aTHX_ &m_callback, "GetValueAsDouble" ) )
        {
            wxAutoSV ret( aTHX_ wxPliCCback( aTHX_ &m_callback, G_SCALAR,
                                             "ii",  row, col ) );
            return SvNV( ret );
        }
        else
            return wxGridTableBase::GetValueAsDouble(row, col);
    }

#endif
#if 1
    double base_GetValueAsDouble( int row, int col)
    {
        return wxGridTableBase::GetValueAsDouble(row, col);
    }
#endif
#if 1
    bool GetValueAsBool( int row, int col)
    // TODO wxPerl-specific
    {
        dTHX;
        if( wxPliFCback( aTHX_ &m_callback, "GetValueAsBool" ) )
        {
            wxAutoSV ret( aTHX_ wxPliCCback( aTHX_ &m_callback, G_SCALAR,
                                             "ii",  row, col ) );
            return SvTRUE( ret );
        }
        else
            return wxGridTableBase::GetValueAsBool(row, col);
    }

#endif
#if 1
    bool base_GetValueAsBool( int row, int col)
    {
        return wxGridTableBase::GetValueAsBool(row, col);
    }
#endif
#if 1
    void SetValueAsLong( int row, int col, long value)
    // TODO wxPerl-specific
    {
        dTHX;
        if( wxPliFCback( aTHX_ &m_callback, "SetValueAsLong" ) )
        {
            wxPliCCback( aTHX_ &m_callback, G_SCALAR|G_DISCARD,
                         "iil",  row, col, value );
        }
        else
            wxGridTableBase::SetValueAsLong(row, col, value);
    }

#endif
#if 1
    void base_SetValueAsLong( int row, int col, long value)
    {
        wxGridTableBase::SetValueAsLong(row, col, value);
    }
#endif
#if 1
    void SetValueAsDouble( int row, int col, double value)
    // TODO wxPerl-specific
    {
        dTHX;
        if( wxPliFCback( aTHX_ &m_callback, "SetValueAsDouble" ) )
        {
            wxPliCCback( aTHX_ &m_callback, G_SCALAR|G_DISCARD,
                         "iid",  row, col, value );
        }
        else
            wxGridTableBase::SetValueAsDouble(row, col, value);
    }

#endif
#if 1
    void base_SetValueAsDouble( int row, int col, double value)
    {
        wxGridTableBase::SetValueAsDouble(row, col, value);
    }
#endif
#if 1
    void SetValueAsBool( int row, int col, bool value)
    // TODO wxPerl-specific
    {
        dTHX;
        if( wxPliFCback( aTHX_ &m_callback, "SetValueAsBool" ) )
        {
            wxPliCCback( aTHX_ &m_callback, G_SCALAR|G_DISCARD,
                         "iib",  row, col, value );
        }
        else
            wxGridTableBase::SetValueAsBool(row, col, value);
    }

#endif
#if 1
    void base_SetValueAsBool( int row, int col, bool value)
    {
        wxGridTableBase::SetValueAsBool(row, col, value);
    }
#endif
#if 1
    void SetView( wxGrid* grid)
    // TODO wxPerl-specific
    {
        dTHX;
        if( wxPliFCback( aTHX_ &m_callback, "SetView" ) )
        {
            wxPliCCback( aTHX_ &m_callback, G_SCALAR|G_DISCARD,
                         "O",  &grid );
        }
        else
            wxGridTableBase::SetView(grid);
    }

#endif
#if 1
    void base_SetView( wxGrid* grid)
    {
        wxGridTableBase::SetView(grid);
    }
#endif
#if 1
    wxGrid* GetView( ) const
    // TODO wxPerl-specific
    {
        dTHX;
        if( wxPliFCback( aTHX_ &m_callback, "GetView" ) )
        {
            wxAutoSV ret( aTHX_ wxPliCCback( aTHX_ &m_callback, G_SCALAR,
                                             NULL  ) );
            return (wxGrid*)wxPli_sv_2_object( aTHX_ ret, "Wx::Grid" );
        }
        else
            return wxGridTableBase::GetView();
    }

#endif
#if 1
    wxGrid* base_GetView( ) const
    {
        return wxGridTableBase::GetView();
    }
#endif
#if 1
    void Clear( )
    // TODO wxPerl-specific
    {
        dTHX;
        if( wxPliFCback( aTHX_ &m_callback, "Clear" ) )
        {
            wxPliCCback( aTHX_ &m_callback, G_SCALAR|G_DISCARD,
                         NULL  );
        }
        else
            wxGridTableBase::Clear();
    }

#endif
#if 1
    void base_Clear( )
    {
        wxGridTableBase::Clear();
    }
#endif
#if 1
    bool InsertRows( size_t pos, size_t numRows = 1)
    // TODO wxPerl-specific
    {
        dTHX;
        if( wxPliFCback( aTHX_ &m_callback, "InsertRows" ) )
        {
            wxAutoSV ret( aTHX_ wxPliCCback( aTHX_ &m_callback, G_SCALAR,
                                             "II",  pos, numRows ) );
            return SvTRUE( ret );
        }
        else
            return wxGridTableBase::InsertRows(pos, numRows);
    }

#endif
#if 1
    bool base_InsertRows( size_t pos, size_t numRows = 1)
    {
        return wxGridTableBase::InsertRows(pos, numRows);
    }
#endif
#if 1
    bool AppendRows( size_t numRows = 1)
    // TODO wxPerl-specific
    {
        dTHX;
        if( wxPliFCback( aTHX_ &m_callback, "AppendRows" ) )
        {
            wxAutoSV ret( aTHX_ wxPliCCback( aTHX_ &m_callback, G_SCALAR,
                                             "I",  numRows ) );
            return SvTRUE( ret );
        }
        else
            return wxGridTableBase::AppendRows(numRows);
    }

#endif
#if 1
    bool base_AppendRows( size_t numRows = 1)
    {
        return wxGridTableBase::AppendRows(numRows);
    }
#endif
#if 1
    bool DeleteRows( size_t pos, size_t numRows = 1)
    // TODO wxPerl-specific
    {
        dTHX;
        if( wxPliFCback( aTHX_ &m_callback, "DeleteRows" ) )
        {
            wxAutoSV ret( aTHX_ wxPliCCback( aTHX_ &m_callback, G_SCALAR,
                                             "II",  pos, numRows ) );
            return SvTRUE( ret );
        }
        else
            return wxGridTableBase::DeleteRows(pos, numRows);
    }

#endif
#if 1
    bool base_DeleteRows( size_t pos, size_t numRows = 1)
    {
        return wxGridTableBase::DeleteRows(pos, numRows);
    }
#endif
#if 1
    bool InsertCols( size_t pos, size_t numCols = 1)
    // TODO wxPerl-specific
    {
        dTHX;
        if( wxPliFCback( aTHX_ &m_callback, "InsertCols" ) )
        {
            wxAutoSV ret( aTHX_ wxPliCCback( aTHX_ &m_callback, G_SCALAR,
                                             "II",  pos, numCols ) );
            return SvTRUE( ret );
        }
        else
            return wxGridTableBase::InsertCols(pos, numCols);
    }

#endif
#if 1
    bool base_InsertCols( size_t pos, size_t numCols = 1)
    {
        return wxGridTableBase::InsertCols(pos, numCols);
    }
#endif
#if 1
    bool AppendCols( size_t numCols = 1)
    // TODO wxPerl-specific
    {
        dTHX;
        if( wxPliFCback( aTHX_ &m_callback, "AppendCols" ) )
        {
            wxAutoSV ret( aTHX_ wxPliCCback( aTHX_ &m_callback, G_SCALAR,
                                             "I",  numCols ) );
            return SvTRUE( ret );
        }
        else
            return wxGridTableBase::AppendCols(numCols);
    }

#endif
#if 1
    bool base_AppendCols( size_t numCols = 1)
    {
        return wxGridTableBase::AppendCols(numCols);
    }
#endif
#if 1
    bool DeleteCols( size_t pos, size_t numCols = 1)
    // TODO wxPerl-specific
    {
        dTHX;
        if( wxPliFCback( aTHX_ &m_callback, "DeleteCols" ) )
        {
            wxAutoSV ret( aTHX_ wxPliCCback( aTHX_ &m_callback, G_SCALAR,
                                             "II",  pos, numCols ) );
            return SvTRUE( ret );
        }
        else
            return wxGridTableBase::DeleteCols(pos, numCols);
    }

#endif
#if 1
    bool base_DeleteCols( size_t pos, size_t numCols = 1)
    {
        return wxGridTableBase::DeleteCols(pos, numCols);
    }
#endif
#if 1
    wxString GetRowLabelValue( int row)
    // TODO wxPerl-specific
    {
        dTHX;
        if( wxPliFCback( aTHX_ &m_callback, "GetRowLabelValue" ) )
        {
            wxAutoSV ret( aTHX_ wxPliCCback( aTHX_ &m_callback, G_SCALAR,
                                             "i",  row ) );
            return wxPli_sv_2_wxString( aTHX_ ret );
        }
        else
            return wxGridTableBase::GetRowLabelValue(row);
    }

#endif
#if 1
    wxString base_GetRowLabelValue( int row)
    {
        return wxGridTableBase::GetRowLabelValue(row);
    }
#endif
#if 1
    wxString GetColLabelValue( int col)
    // TODO wxPerl-specific
    {
        dTHX;
        if( wxPliFCback( aTHX_ &m_callback, "GetColLabelValue" ) )
        {
            wxAutoSV ret( aTHX_ wxPliCCback( aTHX_ &m_callback, G_SCALAR,
                                             "i",  col ) );
            return wxPli_sv_2_wxString( aTHX_ ret );
        }
        else
            return wxGridTableBase::GetColLabelValue(col);
    }

#endif
#if 1
    wxString base_GetColLabelValue( int col)
    {
        return wxGridTableBase::GetColLabelValue(col);
    }
#endif
#if 1
    void SetRowLabelValue( int row, const wxString& label)
    // TODO wxPerl-specific
    {
        dTHX;
        if( wxPliFCback( aTHX_ &m_callback, "SetRowLabelValue" ) )
        {
            wxPliCCback( aTHX_ &m_callback, G_SCALAR|G_DISCARD,
                         "iP",  row, &label );
        }
        else
            wxGridTableBase::SetRowLabelValue(row, label);
    }

#endif
#if 1
    void base_SetRowLabelValue( int row, const wxString& label)
    {
        wxGridTableBase::SetRowLabelValue(row, label);
    }
#endif
#if 1
    void SetColLabelValue( int col, const wxString& label)
    // TODO wxPerl-specific
    {
        dTHX;
        if( wxPliFCback( aTHX_ &m_callback, "SetColLabelValue" ) )
        {
            wxPliCCback( aTHX_ &m_callback, G_SCALAR|G_DISCARD,
                         "iP",  col, &label );
        }
        else
            wxGridTableBase::SetColLabelValue(col, label);
    }

#endif
#if 1
    void base_SetColLabelValue( int col, const wxString& label)
    {
        wxGridTableBase::SetColLabelValue(col, label);
    }
#endif
#if 1
    wxGridCellAttr* GetAttr( int row, int col, wxGridCellAttr::wxAttrKind kind)
    // TODO wxPerl-specific
    {
        dTHX;
        if( wxPliFCback( aTHX_ &m_callback, "GetAttr" ) )
        {
            wxAutoSV ret( aTHX_ wxPliCCback( aTHX_ &m_callback, G_SCALAR,
                                             "iii",  row, col, kind ) );
            return convert_GridCellAttrOut( aTHX_ ret );
        }
        else
            return wxGridTableBase::GetAttr(row, col, kind);
    }

#endif
#if 1
    wxGridCellAttr* base_GetAttr( int row, int col, wxGridCellAttr::wxAttrKind kind)
    {
        return wxGridTableBase::GetAttr(row, col, kind);
    }
#endif
#if 1
    void SetAttr( wxGridCellAttr* attr, int row, int col)
    // TODO wxPerl-specific
    {
        dTHX;
        if( wxPliFCback( aTHX_ &m_callback, "SetAttr" ) )
        {
            wxPliCCback( aTHX_ &m_callback, G_SCALAR|G_DISCARD,
                         "Oii",  &attr, row, col );
        }
        else
            wxGridTableBase::SetAttr(attr, row, col);
    }

#endif
#if 1
    void base_SetAttr( wxGridCellAttr* attr, int row, int col)
    {
        wxGridTableBase::SetAttr(attr, row, col);
    }
#endif
#if 1
    void SetRowAttr( wxGridCellAttr* attr, int row)
    // TODO wxPerl-specific
    {
        dTHX;
        if( wxPliFCback( aTHX_ &m_callback, "SetRowAttr" ) )
        {
            wxPliCCback( aTHX_ &m_callback, G_SCALAR|G_DISCARD,
                         "Oi",  &attr, row );
        }
        else
            wxGridTableBase::SetRowAttr(attr, row);
    }

#endif
#if 1
    void base_SetRowAttr( wxGridCellAttr* attr, int row)
    {
        wxGridTableBase::SetRowAttr(attr, row);
    }
#endif
#if 1
    void SetColAttr( wxGridCellAttr* attr, int col)
    // TODO wxPerl-specific
    {
        dTHX;
        if( wxPliFCback( aTHX_ &m_callback, "SetColAttr" ) )
        {
            wxPliCCback( aTHX_ &m_callback, G_SCALAR|G_DISCARD,
                         "Oi",  &attr, col );
        }
        else
            wxGridTableBase::SetColAttr(attr, col);
    }

#endif
#if 1
    void base_SetColAttr( wxGridCellAttr* attr, int col)
    {
        wxGridTableBase::SetColAttr(attr, col);
    }
#endif
#if 1
    bool CanHaveAttributes( )
    // TODO wxPerl-specific
    {
        dTHX;
        if( wxPliFCback( aTHX_ &m_callback, "CanHaveAttributes" ) )
        {
            wxAutoSV ret( aTHX_ wxPliCCback( aTHX_ &m_callback, G_SCALAR,
                                             NULL  ) );
            return SvTRUE( ret );
        }
        else
            return wxGridTableBase::CanHaveAttributes();
    }

#endif
#if 1
    bool base_CanHaveAttributes( )
    {
        return wxGridTableBase::CanHaveAttributes();
    }
#endif
};
 WXPLI_IMPLEMENT_DYNAMIC_CLASS( wxPlGridTable, wxGridTableBase ); 

