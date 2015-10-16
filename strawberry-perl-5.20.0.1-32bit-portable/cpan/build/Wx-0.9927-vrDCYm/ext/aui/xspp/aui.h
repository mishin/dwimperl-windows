#include <exception>
#undef  xsp_constructor_class
#define xsp_constructor_class(c) (c)




#if WXPERL_W_VERSION_GE( 2, 8, 0 )
#define wxAUI_ART_SASH_SIZE                         wxAUI_DOCKART_SASH_SIZE
#define wxAUI_ART_CAPTION_SIZE                      wxAUI_DOCKART_CAPTION_SIZE
#define wxAUI_ART_GRIPPER_SIZE                      wxAUI_DOCKART_GRIPPER_SIZE
#define wxAUI_ART_PANE_BORDER_SIZE                  wxAUI_DOCKART_PANE_BORDER_SIZE
#define wxAUI_ART_PANE_BUTTON_SIZE                  wxAUI_DOCKART_PANE_BUTTON_SIZE
#define wxAUI_ART_BACKGROUND_COLOUR                 wxAUI_DOCKART_BACKGROUND_COLOUR
#define wxAUI_ART_SASH_COLOUR                       wxAUI_DOCKART_SASH_COLOUR
#define wxAUI_ART_ACTIVE_CAPTION_COLOUR             wxAUI_DOCKART_ACTIVE_CAPTION_COLOUR
#define wxAUI_ART_ACTIVE_CAPTION_GRADIENT_COLOUR    wxAUI_DOCKART_ACTIVE_CAPTION_GRADIENT_COLOUR
#define wxAUI_ART_INACTIVE_CAPTION_COLOUR           wxAUI_DOCKART_INACTIVE_CAPTION_COLOUR
#define wxAUI_ART_INACTIVE_CAPTION_GRADIENT_COLOUR  wxAUI_DOCKART_INACTIVE_CAPTION_GRADIENT_COLOUR
#define wxAUI_ART_ACTIVE_CAPTION_TEXT_COLOUR        wxAUI_DOCKART_ACTIVE_CAPTION_TEXT_COLOUR
#define wxAUI_ART_INACTIVE_CAPTION_TEXT_COLOUR      wxAUI_DOCKART_INACTIVE_CAPTION_TEXT_COLOUR
#define wxAUI_ART_BORDER_COLOUR                     wxAUI_DOCKART_BORDER_COLOUR
#define wxAUI_ART_GRIPPER_COLOUR                    wxAUI_DOCKART_GRIPPER_COLOUR
#define wxAUI_ART_CAPTION_FONT                      wxAUI_DOCKART_CAPTION_FONT
#define wxAUI_ART_GRADIENT_TYPE                     wxAUI_DOCKART_GRADIENT_TYPE
#else
#define wxAUI_DOCKART_SASH_SIZE                         wxAUI_ART_SASH_SIZE
#define wxAUI_DOCKART_CAPTION_SIZE                      wxAUI_ART_CAPTION_SIZE
#define wxAUI_DOCKART_GRIPPER_SIZE                      wxAUI_ART_GRIPPER_SIZE
#define wxAUI_DOCKART_PANE_BORDER_SIZE                  wxAUI_ART_PANE_BORDER_SIZE
#define wxAUI_DOCKART_PANE_BUTTON_SIZE                  wxAUI_ART_PANE_BUTTON_SIZE
#define wxAUI_DOCKART_BACKGROUND_COLOUR                 wxAUI_ART_BACKGROUND_COLOUR
#define wxAUI_DOCKART_SASH_COLOUR                       wxAUI_ART_SASH_COLOUR
#define wxAUI_DOCKART_ACTIVE_CAPTION_COLOUR             wxAUI_ART_ACTIVE_CAPTION_COLOUR
#define wxAUI_DOCKART_ACTIVE_CAPTION_GRADIENT_COLOUR    wxAUI_ART_ACTIVE_CAPTION_GRADIENT_COLOUR
#define wxAUI_DOCKART_INACTIVE_CAPTION_COLOUR           wxAUI_ART_INACTIVE_CAPTION_COLOUR
#define wxAUI_DOCKART_INACTIVE_CAPTION_GRADIENT_COLOUR  wxAUI_ART_INACTIVE_CAPTION_GRADIENT_COLOUR
#define wxAUI_DOCKART_ACTIVE_CAPTION_TEXT_COLOUR        wxAUI_ART_ACTIVE_CAPTION_TEXT_COLOUR
#define wxAUI_DOCKART_INACTIVE_CAPTION_TEXT_COLOUR      wxAUI_ART_INACTIVE_CAPTION_TEXT_COLOUR
#define wxAUI_DOCKART_BORDER_COLOUR                     wxAUI_ART_BORDER_COLOUR
#define wxAUI_DOCKART_GRIPPER_COLOUR                    wxAUI_ART_GRIPPER_COLOUR
#define wxAUI_DOCKART_CAPTION_FONT                      wxAUI_ART_CAPTION_FONT
#define wxAUI_DOCKART_GRADIENT_TYPE                     wxAUI_ART_GRADIENT_TYPE                     
#endif

