#include <exception>
#undef  xsp_constructor_class
#define xsp_constructor_class(c) (c)




#define wxTEXT_ATTR_DEFAULT_NUMBERED_BULLET wxTEXT_ATTR_BULLET_STYLE_ARABIC|wxTEXT_ATTR_BULLET_STYLE_PERIOD

#define wxRICHTEXT_STYLE_ALL wxRichTextStyleListBox::wxRICHTEXT_STYLE_ALL
#define wxRICHTEXT_STYLE_CHARACTER wxRichTextStyleListBox::wxRICHTEXT_STYLE_CHARACTER
#define wxRICHTEXT_STYLE_LIST wxRichTextStyleListBox::wxRICHTEXT_STYLE_LIST
#define wxRICHTEXT_STYLE_PARAGRAPH wxRichTextStyleListBox::wxRICHTEXT_STYLE_PARAGRAPH

double richtextctrl_constant( const char* name, int arg )
{
    // !package: Wx
    // !parser: sub { $_[0] =~ m<^\s*r\w*\(\s*(\w+)\s*\);\s*(?://(.*))?$> }
    // !tag: richtextctrl
#define r( n ) \
    if( strEQ( name, #n ) ) \
        return n;

    WX_PL_CONSTANT_INIT();

    switch( fl )
    {
    case 'R':
        r( wxRE_READONLY );
        r( wxRE_MULTILINE );
#if WXPERL_W_VERSION_GE( 2, 7, 1 )
        r( wxRICHTEXT_SETSTYLE_NONE );
        r( wxRICHTEXT_SETSTYLE_WITH_UNDO );
        r( wxRICHTEXT_SETSTYLE_OPTIMIZE );
        r( wxRICHTEXT_SETSTYLE_PARAGRAPHS_ONLY );
        r( wxRICHTEXT_SETSTYLE_CHARACTERS_ONLY );
#if WXPERL_W_VERSION_GE( 2, 7, 2 )
        r( wxRICHTEXT_SETSTYLE_RENUMBER );
        r( wxRICHTEXT_SETSTYLE_SPECIFY_LEVEL );
#endif
#if WXPERL_W_VERSION_GE( 2, 8, 7 )
        r( wxRICHTEXT_SETSTYLE_REMOVE );
#endif
        r( wxRICHTEXT_INSERT_NONE );
        r( wxRICHTEXT_INSERT_WITH_PREVIOUS_PARAGRAPH_STYLE );
#endif
#if WXPERL_W_VERSION_GE( 2, 8, 0 )
        r( wxRICHTEXT_SETSTYLE_RESET );
#endif
        r( wxRICHTEXT_FIXED_WIDTH );
        r( wxRICHTEXT_FIXED_HEIGHT );
        r( wxRICHTEXT_VARIABLE_WIDTH );
        r( wxRICHTEXT_VARIABLE_HEIGHT );
        r( wxRICHTEXT_LAYOUT_SPECIFIED_RECT );
#if WXPERL_W_VERSION_GE( 2, 7, 2 )
        r( wxRICHTEXT_DRAW_IGNORE_CACHE );
#endif
        r( wxRICHTEXT_HITTEST_NONE );
        r( wxRICHTEXT_HITTEST_BEFORE );
        r( wxRICHTEXT_HITTEST_AFTER );
        r( wxRICHTEXT_HITTEST_ON );
#if WXPERL_W_VERSION_GE( 2, 8, 7 )
        r( wxRICHTEXT_HITTEST_OUTSIDE );
#endif
        r( wxRICHTEXT_HANDLER_INCLUDE_STYLESHEET );
        r( wxRICHTEXT_HANDLER_SAVE_IMAGES_TO_MEMORY );
        r( wxRICHTEXT_HANDLER_SAVE_IMAGES_TO_FILES );
        r( wxRICHTEXT_HANDLER_SAVE_IMAGES_TO_BASE64 );
#if WXPERL_W_VERSION_GE( 2, 8, 0 )
        r( wxRICHTEXT_HANDLER_NO_HEADER_FOOTER );
#endif
#if WXPERL_W_VERSION_GE( 2, 8, 8 )
        r( wxRICHTEXT_HANDLER_CONVERT_FACENAMES );
#endif

        r( wxRICHTEXT_FORMATTED );
        r( wxRICHTEXT_UNFORMATTED );
        r( wxRICHTEXT_TYPE_ANY );
        r( wxRICHTEXT_TYPE_TEXT );
        r( wxRICHTEXT_TYPE_XML );
        r( wxRICHTEXT_TYPE_HTML );
        r( wxRICHTEXT_TYPE_RTF );
        r( wxRICHTEXT_TYPE_PDF );
        r( wxRICHTEXT_FORMAT_STYLE_EDITOR );
        r( wxRICHTEXT_FORMAT_FONT );
        r( wxRICHTEXT_FORMAT_TABS );
        r( wxRICHTEXT_FORMAT_BULLETS );
        r( wxRICHTEXT_FORMAT_INDENTS_SPACING );
        r( wxRICHTEXT_FORMAT_CHARACTER );
        r( wxRICHTEXT_FORMAT_HELP_BUTTON );
        r( wxRICHTEXT_FORMAT_LIST_STYLE );
        r( wxRICHTEXT_FORMAT_PARAGRAPH );
        r( wxRICHTEXT_FORMAT_STYLE );

        r( wxRICHTEXT_ORGANISER_DELETE_STYLES );
        r( wxRICHTEXT_ORGANISER_CREATE_STYLES );
        r( wxRICHTEXT_ORGANISER_APPLY_STYLES );
        r( wxRICHTEXT_ORGANISER_EDIT_STYLES );
        r( wxRICHTEXT_ORGANISER_RENAME_STYLES );
        r( wxRICHTEXT_ORGANISER_OK_CANCEL );
        r( wxRICHTEXT_ORGANISER_RENUMBER );
        r( wxRICHTEXT_ORGANISER_SHOW_CHARACTER );
        r( wxRICHTEXT_ORGANISER_SHOW_PARAGRAPH );
        r( wxRICHTEXT_ORGANISER_SHOW_LIST );
        r( wxRICHTEXT_ORGANISER_SHOW_ALL );
        r( wxRICHTEXT_ORGANISER_ORGANISE );
        r( wxRICHTEXT_ORGANISER_BROWSE );
        r( wxRICHTEXT_ORGANISER_BROWSE_NUMBERING );

        r( wxRICHTEXT_PAGE_ALL );
        r( wxRICHTEXT_PAGE_CENTRE );
        r( wxRICHTEXT_PAGE_EVEN );
        r( wxRICHTEXT_PAGE_LEFT );
        r( wxRICHTEXT_PAGE_ODD );
        r( wxRICHTEXT_PAGE_RIGHT );

        r( wxRICHTEXT_STYLE_ALL );
        r( wxRICHTEXT_STYLE_CHARACTER );
        r( wxRICHTEXT_STYLE_LIST );
        r( wxRICHTEXT_STYLE_PARAGRAPH );
        break;
    case 'T':
        r( wxTEXT_ATTR_PARA_SPACING_AFTER );
        r( wxTEXT_ATTR_PARA_SPACING_BEFORE );
        r( wxTEXT_ATTR_LINE_SPACING );
        r( wxTEXT_ATTR_CHARACTER_STYLE_NAME );
        r( wxTEXT_ATTR_PARAGRAPH_STYLE_NAME );
#if WXPERL_W_VERSION_GE( 2, 7, 2 )
        r( wxTEXT_ATTR_LIST_STYLE_NAME );
#endif
        r( wxTEXT_ATTR_BULLET_STYLE );
        r( wxTEXT_ATTR_BULLET_NUMBER );
#if WXPERL_W_VERSION_GE( 2, 7, 2 )
        r( wxTEXT_ATTR_BULLET_TEXT );
        r( wxTEXT_ATTR_BULLET_NAME );
        r( wxTEXT_ATTR_URL );
        r( wxTEXT_ATTR_PAGE_BREAK );
#endif
        r( wxTEXT_ATTR_BULLET_STYLE_NONE );
        r( wxTEXT_ATTR_BULLET_STYLE_ARABIC );
        r( wxTEXT_ATTR_BULLET_STYLE_LETTERS_UPPER );
        r( wxTEXT_ATTR_BULLET_STYLE_LETTERS_LOWER );
        r( wxTEXT_ATTR_BULLET_STYLE_ROMAN_UPPER );
        r( wxTEXT_ATTR_BULLET_STYLE_ROMAN_LOWER );
        r( wxTEXT_ATTR_BULLET_STYLE_SYMBOL );
        r( wxTEXT_ATTR_BULLET_STYLE_BITMAP );
        r( wxTEXT_ATTR_BULLET_STYLE_PARENTHESES );
        r( wxTEXT_ATTR_BULLET_STYLE_PERIOD );
#if WXPERL_W_VERSION_GE( 2, 7, 2 )
        r( wxTEXT_ATTR_BULLET_STYLE_STANDARD );
        r( wxTEXT_ATTR_BULLET_STYLE_RIGHT_PARENTHESIS );
        r( wxTEXT_ATTR_BULLET_STYLE_OUTLINE );
        r( wxTEXT_ATTR_BULLET_STYLE_ALIGN_LEFT );
        r( wxTEXT_ATTR_BULLET_STYLE_ALIGN_RIGHT );
        r( wxTEXT_ATTR_BULLET_STYLE_ALIGN_CENTRE );
#endif
        r( wxTEXT_ATTR_LINE_SPACING_NORMAL );
        r( wxTEXT_ATTR_LINE_SPACING_HALF );
        r( wxTEXT_ATTR_LINE_SPACING_TWICE );
        r( wxTEXT_ATTR_CHARACTER );
        r( wxTEXT_ATTR_PARAGRAPH );
        r( wxTEXT_ATTR_ALL );

#if WXPERL_W_VERSION_GE( 2, 8, 0 )
        r( wxTEXT_ATTR_EFFECT_NONE );
        r( wxTEXT_ATTR_EFFECT_CAPITALS );
        r( wxTEXT_ATTR_EFFECT_SMALL_CAPITALS );
        r( wxTEXT_ATTR_EFFECT_STRIKETHROUGH );
        r( wxTEXT_ATTR_EFFECT_DOUBLE_STRIKETHROUGH );
        r( wxTEXT_ATTR_EFFECT_SHADOW );
        r( wxTEXT_ATTR_EFFECT_EMBOSS );
        r( wxTEXT_ATTR_EFFECT_OUTLINE );
        r( wxTEXT_ATTR_EFFECT_ENGRAVE );
        r( wxTEXT_ATTR_EFFECT_SUPERSCRIPT );
        r( wxTEXT_ATTR_EFFECT_SUBSCRIPT );
#endif

#if WXPERL_W_VERSION_GE( 2, 8, 0 )
        r( wxTEXT_ATTR_EFFECTS );
#endif
#if WXPERL_W_VERSION_GE( 2, 9, 0 )
        r( wxTEXT_ATTR_FONT_ENCODING );
#endif
#if WXPERL_W_VERSION_GE( 2, 8, 8 )
        r( wxTEXT_ATTR_KEEP_FIRST_PARA_STYLE );
#endif
#if WXPERL_W_VERSION_GE( 2, 8, 0 )
        r( wxTEXT_ATTR_OUTLINE_LEVEL );
#endif
        break;
    }
#undef r

    WX_PL_CONSTANT_CLEANUP();
}

wxPlConstants richtextctrl_module( &richtextctrl_constant );



