# This Makefile is for the Wx extension to perl.
#
# It was generated automatically by MakeMaker version
# 7.1 (Revision: 71000) from the contents of
# Makefile.PL. Don't edit this file, edit Makefile.PL instead.
#
#       ANY CHANGES MADE HERE WILL BE LOST!
#
#   MakeMaker ARGV: ()
#

#   MakeMaker Parameters:

#     BUILD_REQUIRES => {  }
#     CCFLAGS => q[]
#     CONFIGURE => CODE(...)
#     CONFIGURE_REQUIRES => {  }
#     DIR => [q[print], q[datetime], q[ribbon], q[aui], q[docview], q[media], q[propgrid], q[xrc], q[dnd], q[test], q[webview], q[grid], q[filesys], q[richtext], q[calendar], q[html], q[help], q[stc], q[mdi], q[ipc], q[dataview], q[socket], q[pperl]]
#     LIBS => q[ -LC:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\perl\site\lib\Alien\wxWidgets\msw_3_0_2_uni_gcc_3_4\lib -lwxmsw30u_core -lwxbase30u  -lwxmsw30u_adv -lwxmsw30u_html -lwxmsw30u_core -lwxbase30u_net -lwxbase30u]
#     NAME => q[Wx]
#     PREREQ_PM => {  }
#     TEST_REQUIRES => {  }
#     TYPEMAPS => [q[..\typemap]]
#     XSOPT => q[ -noprototypes -nolinenumbers ]

#   MakeMaker 'CONFIGURE' Parameters:

#     BUILD_REQUIRES => {  }
#     CC => q[g++  -m32  -O2 -mthreads -m32 -Os  ]
#     CCFLAGS => q[]
#     CONFIGURE => CODE(...)
#     CONFIGURE_REQUIRES => {  }
#     DEFINE => q[ -DWXPL_EXT -DHAVE_W32API_H -D__WXMSW__ -DNDEBUG -D_UNICODE -DWXUSINGDLL -DNOPCH -DNO_GCC_PRAGMA  ]
#     DIR => [q[print], q[datetime], q[ribbon], q[aui], q[docview], q[media], q[propgrid], q[xrc], q[dnd], q[test], q[webview], q[grid], q[filesys], q[richtext], q[calendar], q[html], q[help], q[stc], q[mdi], q[ipc], q[dataview], q[socket], q[pperl]]
#     INC => q[-I. -I.. -IC:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\perl\site\lib\Alien\wxWidgets\msw_3_0_2_uni_gcc_3_4\lib -IC:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\perl\site\lib\Alien\wxWidgets\msw_3_0_2_uni_gcc_3_4\include]
#     LD => q[g++]
#     LIBS => [q[-LC:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\c\lib -LC:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\perl\site\lib\Alien\wxWidgets\msw_3_0_2_uni_gcc_3_4\lib  -lwxmsw30u_core -lwxbase30u  -lwxmsw30u_adv -lwxmsw30u_html -lwxmsw30u_core -lwxbase30u_net -lwxbase30u]]
#     NAME => q[Wx]
#     PREREQ_PM => {  }
#     TEST_REQUIRES => {  }
#     TYPEMAPS => [q[..\typemap]]
#     WX => { wx_core_lib=>undef, wx_top=>q[Wx.pm] }
#     XSOPT => q[ -noprototypes -nolinenumbers ]
#     clean => { FILES=>q[ dll.base dll.exp  xspp] }

# --- MakeMaker post_initialize section:


# --- MakeMaker const_config section:

# These definitions are from config.sh (via C:/Users/TOSH/Documents/GitHub/dwimperl-windows/strawberry-perl-5.20.0.1-32bit-portable/perl/lib/Config.pm).
# They may have been overridden via Makefile.PL or on the command line.
AR = ar
CC = g++  -m32  -O2 -mthreads -m32 -Os  
CCCDLFLAGS =  
CCDLFLAGS =  
DLEXT = xs.dll
DLSRC = dl_win32.xs
EXE_EXT = .exe
FULL_AR = 
LD = g++
LDDLFLAGS = -mdll -s -L"C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\perl\lib\CORE" -L"C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\c\lib"
LDFLAGS = -s -L"C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\perl\lib\CORE" -L"C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\c\lib"
LIBC = 
LIB_EXT = .a
OBJ_EXT = .o
OSNAME = MSWin32
OSVERS = 6.2
RANLIB = rem
SITELIBEXP = C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\perl\site\lib
SITEARCHEXP = C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\perl\site\lib
SO = dll
VENDORARCHEXP = C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\perl\vendor\lib
VENDORLIBEXP = C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\perl\vendor\lib


# --- MakeMaker constants section:

# Get dmake to read long commands like PM_TO_BLIB
MAXLINELENGTH = 800000

