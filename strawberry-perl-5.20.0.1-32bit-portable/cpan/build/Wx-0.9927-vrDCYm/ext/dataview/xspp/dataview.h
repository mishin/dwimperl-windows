#include <exception>
#undef  xsp_constructor_class
#define xsp_constructor_class(c) (c)




double dataview_constant( const char* name, int arg )
{
    // !package: Wx
    // !parser: sub { $_[0] =~ m<^\s*r\w*\(\s*(\w+)\s*\);\s*(?://(.*))?$> }
    // !tag: dataview
#define r( n ) \
    if( strEQ( name, #n ) ) \
        return n;

    WX_PL_CONSTANT_INIT();

    switch( fl )
    {
    case 'D':
        r( wxDV_SINGLE );
        r( wxDV_MULTIPLE );
        r( wxDV_NO_HEADER );
        r( wxDV_HORIZ_RULES );
        r( wxDV_VERT_RULES );
        r( wxDV_ROW_LINES );

        r( wxDVR_DEFAULT_ALIGNMENT );

        r( wxDATAVIEW_CELL_INERT );
        r( wxDATAVIEW_CELL_ACTIVATABLE );
        r( wxDATAVIEW_CELL_EDITABLE );

        r( wxDATAVIEW_CELL_SELECTED );
        r( wxDATAVIEW_CELL_PRELIT );
        r( wxDATAVIEW_CELL_INSENSITIVE );
        r( wxDATAVIEW_CELL_FOCUSED );

        r( wxDATAVIEW_COL_RESIZABLE );
        r( wxDATAVIEW_COL_SORTABLE );
        r( wxDATAVIEW_COL_REORDERABLE );
        r( wxDATAVIEW_COL_HIDDEN );
        break;
    }
#undef r

    WX_PL_CONSTANT_CLEANUP();
}

wxPlConstants dataview_module( &dataview_constant );



