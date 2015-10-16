#include <exception>
#undef  xsp_constructor_class
#define xsp_constructor_class(c) (c)




#define wxDP_STYLE wxDP_DEFAULT|wxDP_SHOWCENTURY

double datepicker_constant( const char* name, int arg )
{
    // !package: Wx
    // !parser: sub { $_[0] =~ m<^\s*r\w*\(\s*(\w+)\s*\);\s*(?://(.*))?$> }
    // !tag: datepicker
#define r( n ) \
    if( strEQ( name, #n ) ) \
        return n;

    WX_PL_CONSTANT_INIT();

    switch( fl )
    {
    case 'D':
        r( wxDP_DEFAULT );
        r( wxDP_SPIN );
        r( wxDP_DROPDOWN );
        r( wxDP_SHOWCENTURY );
        r( wxDP_ALLOWNONE );
        break;
    }
#undef r

    WX_PL_CONSTANT_CLEANUP();
}

wxPlConstants datepicker_module( &datepicker_constant );