AR_STATIC_ARGS = cr
DIRFILESEP = \\
DFSEP = $(DIRFILESEP)
NAME = Wx
NAME_SYM = Wx
VERSION = 
VERSION_MACRO = VERSION
VERSION_SYM = 
DEFINE_VERSION = -D$(VERSION_MACRO)=\"$(VERSION)\"
XS_VERSION = 
XS_VERSION_MACRO = XS_VERSION
XS_DEFINE_VERSION = -D$(XS_VERSION_MACRO)=\"$(XS_VERSION)\"
INST_ARCHLIB = ..\blib\arch
INST_SCRIPT = ..\blib\script
INST_BIN = ..\blib\bin
INST_LIB = ..\blib\lib
INST_MAN1DIR = ..\blib\man1
INST_MAN3DIR = ..\blib\man3
MAN1EXT = 1
MAN3EXT = 3
INSTALLDIRS = site
DESTDIR = 
PREFIX = $(SITEPREFIX)
PERLPREFIX = C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\perl
SITEPREFIX = C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\perl\site
VENDORPREFIX = C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\perl\vendor
INSTALLPRIVLIB = C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\perl\lib
DESTINSTALLPRIVLIB = $(DESTDIR)$(INSTALLPRIVLIB)
INSTALLSITELIB = C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\perl\site\lib
DESTINSTALLSITELIB = $(DESTDIR)$(INSTALLSITELIB)
INSTALLVENDORLIB = C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\perl\vendor\lib
DESTINSTALLVENDORLIB = $(DESTDIR)$(INSTALLVENDORLIB)
INSTALLARCHLIB = C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\perl\lib
DESTINSTALLARCHLIB = $(DESTDIR)$(INSTALLARCHLIB)
INSTALLSITEARCH = C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\perl\site\lib
DESTINSTALLSITEARCH = $(DESTDIR)$(INSTALLSITEARCH)
INSTALLVENDORARCH = C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\perl\vendor\lib
DESTINSTALLVENDORARCH = $(DESTDIR)$(INSTALLVENDORARCH)
INSTALLBIN = C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\perl\bin
DESTINSTALLBIN = $(DESTDIR)$(INSTALLBIN)
INSTALLSITEBIN = C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\perl\site\bin
DESTINSTALLSITEBIN = $(DESTDIR)$(INSTALLSITEBIN)
INSTALLVENDORBIN = C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\perl\bin
DESTINSTALLVENDORBIN = $(DESTDIR)$(INSTALLVENDORBIN)
INSTALLSCRIPT = C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\perl\bin
DESTINSTALLSCRIPT = $(DESTDIR)$(INSTALLSCRIPT)
INSTALLSITESCRIPT = C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\perl\site\bin
DESTINSTALLSITESCRIPT = $(DESTDIR)$(INSTALLSITESCRIPT)
INSTALLVENDORSCRIPT = C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\perl\bin
DESTINSTALLVENDORSCRIPT = $(DESTDIR)$(INSTALLVENDORSCRIPT)
INSTALLMAN1DIR = none
DESTINSTALLMAN1DIR = $(DESTDIR)$(INSTALLMAN1DIR)
INSTALLSITEMAN1DIR = $(INSTALLMAN1DIR)
DESTINSTALLSITEMAN1DIR = $(DESTDIR)$(INSTALLSITEMAN1DIR)
INSTALLVENDORMAN1DIR = $(INSTALLMAN1DIR)
DESTINSTALLVENDORMAN1DIR = $(DESTDIR)$(INSTALLVENDORMAN1DIR)
INSTALLMAN3DIR = none
DESTINSTALLMAN3DIR = $(DESTDIR)$(INSTALLMAN3DIR)
INSTALLSITEMAN3DIR = $(INSTALLMAN3DIR)
DESTINSTALLSITEMAN3DIR = $(DESTDIR)$(INSTALLSITEMAN3DIR)
INSTALLVENDORMAN3DIR = $(INSTALLMAN3DIR)
DESTINSTALLVENDORMAN3DIR = $(DESTDIR)$(INSTALLVENDORMAN3DIR)
PERL_LIB = C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\perl\lib
PERL_ARCHLIB = C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\perl\lib
PERL_ARCHLIBDEP = C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\perl\lib
LIBPERL_A = libperl.a
FIRST_MAKEFILE = Makefile
MAKEFILE_OLD = Makefile.old
MAKE_APERL_FILE = Makefile.aperl
PERLMAINCC = $(CC)
PERL_INC = C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\perl\lib\CORE
PERL_INCDEP = C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\perl\lib\CORE
PERL = "C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\perl\bin\perl.exe"
FULLPERL = "C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\perl\bin\perl.exe"
ABSPERL = $(PERL)
PERLRUN = $(PERL)
FULLPERLRUN = $(FULLPERL)
ABSPERLRUN = $(ABSPERL)
PERLRUNINST = $(PERLRUN) "-I$(INST_ARCHLIB)" "-I$(INST_LIB)"
FULLPERLRUNINST = $(FULLPERLRUN) "-I$(INST_ARCHLIB)" "-I$(INST_LIB)"
ABSPERLRUNINST = $(ABSPERLRUN) "-I$(INST_ARCHLIB)" "-I$(INST_LIB)"
PERL_CORE = 0
PERM_DIR = 755
PERM_RW = 644
PERM_RWX = 755

MAKEMAKER   = C:/Users/TOSH/Documents/GitHub/dwimperl-windows/strawberry-perl-5.20.0.1-32bit-portable/perl/site/lib/ExtUtils/MakeMaker.pm
MM_VERSION  = 7.1
MM_REVISION = 71000

# FULLEXT = Pathname for extension directory (eg Foo/Bar/Oracle).
# BASEEXT = Basename part of FULLEXT. May be just equal FULLEXT. (eg Oracle)
# PARENT_NAME = NAME without BASEEXT and no trailing :: (eg Foo::Bar)
# DLBASE  = Basename part of dynamic library. May be just equal BASEEXT.
MAKE = dmake
FULLEXT = Wx
BASEEXT = Wx
PARENT_NAME = 
DLBASE = $(BASEEXT)
VERSION_FROM = 
INC = -I. -I.. -IC:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\perl\site\lib\Alien\wxWidgets\msw_3_0_2_uni_gcc_3_4\lib -IC:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\perl\site\lib\Alien\wxWidgets\msw_3_0_2_uni_gcc_3_4\include
DEFINE =  -DWXPL_EXT -DHAVE_W32API_H -D__WXMSW__ -DNDEBUG -D_UNICODE -DWXUSINGDLL -DNOPCH -DNO_GCC_PRAGMA  
OBJECT = 
LDFROM = $(OBJECT)
LINKTYPE = dynamic
BOOTDEP = 

# Handy lists of source code files:
XS_FILES = 
C_FILES  = 
O_FILES  = 
H_FILES  = 
MAN1PODS = 
MAN3PODS = 

# Where is the Config information that we are using/depend on
CONFIGDEP = $(PERL_ARCHLIBDEP)$(DFSEP)Config.pm $(PERL_INCDEP)$(DFSEP)config.h

# Where to build things
INST_LIBDIR      = $(INST_LIB)
INST_ARCHLIBDIR  = $(INST_ARCHLIB)

INST_AUTODIR     = $(INST_LIB)\auto\$(FULLEXT)
INST_ARCHAUTODIR = $(INST_ARCHLIB)\auto\$(FULLEXT)

INST_STATIC      = 
INST_DYNAMIC     = 
INST_BOOT        = 

# Extra linker info
EXPORT_LIST        = $(BASEEXT).def
PERL_ARCHIVE       = $(PERL_INC)\libperl520.a
PERL_ARCHIVEDEP    = $(PERL_INCDEP)\libperl520.a
PERL_ARCHIVE_AFTER = 


TO_INST_PM = 

PM_TO_BLIB = 


# --- MakeMaker platform_constants section:
MM_Win32_VERSION = 7.10


# --- MakeMaker tool_autosplit section:
# Usage: $(AUTOSPLITFILE) FileToSplit AutoDirToSplitInto
AUTOSPLITFILE = $(ABSPERLRUN)  -e "use AutoSplit;  autosplit($$$$ARGV[0], $$$$ARGV[1], 0, 1, 1)" --



# --- MakeMaker tool_xsubpp section:

XSUBPPDIR = C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\perl\lib\ExtUtils
XSUBPP = "$(XSUBPPDIR)$(DFSEP)xsubpp"
XSUBPPRUN = $(PERLRUN) $(XSUBPP)
XSPROTOARG = 
XSUBPPDEPS = C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\perl\lib\ExtUtils\typemap ..\typemap C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\perl\lib\ExtUtils$(DFSEP)xsubpp
XSUBPPARGS =  -noprototypes -nolinenumbers  -typemap "C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\perl\lib\ExtUtils\typemap" -typemap "..\typemap"
XSUBPP_EXTRA_ARGS =


