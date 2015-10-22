package Alien::wxWidgets::Config::msw_3_0_2_uni_gcc_3_4;

use strict;

our %VALUES;

{
    no strict 'vars';
    %VALUES = %{
$VAR1 = {
          'alien_package' => 'Alien::wxWidgets::Config::msw_3_0_2_uni_gcc_3_4',
          'shared_library_path' => 'C:\\Users\\TOSH\\Documents\\job\\perl\\strawberry-perl-5.20.0.1-32bit-PDL\\perl\\site\\lib\\Alien\\wxWidgets\\msw_3_0_2_uni_gcc_3_4\\lib',
          'config' => {
                        'build' => 'multi',
                        'mslu' => 0,
                        'unicode' => 1,
                        'debug' => 0,
                        'toolkit' => 'msw',
                        'compiler_version' => '3.4',
                        'compiler_kind' => 'gcc'
                      },
          'linker' => 'g++',
          'prefix' => 'C:\\Users\\TOSH\\Documents\\job\\perl\\strawberry-perl-5.20.0.1-32bit-PDL\\perl\\site\\lib\\Alien\\wxWidgets\\msw_3_0_2_uni_gcc_3_4',
          'c_flags' => ' -m32  -O2 -mthreads -m32 -Os ',
          'include_path' => '-IC:\\Users\\TOSH\\Documents\\job\\perl\\strawberry-perl-5.20.0.1-32bit-PDL\\perl\\site\\lib\\Alien\\wxWidgets\\msw_3_0_2_uni_gcc_3_4\\lib -IC:\\Users\\TOSH\\Documents\\job\\perl\\strawberry-perl-5.20.0.1-32bit-PDL\\perl\\site\\lib\\Alien\\wxWidgets\\msw_3_0_2_uni_gcc_3_4\\include -IC:\\Users\\TOSH\\Documents\\job\\perl\\strawberry-perl-5.20.0.1-32bit-PDL\\perl\\site\\lib\\Alien\\wxWidgets\\msw_3_0_2_uni_gcc_3_4\\include ',
          'wx_base_directory' => 'C:\\Users\\TOSH\\Documents\\job\\perl\\strawberry-perl-5.20.0.1-32bit-PDL\\perl\\site\\lib\\Alien\\wxWidgets\\msw_3_0_2_uni_gcc_3_4',
          'alien_base' => 'msw_3_0_2_uni_gcc_3_4',
          'compiler' => 'g++',
          'link_libraries' => '-LC:\\Users\\TOSH\\Documents\\job\\perl\\strawberry-perl-5.20.0.1-32bit-PDL\\perl\\site\\lib\\Alien\\wxWidgets\\msw_3_0_2_uni_gcc_3_4\\lib -lwxmsw30u_core -lwxbase30u ',
          '_libraries' => {
                            'stc' => {
                                       'dll' => 'wxmsw30u_stc_gcc_custom.dll',
                                       'lib' => 'libwxmsw30u_stc.a',
                                       'link' => '-lwxmsw30u_stc'
                                     },
                            'ribbon' => {
                                          'lib' => 'libwxmsw30u_ribbon.a',
                                          'link' => '-lwxmsw30u_ribbon',
                                          'dll' => 'wxmsw30u_ribbon_gcc_custom.dll'
                                        },
                            'base' => {
                                        'link' => '-lwxbase30u',
                                        'lib' => 'libwxbase30u.a',
                                        'dll' => 'wxbase30u_gcc_custom.dll'
                                      },
                            'propgrid' => {
                                            'link' => '-lwxmsw30u_propgrid',
                                            'lib' => 'libwxmsw30u_propgrid.a',
                                            'dll' => 'wxmsw30u_propgrid_gcc_custom.dll'
                                          },
                            'xml' => {
                                       'dll' => 'wxbase30u_xml_gcc_custom.dll',
                                       'link' => '-lwxbase30u_xml',
                                       'lib' => 'libwxbase30u_xml.a'
                                     },
                            'media' => {
                                         'link' => '-lwxmsw30u_media',
                                         'lib' => 'libwxmsw30u_media.a',
                                         'dll' => 'wxmsw30u_media_gcc_custom.dll'
                                       },
                            'webview' => {
                                           'dll' => 'wxmsw30u_webview_gcc_custom.dll',
                                           'lib' => 'libwxmsw30u_webview.a',
                                           'link' => '-lwxmsw30u_webview'
                                         },
                            'net' => {
                                       'link' => '-lwxbase30u_net',
                                       'lib' => 'libwxbase30u_net.a',
                                       'dll' => 'wxbase30u_net_gcc_custom.dll'
                                     },
                            'xrc' => {
                                       'dll' => 'wxmsw30u_xrc_gcc_custom.dll',
                                       'link' => '-lwxmsw30u_xrc',
                                       'lib' => 'libwxmsw30u_xrc.a'
                                     },
                            'gl' => {
                                      'link' => '-lwxmsw30u_gl',
                                      'lib' => 'libwxmsw30u_gl.a',
                                      'dll' => 'wxmsw30u_gl_gcc_custom.dll'
                                    },
                            'html' => {
                                        'dll' => 'wxmsw30u_html_gcc_custom.dll',
                                        'lib' => 'libwxmsw30u_html.a',
                                        'link' => '-lwxmsw30u_html'
                                      },
                            'core' => {
                                        'dll' => 'wxmsw30u_core_gcc_custom.dll',
                                        'link' => '-lwxmsw30u_core',
                                        'lib' => 'libwxmsw30u_core.a'
                                      },
                            'aui' => {
                                       'dll' => 'wxmsw30u_aui_gcc_custom.dll',
                                       'lib' => 'libwxmsw30u_aui.a',
                                       'link' => '-lwxmsw30u_aui'
                                     },
                            'adv' => {
                                       'dll' => 'wxmsw30u_adv_gcc_custom.dll',
                                       'link' => '-lwxmsw30u_adv',
                                       'lib' => 'libwxmsw30u_adv.a'
                                     },
                            'richtext' => {
                                            'dll' => 'wxmsw30u_richtext_gcc_custom.dll',
                                            'lib' => 'libwxmsw30u_richtext.a',
                                            'link' => '-lwxmsw30u_richtext'
                                          }
                          },
          'version' => '3.000002',
          'defines' => '-DHAVE_W32API_H -D__WXMSW__ -DNDEBUG -D_UNICODE -DWXUSINGDLL -DNOPCH -DNO_GCC_PRAGMA ',
          'link_flags' => ' -s -m32 '
        };
    };
}

my $key = substr __PACKAGE__, 1 + rindex __PACKAGE__, ':';

my ($portablebase);
my $wxwidgetspath = __PACKAGE__ . '.pm';
$wxwidgetspath =~ s/::/\//g;

for (@INC) {
    if( -f qq($_/$wxwidgetspath ) ) {
        $portablebase = qq($_/Alien/wxWidgets/$key);
        last;
    }
}

if( $portablebase ) {
    $portablebase =~ s{/}{\\}g;
    my $portablelibpath = qq($portablebase\\lib);
    my $portableincpath = qq($portablebase\\include);

    $VALUES{include_path} = qq{-I$portablelibpath -I$portableincpath};
    $VALUES{link_libraries} =~ s{-L\S+\s}{-L$portablelibpath };
    $VALUES{shared_library_path} = $portablelibpath;
    $VALUES{wx_base_directory} = $portablebase;
    $VALUES{prefix} = $portablebase;
}

sub values { %VALUES, key => $key }

sub config {
   +{ %{$VALUES{config}},
      package       => __PACKAGE__,
      key           => $key,
      version       => $VALUES{version},
      }
}

1;
