#include <exception>
#undef  xsp_constructor_class
#define xsp_constructor_class(c) (c)




double calendar_constant( const char* name, int arg )
{
    // !package: Wx
    // !parser: sub { $_[0] =~ m<^\s*r\w*\(\s*(\w+)\s*\);\s*(?://(.*))?$> }
    // !tag: calendar
#define r( n ) \
    if( strEQ( name, #n ) ) \
        return n;

    WX_PL_CONSTANT_INIT();

    switch( fl )
    {
    case 'C':
        r( wxCAL_SUNDAY_FIRST );
        r( wxCAL_MONDAY_FIRST );
        r( wxCAL_SHOW_HOLIDAYS );
        r( wxCAL_NO_YEAR_CHANGE );
        r( wxCAL_NO_MONTH_CHANGE );
        r( wxCAL_SHOW_SURROUNDING_WEEKS );
#if WXPERL_W_VERSION_GE( 2, 9, 0 )
        r( wxCAL_SHOW_WEEK_NUMBERS );
#endif
        r( wxCAL_SEQUENTIAL_MONTH_SELECTION );

        r( wxCAL_HITTEST_NOWHERE );
        r( wxCAL_HITTEST_HEADER );
        r( wxCAL_HITTEST_DAY );
        r( wxCAL_HITTEST_DECMONTH );
        r( wxCAL_HITTEST_INCMONTH );
        r( wxCAL_HITTEST_SURROUNDING_WEEK );

        r( wxCAL_BORDER_NONE );
        r( wxCAL_BORDER_SQUARE );
        r( wxCAL_BORDER_ROUND );
        break;
    case 'E':
        r( wxEVT_CALENDAR_SEL_CHANGED );
        r( wxEVT_CALENDAR_DAY_CHANGED );
        r( wxEVT_CALENDAR_MONTH_CHANGED );
        r( wxEVT_CALENDAR_YEAR_CHANGED );
        r( wxEVT_CALENDAR_DOUBLECLICKED );
        r( wxEVT_CALENDAR_WEEKDAY_CLICKED );

#if WXPERL_W_VERSION_GE( 2, 5, 4 )
        r( wxEVT_DATE_CHANGED );
#endif
#if WXPERL_W_VERSION_GE( 2, 9, 3 )
        r( wxEVT_TIME_CHANGED );
#endif
        break;
    }
#undef r

    WX_PL_CONSTANT_CLEANUP();
}

wxPlConstants calendar_module( &calendar_constant );