# --- MakeMaker tools_other section:
CHMOD = $(ABSPERLRUN) -MExtUtils::Command -e chmod --
CP = $(ABSPERLRUN) -MExtUtils::Command -e cp --
MV = $(ABSPERLRUN) -MExtUtils::Command -e mv --
NOOP = rem
NOECHO = @
RM_F = $(ABSPERLRUN) -MExtUtils::Command -e rm_f --
RM_RF = $(ABSPERLRUN) -MExtUtils::Command -e rm_rf --
TEST_F = $(ABSPERLRUN) -MExtUtils::Command -e test_f --
TOUCH = $(ABSPERLRUN) -MExtUtils::Command -e touch --
UMASK_NULL = umask 0
DEV_NULL = > NUL
MKPATH = $(ABSPERLRUN) -MExtUtils::Command -e mkpath --
EQUALIZE_TIMESTAMP = $(ABSPERLRUN) -MExtUtils::Command -e eqtime --
FALSE = $(ABSPERLRUN)  -e "exit 1" --
TRUE = $(ABSPERLRUN)  -e "exit 0" --
ECHO = $(ABSPERLRUN) -l -e "binmode STDOUT, qq{{:raw}}; print qq{{@ARGV}}" --
ECHO_N = $(ABSPERLRUN)  -e "print qq{{@ARGV}}" --
UNINST = 0
VERBINST = 0
MOD_INSTALL = $(ABSPERLRUN) -MExtUtils::Install -e "install([ from_to => {{@ARGV}}, verbose => '$(VERBINST)', uninstall_shadows => '$(UNINST)', dir_mode => '$(PERM_DIR)' ]);" --
DOC_INSTALL = $(ABSPERLRUN) -MExtUtils::Command::MM -e perllocal_install --
UNINSTALL = $(ABSPERLRUN) -MExtUtils::Command::MM -e uninstall --
WARN_IF_OLD_PACKLIST = $(ABSPERLRUN) -MExtUtils::Command::MM -e warn_if_old_packlist --
MACROSTART = 
MACROEND = 
USEMAKEFILE = -f
FIXIN = pl2bat.bat
CP_NONEMPTY = $(ABSPERLRUN) -MExtUtils::Command::MM -e cp_nonempty --


# --- MakeMaker makemakerdflt section:
makemakerdflt : all
	$(NOECHO) $(NOOP)


# --- MakeMaker dist section skipped.

# --- MakeMaker macro section:


# --- MakeMaker depend section:


# --- MakeMaker cflags section:

CCFLAGS = -s -O2 -DWIN32 -DPERL_TEXTMODE_SCRIPTS -DPERL_IMPLICIT_CONTEXT -DPERL_IMPLICIT_SYS -DUSE_PERLIO -fwrapv -fno-strict-aliasing -mms-bitfields
OPTIMIZE = -s -O2
PERLTYPE = 


# --- MakeMaker const_loadlibs section:

# Wx might depend on some other libraries:
# See ExtUtils::Liblist for details
#
EXTRALIBS = "C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\perl\site\lib\Alien\wxWidgets\msw_3_0_2_uni_gcc_3_4\lib\libwxmsw30u_core.a" "C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\perl\site\lib\Alien\wxWidgets\msw_3_0_2_uni_gcc_3_4\lib\libwxbase30u.a" "C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\perl\site\lib\Alien\wxWidgets\msw_3_0_2_uni_gcc_3_4\lib\libwxmsw30u_adv.a" "C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\perl\site\lib\Alien\wxWidgets\msw_3_0_2_uni_gcc_3_4\lib\libwxmsw30u_html.a" "C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\perl\site\lib\Alien\wxWidgets\msw_3_0_2_uni_gcc_3_4\lib\libwxmsw30u_core.a" "C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\perl\site\lib\Alien\wxWidgets\msw_3_0_2_uni_gcc_3_4\lib\libwxbase30u_net.a" "C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\perl\site\lib\Alien\wxWidgets\msw_3_0_2_uni_gcc_3_4\lib\libwxbase30u.a" "C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\c\i686-w64-mingw32\lib\libmoldname.a" "C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\c\i686-w64-mingw32\lib\libkernel32.a" "C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\c\i686-w64-mingw32\lib\libuser32.a" "C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\c\i686-w64-mingw32\lib\libgdi32.a" "C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\c\i686-w64-mingw32\lib\libwinspool.a" "C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\c\i686-w64-mingw32\lib\libcomdlg32.a" "C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\c\i686-w64-mingw32\lib\libadvapi32.a" "C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\c\i686-w64-mingw32\lib\libshell32.a" "C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\c\i686-w64-mingw32\lib\libole32.a" "C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\c\i686-w64-mingw32\lib\liboleaut32.a" "C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\c\i686-w64-mingw32\lib\libnetapi32.a" "C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\c\i686-w64-mingw32\lib\libuuid.a" "C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\c\i686-w64-mingw32\lib\libws2_32.a" "C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\c\i686-w64-mingw32\lib\libmpr.a" "C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\c\i686-w64-mingw32\lib\libwinmm.a" "C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\c\i686-w64-mingw32\lib\libversion.a" "C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\c\i686-w64-mingw32\lib\libodbc32.a" "C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\c\i686-w64-mingw32\lib\libodbccp32.a" "C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\c\i686-w64-mingw32\lib\libcomctl32.a"
LDLOADLIBS = "C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\perl\site\lib\Alien\wxWidgets\msw_3_0_2_uni_gcc_3_4\lib\libwxmsw30u_core.a" "C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\perl\site\lib\Alien\wxWidgets\msw_3_0_2_uni_gcc_3_4\lib\libwxbase30u.a" "C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\perl\site\lib\Alien\wxWidgets\msw_3_0_2_uni_gcc_3_4\lib\libwxmsw30u_adv.a" "C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\perl\site\lib\Alien\wxWidgets\msw_3_0_2_uni_gcc_3_4\lib\libwxmsw30u_html.a" "C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\perl\site\lib\Alien\wxWidgets\msw_3_0_2_uni_gcc_3_4\lib\libwxmsw30u_core.a" "C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\perl\site\lib\Alien\wxWidgets\msw_3_0_2_uni_gcc_3_4\lib\libwxbase30u_net.a" "C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\perl\site\lib\Alien\wxWidgets\msw_3_0_2_uni_gcc_3_4\lib\libwxbase30u.a" "C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\c\i686-w64-mingw32\lib\libmoldname.a" "C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\c\i686-w64-mingw32\lib\libkernel32.a" "C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\c\i686-w64-mingw32\lib\libuser32.a" "C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\c\i686-w64-mingw32\lib\libgdi32.a" "C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\c\i686-w64-mingw32\lib\libwinspool.a" "C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\c\i686-w64-mingw32\lib\libcomdlg32.a" "C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\c\i686-w64-mingw32\lib\libadvapi32.a" "C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\c\i686-w64-mingw32\lib\libshell32.a" "C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\c\i686-w64-mingw32\lib\libole32.a" "C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\c\i686-w64-mingw32\lib\liboleaut32.a" "C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\c\i686-w64-mingw32\lib\libnetapi32.a" "C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\c\i686-w64-mingw32\lib\libuuid.a" "C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\c\i686-w64-mingw32\lib\libws2_32.a" "C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\c\i686-w64-mingw32\lib\libmpr.a" "C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\c\i686-w64-mingw32\lib\libwinmm.a" "C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\c\i686-w64-mingw32\lib\libversion.a" "C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\c\i686-w64-mingw32\lib\libodbc32.a" "C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\c\i686-w64-mingw32\lib\libodbccp32.a" "C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\c\i686-w64-mingw32\lib\libcomctl32.a"
BSLOADLIBS = 