double aui_constant( const char* name, int arg )
{
    // !package: Wx
    // !parser: sub { $_[0] =~ m<^\s*r\w*\(\s*(\w+)\s*\);\s*(?://(.*))?$> }
    // !tag: aui
#define r( n ) \
    if( strEQ( name, #n ) ) \
        return n;

    WX_PL_CONSTANT_INIT();

    switch( fl )
    {
    case 'A':
        r( wxAUI_DOCK_NONE );
        r( wxAUI_DOCK_TOP );
        r( wxAUI_DOCK_RIGHT );
        r( wxAUI_DOCK_BOTTOM );
        r( wxAUI_DOCK_LEFT );
        r( wxAUI_DOCK_CENTER );
        r( wxAUI_DOCK_CENTRE );
        r( wxAUI_MGR_ALLOW_FLOATING );
        r( wxAUI_MGR_ALLOW_ACTIVE_PANE );
        r( wxAUI_MGR_TRANSPARENT_DRAG );
        r( wxAUI_MGR_TRANSPARENT_HINT );
        r( wxAUI_MGR_VENETIAN_BLINDS_HINT );
        r( wxAUI_MGR_RECTANGLE_HINT );
        r( wxAUI_MGR_HINT_FADE );
        r( wxAUI_MGR_NO_VENETIAN_BLINDS_FADE );
        r( wxAUI_MGR_DEFAULT );
        // 2.7.x
        r( wxAUI_ART_SASH_SIZE );
        r( wxAUI_ART_CAPTION_SIZE );
        r( wxAUI_ART_GRIPPER_SIZE );
        r( wxAUI_ART_PANE_BORDER_SIZE );
        r( wxAUI_ART_PANE_BUTTON_SIZE );
        r( wxAUI_ART_BACKGROUND_COLOUR );
        r( wxAUI_ART_SASH_COLOUR );
        r( wxAUI_ART_ACTIVE_CAPTION_COLOUR );
        r( wxAUI_ART_ACTIVE_CAPTION_GRADIENT_COLOUR );
        r( wxAUI_ART_INACTIVE_CAPTION_COLOUR );
        r( wxAUI_ART_INACTIVE_CAPTION_GRADIENT_COLOUR );
        r( wxAUI_ART_ACTIVE_CAPTION_TEXT_COLOUR );
        r( wxAUI_ART_INACTIVE_CAPTION_TEXT_COLOUR );
        r( wxAUI_ART_BORDER_COLOUR );
        r( wxAUI_ART_GRIPPER_COLOUR );
        r( wxAUI_ART_CAPTION_FONT );
        r( wxAUI_ART_GRADIENT_TYPE );
        // 2.8.x
        r( wxAUI_DOCKART_SASH_SIZE );
        r( wxAUI_DOCKART_CAPTION_SIZE );
        r( wxAUI_DOCKART_GRIPPER_SIZE );
        r( wxAUI_DOCKART_PANE_BORDER_SIZE );
        r( wxAUI_DOCKART_PANE_BUTTON_SIZE );
        r( wxAUI_DOCKART_BACKGROUND_COLOUR );
        r( wxAUI_DOCKART_SASH_COLOUR );
        r( wxAUI_DOCKART_ACTIVE_CAPTION_COLOUR );
        r( wxAUI_DOCKART_ACTIVE_CAPTION_GRADIENT_COLOUR );
        r( wxAUI_DOCKART_INACTIVE_CAPTION_COLOUR );
        r( wxAUI_DOCKART_INACTIVE_CAPTION_GRADIENT_COLOUR );
        r( wxAUI_DOCKART_ACTIVE_CAPTION_TEXT_COLOUR );
        r( wxAUI_DOCKART_INACTIVE_CAPTION_TEXT_COLOUR );
        r( wxAUI_DOCKART_BORDER_COLOUR );
        r( wxAUI_DOCKART_GRIPPER_COLOUR );
        r( wxAUI_DOCKART_CAPTION_FONT );
        r( wxAUI_DOCKART_GRADIENT_TYPE );
        r( wxAUI_GRADIENT_NONE );
        r( wxAUI_GRADIENT_VERTICAL );
        r( wxAUI_GRADIENT_HORIZONTAL );
        r( wxAUI_BUTTON_STATE_NORMAL );
        r( wxAUI_BUTTON_STATE_HOVER );
        r( wxAUI_BUTTON_STATE_PRESSED );
        r( wxAUI_BUTTON_STATE_DISABLED );
        r( wxAUI_BUTTON_STATE_HIDDEN );
        r( wxAUI_BUTTON_CLOSE );
        r( wxAUI_BUTTON_MAXIMIZE_RESTORE );
        r( wxAUI_BUTTON_MINIMIZE );
        r( wxAUI_BUTTON_PIN );
        r( wxAUI_BUTTON_OPTIONS );
        r( wxAUI_BUTTON_WINDOWLIST );
        r( wxAUI_BUTTON_LEFT );
        r( wxAUI_BUTTON_RIGHT );
        r( wxAUI_BUTTON_UP );
        r( wxAUI_BUTTON_DOWN );
        r( wxAUI_BUTTON_CUSTOM1 );
        r( wxAUI_BUTTON_CUSTOM2 );
        r( wxAUI_BUTTON_CUSTOM3 );
        r( wxAUI_INSERT_PANE );
        r( wxAUI_INSERT_ROW );
        r( wxAUI_INSERT_DOCK );
        r( wxAUI_NB_TOP );
        r( wxAUI_NB_LEFT );
        r( wxAUI_NB_RIGHT );
        r( wxAUI_NB_BOTTOM );
        r( wxAUI_NB_TAB_SPLIT );
        r( wxAUI_NB_TAB_MOVE );
        r( wxAUI_NB_TAB_EXTERNAL_MOVE );
#if WXPERL_W_VERSION_GE( 2, 8, 0 )
        r( wxAUI_NB_TAB_FIXED_WIDTH );
#endif
        r( wxAUI_NB_SCROLL_BUTTONS );
        r( wxAUI_NB_WINDOWLIST_BUTTON );
        r( wxAUI_NB_CLOSE_BUTTON );
        r( wxAUI_NB_CLOSE_ON_ACTIVE_TAB );
        r( wxAUI_NB_CLOSE_ON_ALL_TABS );
        r( wxAUI_NB_DEFAULT_STYLE );
        break;
    }
#undef r

    WX_PL_CONSTANT_CLEANUP();
}

wxPlConstants aui_module( &aui_constant );



