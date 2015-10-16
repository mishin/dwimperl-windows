
# This is the Perl OpenGL build configuration file.
# It contains the final OpenGL build arguements from
# the configuration process.  Access the values by
# use OpenGL::Config which defines the variable
# $OpenGL::Config containing the hash arguments from
# the WriteMakefile() call.
#
$OpenGL::Config = {
                    'EXE_FILES' => [],
                    'OBJECT' => '$(BASEEXT)$(OBJ_EXT) gl_util$(OBJ_EXT) pogl_const$(OBJ_EXT) pogl_gl_top$(OBJ_EXT) pogl_glu$(OBJ_EXT) pogl_rpn$(OBJ_EXT) pogl_glut$(OBJ_EXT) pogl_gl_Accu_GetM$(OBJ_EXT) pogl_gl_GetP_Pass$(OBJ_EXT) pogl_gl_Mult_Prog$(OBJ_EXT) pogl_gl_Pixe_Ver2$(OBJ_EXT) pogl_gl_Prog_Clam$(OBJ_EXT) pogl_gl_Tex2_Draw$(OBJ_EXT) pogl_gl_Ver3_Tex1$(OBJ_EXT) pogl_gl_Vert_Multi$(OBJ_EXT)',
                    'VERSION_FROM' => 'OpenGL.pm',
                    'XSPROTOARG' => '-noprototypes',
                    'AUTHOR' => 'Chris Marshall <chm at cpan dot org>',
                    'OPTIMIZE' => undef,
                    'LDFROM' => '$(OBJECT) -lopengl32 -lglu32 -lglut',
                    'clean' => {
                                 'FILES' => 'Config.pm utils/glversion.txt utils/glversion.exe utils/glversion.o'
                               },
                    'LIBS' => undef,
                    'PREREQ_PM' => {
                                     'Test::More' => 0
                                   },
                    'META_MERGE' => {
                                      'resources' => {
                                                       'repository' => 'git://pogl.git.sourceforge.net/gitroot/pogl/pogl',
                                                       'bugtracker' => 'http://sourceforge.net/tracker/?group_id=562483&atid=2281758',
                                                       'homepage' => 'http://sourceforge.net/projects/pogl/'
                                                     },
                                      'abstract' => 'Perl bindings to the OpenGL API, GLU, and GLUT/FreeGLUT'
                                    },
                    'DEFINE' => '-DHAVE_VER -DIS_STRAWBERRY -DHAVE_FREEGLUT -DHAVE_GL -DHAVE_GLU -DHAVE_GLU32 -DHAVE_OPENGL32',
                    'dynamic_lib' => {},
                    'NAME' => 'OpenGL',
                    'INC' => undef,
                    'PM' => {
                              'Array.pod' => '$(INST_LIBDIR)/OpenGL/Array.pod',
                              'Tessellation.pod' => '$(INST_LIBDIR)/OpenGL/Tessellation.pod',
                              'OpenGL.pod' => '$(INST_LIBDIR)/OpenGL.pod',
                              'Config.pm' => '$(INST_LIBDIR)/OpenGL/Config.pm',
                              'OpenGL.pm' => '$(INST_LIBDIR)/OpenGL.pm'
                            }
                  };

1;
__END__