# --- MakeMaker const_cccmd section:
CCCMD = $(CC) -c $(PASTHRU_INC) $(INC) \
	$(CCFLAGS) $(OPTIMIZE) \
	$(PERLTYPE) $(MPOLLUTE) $(DEFINE_VERSION) \
	$(XS_DEFINE_VERSION)

# --- MakeMaker post_constants section:


# --- MakeMaker pasthru section:
PASTHRU = 

# --- MakeMaker special_targets section:
.SUFFIXES : .xs .c .C .cpp .i .s .cxx .cc $(OBJ_EXT)

.PHONY: all config static dynamic test linkext manifest blibdirs clean realclean disttest distdir

.USESHELL :


# --- MakeMaker c_o section:

.c.i:
	gcc -E -c $(PASTHRU_INC) $(INC) \
	$(CCFLAGS) $(OPTIMIZE) \
	$(PERLTYPE) $(MPOLLUTE) $(DEFINE_VERSION) \
	$(XS_DEFINE_VERSION) $(CCCDLFLAGS) "-I$(PERL_INC)" $(PASTHRU_DEFINE) $(DEFINE) $*.c > $*.i

.c.s:
	$(CCCMD) -S $(CCCDLFLAGS) "-I$(PERL_INC)" $(PASTHRU_DEFINE) $(DEFINE) $*.c

.c$(OBJ_EXT):
	$(CCCMD) $(CCCDLFLAGS) "-I$(PERL_INC)" $(PASTHRU_DEFINE) $(DEFINE) $*.c

.cpp$(OBJ_EXT):
	$(CCCMD) $(CCCDLFLAGS) "-I$(PERL_INC)" $(PASTHRU_DEFINE) $(DEFINE) $*.cpp

.cxx$(OBJ_EXT):
	$(CCCMD) $(CCCDLFLAGS) "-I$(PERL_INC)" $(PASTHRU_DEFINE) $(DEFINE) $*.cxx

.cc$(OBJ_EXT):
	$(CCCMD) $(CCCDLFLAGS) "-I$(PERL_INC)" $(PASTHRU_DEFINE) $(DEFINE) $*.cc


# --- MakeMaker xs_c section:

.xs.c:
	$(XSUBPPRUN) $(XSPROTOARG) $(XSUBPPARGS) $(XSUBPP_EXTRA_ARGS) $*.xs > $*.xsc && $(MV) $*.xsc $*.c


# --- MakeMaker xs_o section:


# --- MakeMaker top_targets section:
all :: pure_all
	$(NOECHO) $(NOOP)


pure_all :: config pm_to_blib subdirs linkext
	$(NOECHO) $(NOOP)

subdirs :: $(MYEXTLIB)
	$(NOECHO) $(NOOP)

config :: $(FIRST_MAKEFILE) blibdirs
	$(NOECHO) $(NOOP)

help :
	perldoc ExtUtils::MakeMaker


# --- MakeMaker blibdirs section:
blibdirs : $(INST_LIBDIR)$(DFSEP).exists $(INST_ARCHLIB)$(DFSEP).exists $(INST_AUTODIR)$(DFSEP).exists $(INST_ARCHAUTODIR)$(DFSEP).exists $(INST_BIN)$(DFSEP).exists $(INST_SCRIPT)$(DFSEP).exists $(INST_MAN1DIR)$(DFSEP).exists $(INST_MAN3DIR)$(DFSEP).exists
	$(NOECHO) $(NOOP)

# Backwards compat with 6.18 through 6.25
blibdirs.ts : blibdirs
	$(NOECHO) $(NOOP)

$(INST_LIBDIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_LIBDIR)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_LIBDIR)
	$(NOECHO) $(TOUCH) $(INST_LIBDIR)$(DFSEP).exists

$(INST_ARCHLIB)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_ARCHLIB)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_ARCHLIB)
	$(NOECHO) $(TOUCH) $(INST_ARCHLIB)$(DFSEP).exists

$(INST_AUTODIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_AUTODIR)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_AUTODIR)
	$(NOECHO) $(TOUCH) $(INST_AUTODIR)$(DFSEP).exists

$(INST_ARCHAUTODIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_ARCHAUTODIR)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_ARCHAUTODIR)
	$(NOECHO) $(TOUCH) $(INST_ARCHAUTODIR)$(DFSEP).exists

$(INST_BIN)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_BIN)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_BIN)
	$(NOECHO) $(TOUCH) $(INST_BIN)$(DFSEP).exists

$(INST_SCRIPT)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_SCRIPT)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_SCRIPT)
	$(NOECHO) $(TOUCH) $(INST_SCRIPT)$(DFSEP).exists

$(INST_MAN1DIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_MAN1DIR)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_MAN1DIR)
	$(NOECHO) $(TOUCH) $(INST_MAN1DIR)$(DFSEP).exists

$(INST_MAN3DIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_MAN3DIR)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_MAN3DIR)
	$(NOECHO) $(TOUCH) $(INST_MAN3DIR)$(DFSEP).exists



# --- MakeMaker linkext section:

linkext :: $(LINKTYPE)
	$(NOECHO) $(NOOP)


# --- MakeMaker dlsyms section:

Wx.def: Makefile.PL
	$(PERLRUN) -MExtUtils::Mksymlists \
     -e "Mksymlists('NAME'=>\"Wx\", 'DLBASE' => '$(BASEEXT)', 'DL_FUNCS' => {  }, 'FUNCLIST' => [], 'IMPORTS' => {  }, 'DL_VARS' => []);"


# --- MakeMaker dynamic_bs section:

BOOTSTRAP =


# --- MakeMaker dynamic section:

dynamic :: $(FIRST_MAKEFILE) $(BOOTSTRAP) $(INST_DYNAMIC)
	$(NOECHO) $(NOOP)


# --- MakeMaker dynamic_lib section:


# --- MakeMaker static section:

## $(INST_PM) has been moved to the all: target.
## It remains here for awhile to allow for old usage: "make static"
static :: $(FIRST_MAKEFILE) $(INST_STATIC)
	$(NOECHO) $(NOOP)


# --- MakeMaker static_lib section:


# --- MakeMaker manifypods section:

POD2MAN_EXE = $(PERLRUN) "-MExtUtils::Command::MM" -e pod2man "--"
POD2MAN = $(POD2MAN_EXE)


manifypods : pure_all 
	$(NOECHO) $(NOOP)




# --- MakeMaker processPL section:


# --- MakeMaker installbin section:


# --- MakeMaker subdirs section:

# The default clean, realclean and test targets in this Makefile
# have automatically been given entries for each subdir.


subdirs ::
	$(NOECHO) cd print && $(MAKE) $(USEMAKEFILE) $(FIRST_MAKEFILE) all $(PASTHRU)

subdirs ::
	$(NOECHO) cd datetime && $(MAKE) $(USEMAKEFILE) $(FIRST_MAKEFILE) all $(PASTHRU)

subdirs ::
	$(NOECHO) cd ribbon && $(MAKE) $(USEMAKEFILE) $(FIRST_MAKEFILE) all $(PASTHRU)

subdirs ::
	$(NOECHO) cd aui && $(MAKE) $(USEMAKEFILE) $(FIRST_MAKEFILE) all $(PASTHRU)

subdirs ::
	$(NOECHO) cd docview && $(MAKE) $(USEMAKEFILE) $(FIRST_MAKEFILE) all $(PASTHRU)

subdirs ::
	$(NOECHO) cd media && $(MAKE) $(USEMAKEFILE) $(FIRST_MAKEFILE) all $(PASTHRU)

subdirs ::
	$(NOECHO) cd propgrid && $(MAKE) $(USEMAKEFILE) $(FIRST_MAKEFILE) all $(PASTHRU)

subdirs ::
	$(NOECHO) cd xrc && $(MAKE) $(USEMAKEFILE) $(FIRST_MAKEFILE) all $(PASTHRU)

subdirs ::
	$(NOECHO) cd dnd && $(MAKE) $(USEMAKEFILE) $(FIRST_MAKEFILE) all $(PASTHRU)

subdirs ::
	$(NOECHO) cd test && $(MAKE) $(USEMAKEFILE) $(FIRST_MAKEFILE) all $(PASTHRU)

subdirs ::
	$(NOECHO) cd webview && $(MAKE) $(USEMAKEFILE) $(FIRST_MAKEFILE) all $(PASTHRU)

subdirs ::
	$(NOECHO) cd grid && $(MAKE) $(USEMAKEFILE) $(FIRST_MAKEFILE) all $(PASTHRU)

subdirs ::
	$(NOECHO) cd filesys && $(MAKE) $(USEMAKEFILE) $(FIRST_MAKEFILE) all $(PASTHRU)

subdirs ::
	$(NOECHO) cd richtext && $(MAKE) $(USEMAKEFILE) $(FIRST_MAKEFILE) all $(PASTHRU)

subdirs ::
	$(NOECHO) cd calendar && $(MAKE) $(USEMAKEFILE) $(FIRST_MAKEFILE) all $(PASTHRU)

subdirs ::
	$(NOECHO) cd html && $(MAKE) $(USEMAKEFILE) $(FIRST_MAKEFILE) all $(PASTHRU)

subdirs ::
	$(NOECHO) cd help && $(MAKE) $(USEMAKEFILE) $(FIRST_MAKEFILE) all $(PASTHRU)

subdirs ::
	$(NOECHO) cd stc && $(MAKE) $(USEMAKEFILE) $(FIRST_MAKEFILE) all $(PASTHRU)

subdirs ::
	$(NOECHO) cd mdi && $(MAKE) $(USEMAKEFILE) $(FIRST_MAKEFILE) all $(PASTHRU)

subdirs ::
	$(NOECHO) cd ipc && $(MAKE) $(USEMAKEFILE) $(FIRST_MAKEFILE) all $(PASTHRU)

subdirs ::
	$(NOECHO) cd dataview && $(MAKE) $(USEMAKEFILE) $(FIRST_MAKEFILE) all $(PASTHRU)

subdirs ::
	$(NOECHO) cd socket && $(MAKE) $(USEMAKEFILE) $(FIRST_MAKEFILE) all $(PASTHRU)

subdirs ::
	$(NOECHO) cd pperl && $(MAKE) $(USEMAKEFILE) $(FIRST_MAKEFILE) all $(PASTHRU)


# --- MakeMaker clean_subdirs section:
clean_subdirs :
	$(ABSPERLRUN)  -e "exit 0 unless chdir 'print';  system '$(MAKE) clean' if -f '$(FIRST_MAKEFILE)';" --
	$(ABSPERLRUN)  -e "exit 0 unless chdir 'datetime';  system '$(MAKE) clean' if -f '$(FIRST_MAKEFILE)';" --
	$(ABSPERLRUN)  -e "exit 0 unless chdir 'ribbon';  system '$(MAKE) clean' if -f '$(FIRST_MAKEFILE)';" --
	$(ABSPERLRUN)  -e "exit 0 unless chdir 'aui';  system '$(MAKE) clean' if -f '$(FIRST_MAKEFILE)';" --
	$(ABSPERLRUN)  -e "exit 0 unless chdir 'docview';  system '$(MAKE) clean' if -f '$(FIRST_MAKEFILE)';" --
	$(ABSPERLRUN)  -e "exit 0 unless chdir 'media';  system '$(MAKE) clean' if -f '$(FIRST_MAKEFILE)';" --
	$(ABSPERLRUN)  -e "exit 0 unless chdir 'propgrid';  system '$(MAKE) clean' if -f '$(FIRST_MAKEFILE)';" --
	$(ABSPERLRUN)  -e "exit 0 unless chdir 'xrc';  system '$(MAKE) clean' if -f '$(FIRST_MAKEFILE)';" --
	$(ABSPERLRUN)  -e "exit 0 unless chdir 'dnd';  system '$(MAKE) clean' if -f '$(FIRST_MAKEFILE)';" --
	$(ABSPERLRUN)  -e "exit 0 unless chdir 'test';  system '$(MAKE) clean' if -f '$(FIRST_MAKEFILE)';" --
	$(ABSPERLRUN)  -e "exit 0 unless chdir 'webview';  system '$(MAKE) clean' if -f '$(FIRST_MAKEFILE)';" --
	$(ABSPERLRUN)  -e "exit 0 unless chdir 'grid';  system '$(MAKE) clean' if -f '$(FIRST_MAKEFILE)';" --
	$(ABSPERLRUN)  -e "exit 0 unless chdir 'filesys';  system '$(MAKE) clean' if -f '$(FIRST_MAKEFILE)';" --
	$(ABSPERLRUN)  -e "exit 0 unless chdir 'richtext';  system '$(MAKE) clean' if -f '$(FIRST_MAKEFILE)';" --
	$(ABSPERLRUN)  -e "exit 0 unless chdir 'calendar';  system '$(MAKE) clean' if -f '$(FIRST_MAKEFILE)';" --
	$(ABSPERLRUN)  -e "exit 0 unless chdir 'html';  system '$(MAKE) clean' if -f '$(FIRST_MAKEFILE)';" --
	$(ABSPERLRUN)  -e "exit 0 unless chdir 'help';  system '$(MAKE) clean' if -f '$(FIRST_MAKEFILE)';" --
	$(ABSPERLRUN)  -e "exit 0 unless chdir 'stc';  system '$(MAKE) clean' if -f '$(FIRST_MAKEFILE)';" --
	$(ABSPERLRUN)  -e "exit 0 unless chdir 'mdi';  system '$(MAKE) clean' if -f '$(FIRST_MAKEFILE)';" --
	$(ABSPERLRUN)  -e "exit 0 unless chdir 'ipc';  system '$(MAKE) clean' if -f '$(FIRST_MAKEFILE)';" --
	$(ABSPERLRUN)  -e "exit 0 unless chdir 'dataview';  system '$(MAKE) clean' if -f '$(FIRST_MAKEFILE)';" --
	$(ABSPERLRUN)  -e "exit 0 unless chdir 'socket';  system '$(MAKE) clean' if -f '$(FIRST_MAKEFILE)';" --
	$(ABSPERLRUN)  -e "exit 0 unless chdir 'pperl';  system '$(MAKE) clean' if -f '$(FIRST_MAKEFILE)';" --


# --- MakeMaker clean section:

# Delete temporary files but do not touch installed files. We don't delete
# the Makefile here so a later make realclean still has a makefile to use.

clean :: clean_subdirs
	- $(RM_F) \
	  $(BASEEXT).bso $(BASEEXT).def \
	  $(BASEEXT).exp $(BASEEXT).x \
	  $(BOOTSTRAP) $(INST_ARCHAUTODIR)\extralibs.all \
	  $(INST_ARCHAUTODIR)\extralibs.ld $(MAKE_APERL_FILE) \
	  *$(LIB_EXT) *$(OBJ_EXT) \
	  *perl.core MYMETA.json \
	  MYMETA.yml blibdirs.ts \
	  core core.*perl.*.? \
	  core.[0-9] core.[0-9][0-9] \
	  core.[0-9][0-9][0-9] core.[0-9][0-9][0-9][0-9] \
	  core.[0-9][0-9][0-9][0-9][0-9] lib$(BASEEXT).def \
	  mon.out perl \
	  perl$(EXE_EXT) perl.exe \
	  perlmain.c pm_to_blib \
	  pm_to_blib.ts so_locations \
	  tmon.out 
	- $(RM_RF) \
	   blib \
	  dll.base dll.exp \
	  xspp 
	  $(NOECHO) $(RM_F) $(MAKEFILE_OLD)
	- $(MV) $(FIRST_MAKEFILE) $(MAKEFILE_OLD) $(DEV_NULL)


# --- MakeMaker realclean_subdirs section:
realclean_subdirs :
	- $(ABSPERLRUN)  -e "chdir 'print';  system '$(MAKE) $(USEMAKEFILE) $(MAKEFILE_OLD) realclean' if -f '$(MAKEFILE_OLD)';" --
	- $(ABSPERLRUN)  -e "chdir 'print';  system '$(MAKE) $(USEMAKEFILE) $(FIRST_MAKEFILE) realclean' if -f '$(FIRST_MAKEFILE)';" --
	- $(ABSPERLRUN)  -e "chdir 'datetime';  system '$(MAKE) $(USEMAKEFILE) $(MAKEFILE_OLD) realclean' if -f '$(MAKEFILE_OLD)';" --
	- $(ABSPERLRUN)  -e "chdir 'datetime';  system '$(MAKE) $(USEMAKEFILE) $(FIRST_MAKEFILE) realclean' if -f '$(FIRST_MAKEFILE)';" --
	- $(ABSPERLRUN)  -e "chdir 'ribbon';  system '$(MAKE) $(USEMAKEFILE) $(MAKEFILE_OLD) realclean' if -f '$(MAKEFILE_OLD)';" --
	- $(ABSPERLRUN)  -e "chdir 'ribbon';  system '$(MAKE) $(USEMAKEFILE) $(FIRST_MAKEFILE) realclean' if -f '$(FIRST_MAKEFILE)';" --
	- $(ABSPERLRUN)  -e "chdir 'aui';  system '$(MAKE) $(USEMAKEFILE) $(MAKEFILE_OLD) realclean' if -f '$(MAKEFILE_OLD)';" --
	- $(ABSPERLRUN)  -e "chdir 'aui';  system '$(MAKE) $(USEMAKEFILE) $(FIRST_MAKEFILE) realclean' if -f '$(FIRST_MAKEFILE)';" --
	- $(ABSPERLRUN)  -e "chdir 'docview';  system '$(MAKE) $(USEMAKEFILE) $(MAKEFILE_OLD) realclean' if -f '$(MAKEFILE_OLD)';" --
	- $(ABSPERLRUN)  -e "chdir 'docview';  system '$(MAKE) $(USEMAKEFILE) $(FIRST_MAKEFILE) realclean' if -f '$(FIRST_MAKEFILE)';" --
	- $(ABSPERLRUN)  -e "chdir 'media';  system '$(MAKE) $(USEMAKEFILE) $(MAKEFILE_OLD) realclean' if -f '$(MAKEFILE_OLD)';" --
	- $(ABSPERLRUN)  -e "chdir 'media';  system '$(MAKE) $(USEMAKEFILE) $(FIRST_MAKEFILE) realclean' if -f '$(FIRST_MAKEFILE)';" --
	- $(ABSPERLRUN)  -e "chdir 'propgrid';  system '$(MAKE) $(USEMAKEFILE) $(MAKEFILE_OLD) realclean' if -f '$(MAKEFILE_OLD)';" --
	- $(ABSPERLRUN)  -e "chdir 'propgrid';  system '$(MAKE) $(USEMAKEFILE) $(FIRST_MAKEFILE) realclean' if -f '$(FIRST_MAKEFILE)';" --
	- $(ABSPERLRUN)  -e "chdir 'xrc';  system '$(MAKE) $(USEMAKEFILE) $(MAKEFILE_OLD) realclean' if -f '$(MAKEFILE_OLD)';" --
	- $(ABSPERLRUN)  -e "chdir 'xrc';  system '$(MAKE) $(USEMAKEFILE) $(FIRST_MAKEFILE) realclean' if -f '$(FIRST_MAKEFILE)';" --
	- $(ABSPERLRUN)  -e "chdir 'dnd';  system '$(MAKE) $(USEMAKEFILE) $(MAKEFILE_OLD) realclean' if -f '$(MAKEFILE_OLD)';" --
	- $(ABSPERLRUN)  -e "chdir 'dnd';  system '$(MAKE) $(USEMAKEFILE) $(FIRST_MAKEFILE) realclean' if -f '$(FIRST_MAKEFILE)';" --
	- $(ABSPERLRUN)  -e "chdir 'test';  system '$(MAKE) $(USEMAKEFILE) $(MAKEFILE_OLD) realclean' if -f '$(MAKEFILE_OLD)';" --
	- $(ABSPERLRUN)  -e "chdir 'test';  system '$(MAKE) $(USEMAKEFILE) $(FIRST_MAKEFILE) realclean' if -f '$(FIRST_MAKEFILE)';" --
	- $(ABSPERLRUN)  -e "chdir 'webview';  system '$(MAKE) $(USEMAKEFILE) $(MAKEFILE_OLD) realclean' if -f '$(MAKEFILE_OLD)';" --
	- $(ABSPERLRUN)  -e "chdir 'webview';  system '$(MAKE) $(USEMAKEFILE) $(FIRST_MAKEFILE) realclean' if -f '$(FIRST_MAKEFILE)';" --
	- $(ABSPERLRUN)  -e "chdir 'grid';  system '$(MAKE) $(USEMAKEFILE) $(MAKEFILE_OLD) realclean' if -f '$(MAKEFILE_OLD)';" --
	- $(ABSPERLRUN)  -e "chdir 'grid';  system '$(MAKE) $(USEMAKEFILE) $(FIRST_MAKEFILE) realclean' if -f '$(FIRST_MAKEFILE)';" --
	- $(ABSPERLRUN)  -e "chdir 'filesys';  system '$(MAKE) $(USEMAKEFILE) $(MAKEFILE_OLD) realclean' if -f '$(MAKEFILE_OLD)';" --
	- $(ABSPERLRUN)  -e "chdir 'filesys';  system '$(MAKE) $(USEMAKEFILE) $(FIRST_MAKEFILE) realclean' if -f '$(FIRST_MAKEFILE)';" --
	- $(ABSPERLRUN)  -e "chdir 'richtext';  system '$(MAKE) $(USEMAKEFILE) $(MAKEFILE_OLD) realclean' if -f '$(MAKEFILE_OLD)';" --
	- $(ABSPERLRUN)  -e "chdir 'richtext';  system '$(MAKE) $(USEMAKEFILE) $(FIRST_MAKEFILE) realclean' if -f '$(FIRST_MAKEFILE)';" --
	- $(ABSPERLRUN)  -e "chdir 'calendar';  system '$(MAKE) $(USEMAKEFILE) $(MAKEFILE_OLD) realclean' if -f '$(MAKEFILE_OLD)';" --
	- $(ABSPERLRUN)  -e "chdir 'calendar';  system '$(MAKE) $(USEMAKEFILE) $(FIRST_MAKEFILE) realclean' if -f '$(FIRST_MAKEFILE)';" --
	- $(ABSPERLRUN)  -e "chdir 'html';  system '$(MAKE) $(USEMAKEFILE) $(MAKEFILE_OLD) realclean' if -f '$(MAKEFILE_OLD)';" --
	- $(ABSPERLRUN)  -e "chdir 'html';  system '$(MAKE) $(USEMAKEFILE) $(FIRST_MAKEFILE) realclean' if -f '$(FIRST_MAKEFILE)';" --
	- $(ABSPERLRUN)  -e "chdir 'help';  system '$(MAKE) $(USEMAKEFILE) $(MAKEFILE_OLD) realclean' if -f '$(MAKEFILE_OLD)';" --
	- $(ABSPERLRUN)  -e "chdir 'help';  system '$(MAKE) $(USEMAKEFILE) $(FIRST_MAKEFILE) realclean' if -f '$(FIRST_MAKEFILE)';" --
	- $(ABSPERLRUN)  -e "chdir 'stc';  system '$(MAKE) $(USEMAKEFILE) $(MAKEFILE_OLD) realclean' if -f '$(MAKEFILE_OLD)';" --
	- $(ABSPERLRUN)  -e "chdir 'stc';  system '$(MAKE) $(USEMAKEFILE) $(FIRST_MAKEFILE) realclean' if -f '$(FIRST_MAKEFILE)';" --
	- $(ABSPERLRUN)  -e "chdir 'mdi';  system '$(MAKE) $(USEMAKEFILE) $(MAKEFILE_OLD) realclean' if -f '$(MAKEFILE_OLD)';" --
	- $(ABSPERLRUN)  -e "chdir 'mdi';  system '$(MAKE) $(USEMAKEFILE) $(FIRST_MAKEFILE) realclean' if -f '$(FIRST_MAKEFILE)';" --
	- $(ABSPERLRUN)  -e "chdir 'ipc';  system '$(MAKE) $(USEMAKEFILE) $(MAKEFILE_OLD) realclean' if -f '$(MAKEFILE_OLD)';" --
	- $(ABSPERLRUN)  -e "chdir 'ipc';  system '$(MAKE) $(USEMAKEFILE) $(FIRST_MAKEFILE) realclean' if -f '$(FIRST_MAKEFILE)';" --
	- $(ABSPERLRUN)  -e "chdir 'dataview';  system '$(MAKE) $(USEMAKEFILE) $(MAKEFILE_OLD) realclean' if -f '$(MAKEFILE_OLD)';" --
	- $(ABSPERLRUN)  -e "chdir 'dataview';  system '$(MAKE) $(USEMAKEFILE) $(FIRST_MAKEFILE) realclean' if -f '$(FIRST_MAKEFILE)';" --
	- $(ABSPERLRUN)  -e "chdir 'socket';  system '$(MAKE) $(USEMAKEFILE) $(MAKEFILE_OLD) realclean' if -f '$(MAKEFILE_OLD)';" --
	- $(ABSPERLRUN)  -e "chdir 'socket';  system '$(MAKE) $(USEMAKEFILE) $(FIRST_MAKEFILE) realclean' if -f '$(FIRST_MAKEFILE)';" --
	- $(ABSPERLRUN)  -e "chdir 'pperl';  system '$(MAKE) $(USEMAKEFILE) $(MAKEFILE_OLD) realclean' if -f '$(MAKEFILE_OLD)';" --
	- $(ABSPERLRUN)  -e "chdir 'pperl';  system '$(MAKE) $(USEMAKEFILE) $(FIRST_MAKEFILE) realclean' if -f '$(FIRST_MAKEFILE)';" --


# --- MakeMaker realclean section:
# Delete temporary files (via clean) and also delete dist files
realclean purge ::  clean realclean_subdirs
	- $(RM_F) \
	  $(MAKEFILE_OLD) $(FIRST_MAKEFILE) 
	- $(RM_RF) \
	  $(DISTVNAME) 


# --- MakeMaker metafile section:


# --- MakeMaker signature section:
signature :
	cpansign -s


# --- MakeMaker dist_basics section skipped.

# --- MakeMaker dist_core section skipped.

# --- MakeMaker distdir section skipped.

# --- MakeMaker dist_test section skipped.

# --- MakeMaker dist_ci section skipped.

# --- MakeMaker distmeta section:
distmeta : create_distdir metafile
	$(NOECHO) cd $(DISTVNAME) && $(ABSPERLRUN) -MExtUtils::Manifest=maniadd -e "exit unless -e q{{META.yml}};\
eval {{ maniadd({{q{{META.yml}} => q{{Module YAML meta-data (added by MakeMaker)}}}}) }}\
    or print \"Could not add META.yml to MANIFEST: $$$${{'^@'}}\n\"" --
	$(NOECHO) cd $(DISTVNAME) && $(ABSPERLRUN) -MExtUtils::Manifest=maniadd -e "exit unless -f q{{META.json}};\
eval {{ maniadd({{q{{META.json}} => q{{Module JSON meta-data (added by MakeMaker)}}}}) }}\
    or print \"Could not add META.json to MANIFEST: $$$${{'^@'}}\n\"" --



# --- MakeMaker distsignature section:
distsignature : distmeta
	$(NOECHO) cd $(DISTVNAME) && $(ABSPERLRUN) -MExtUtils::Manifest=maniadd -e "eval {{ maniadd({{q{{SIGNATURE}} => q{{Public-key signature (added by MakeMaker)}}}}) }}\
    or print \"Could not add SIGNATURE to MANIFEST: $$$${{'^@'}}\n\"" --
	$(NOECHO) cd $(DISTVNAME) && $(TOUCH) SIGNATURE
	cd $(DISTVNAME) && cpansign -s



# --- MakeMaker install section skipped.

# --- MakeMaker force section:
# Phony target to force checking subdirectories.
FORCE :
	$(NOECHO) $(NOOP)


# --- MakeMaker perldepend section:


# --- MakeMaker makefile section:
# We take a very conservative approach here, but it's worth it.
# We move Makefile to Makefile.old here to avoid gnu make looping.
$(FIRST_MAKEFILE) : Makefile.PL $(CONFIGDEP)
	$(NOECHO) $(ECHO) "Makefile out-of-date with respect to $?"
	$(NOECHO) $(ECHO) "Cleaning current config before rebuilding Makefile..."
	-$(NOECHO) $(RM_F) $(MAKEFILE_OLD)
	-$(NOECHO) $(MV)   $(FIRST_MAKEFILE) $(MAKEFILE_OLD)
	- $(MAKE) $(USEMAKEFILE) $(MAKEFILE_OLD) clean $(DEV_NULL)
	$(PERLRUN) Makefile.PL 
	$(NOECHO) $(ECHO) "==> Your Makefile has been rebuilt. <=="
	$(NOECHO) $(ECHO) "==> Please rerun the $(MAKE) command.  <=="
	$(FALSE)



# --- MakeMaker staticmake section:

# --- MakeMaker makeaperl section ---
MAP_TARGET    = ..\perl
FULLPERL      = "C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\perl\bin\perl.exe"


# --- MakeMaker test section:

TEST_VERBOSE=0
TEST_TYPE=test_$(LINKTYPE)
TEST_FILE = test.pl
TEST_FILES = 
TESTDB_SW = -d

testdb :: testdb_$(LINKTYPE)

test :: $(TEST_TYPE) subdirs-test

subdirs-test ::
	$(NOECHO) $(NOOP)

subdirs-test ::
	$(NOECHO) cd print && $(MAKE) test $(PASTHRU)

subdirs-test ::
	$(NOECHO) cd datetime && $(MAKE) test $(PASTHRU)

subdirs-test ::
	$(NOECHO) cd ribbon && $(MAKE) test $(PASTHRU)

subdirs-test ::
	$(NOECHO) cd aui && $(MAKE) test $(PASTHRU)

subdirs-test ::
	$(NOECHO) cd docview && $(MAKE) test $(PASTHRU)

subdirs-test ::
	$(NOECHO) cd media && $(MAKE) test $(PASTHRU)

subdirs-test ::
	$(NOECHO) cd propgrid && $(MAKE) test $(PASTHRU)

subdirs-test ::
	$(NOECHO) cd xrc && $(MAKE) test $(PASTHRU)

subdirs-test ::
	$(NOECHO) cd dnd && $(MAKE) test $(PASTHRU)

subdirs-test ::
	$(NOECHO) cd test && $(MAKE) test $(PASTHRU)

subdirs-test ::
	$(NOECHO) cd webview && $(MAKE) test $(PASTHRU)

subdirs-test ::
	$(NOECHO) cd grid && $(MAKE) test $(PASTHRU)

subdirs-test ::
	$(NOECHO) cd filesys && $(MAKE) test $(PASTHRU)

subdirs-test ::
	$(NOECHO) cd richtext && $(MAKE) test $(PASTHRU)

subdirs-test ::
	$(NOECHO) cd calendar && $(MAKE) test $(PASTHRU)

subdirs-test ::
	$(NOECHO) cd html && $(MAKE) test $(PASTHRU)

subdirs-test ::
	$(NOECHO) cd help && $(MAKE) test $(PASTHRU)

subdirs-test ::
	$(NOECHO) cd stc && $(MAKE) test $(PASTHRU)

subdirs-test ::
	$(NOECHO) cd mdi && $(MAKE) test $(PASTHRU)

subdirs-test ::
	$(NOECHO) cd ipc && $(MAKE) test $(PASTHRU)

subdirs-test ::
	$(NOECHO) cd dataview && $(MAKE) test $(PASTHRU)

subdirs-test ::
	$(NOECHO) cd socket && $(MAKE) test $(PASTHRU)

subdirs-test ::
	$(NOECHO) cd pperl && $(MAKE) test $(PASTHRU)


test_dynamic :: pure_all

testdb_dynamic :: pure_all
	$(FULLPERLRUN) $(TESTDB_SW) "-I$(INST_LIB)" "-I$(INST_ARCHLIB)" $(TEST_FILE)

test_ : test_dynamic

test_static :: pure_all $(MAP_TARGET)

testdb_static :: pure_all $(MAP_TARGET)
	./$(MAP_TARGET) $(TESTDB_SW) "-I$(INST_LIB)" "-I$(INST_ARCHLIB)" $(TEST_FILE)



# --- MakeMaker ppd section:
# Creates a PPD (Perl Package Description) for a binary distribution.
ppd :
	$(NOECHO) $(ECHO) "<SOFTPKG NAME=\"$(DISTNAME)\" VERSION=\"$(VERSION)\">" > $(DISTNAME).ppd
	$(NOECHO) $(ECHO) "    <ABSTRACT></ABSTRACT>" >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) "    <AUTHOR></AUTHOR>" >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) "    <IMPLEMENTATION>" >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) "        <ARCHITECTURE NAME=\"MSWin32-x86-multi-thread-64int-5.20\" />" >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) "        <CODEBASE HREF=\"\" />" >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) "    </IMPLEMENTATION>" >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) ^</SOFTPKG^> >> $(DISTNAME).ppd


# --- MakeMaker pm_to_blib section:

pm_to_blib : $(FIRST_MAKEFILE) $(TO_INST_PM)
	$(NOECHO) $(TOUCH) pm_to_blib


# --- MakeMaker selfdocument section:


# --- MakeMaker postamble section:


# End.
