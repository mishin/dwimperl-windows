# This Makefile is for the Module::Install extension to perl.
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

#     ABSTRACT => q[Standalone, extensible Perl module installer]
#     AUTHOR => [q[Adam Kennedy <adamk@cpan.org>]]
#     BUILD_REQUIRES => { ExtUtils::MakeMaker=>q[6.59], Test::Harness=>q[3.13], Test::More=>q[0.86], YAML::Tiny=>q[1.33], autodie=>q[0] }
#     CONFIGURE_REQUIRES => {  }
#     DISTNAME => q[Module-Install]
#     INSTALLDIRS => q[site]
#     LICENSE => q[perl]
#     MIN_PERL_VERSION => q[5.006]
#     NAME => q[Module::Install]
#     NO_META => q[1]
#     PREREQ_PM => { Devel::PPPort=>q[3.16], ExtUtils::Install=>q[1.52], ExtUtils::MakeMaker=>q[6.59], ExtUtils::ParseXS=>q[2.19], File::Path=>q[0], File::Remove=>q[1.42], File::Spec=>q[3.28], Module::Build=>q[0.29], Module::CoreList=>q[2.17], Module::ScanDeps=>q[1.09], Parse::CPAN::Meta=>q[1.4413], Test::Harness=>q[3.13], Test::More=>q[0.86], Win32::UTCFileTime=>q[1.56], YAML::Tiny=>q[1.33], autodie=>q[0] }
#     TEST_REQUIRES => {  }
#     VERSION => q[1.16]
#     VERSION_FROM => q[lib/Module/Install.pm]
#     clean => { FILES=>q[t/Foo] }
#     dist => { PREOP=>q[$(PERL) -I. "-MModule::Install::Admin" -e "dist_preop(q($(DISTVNAME)))"] }
#     realclean => { FILES=>q[MYMETA.yml] }
#     test => { TESTS=>q[t/*.t t/recursive/*.t] }

# --- MakeMaker post_initialize section:


# --- MakeMaker const_config section:

# These definitions are from config.sh (via C:/Users/TOSH/Documents/GitHub/dwimperl-windows/strawberry-perl-5.20.0.1-32bit-portable/perl/lib/Config.pm).
# They may have been overridden via Makefile.PL or on the command line.
AR = ar
CC = gcc
CCCDLFLAGS =  
CCDLFLAGS =  
DLEXT = xs.dll
DLSRC = dl_win32.xs
EXE_EXT = .exe
FULL_AR = 
LD = g++.exe
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
NAME = Module::Install
NAME_SYM = Module_Install
VERSION = 1.16
VERSION_MACRO = VERSION
VERSION_SYM = 1_16
DEFINE_VERSION = -D$(VERSION_MACRO)=\"$(VERSION)\"
XS_VERSION = 1.16
XS_VERSION_MACRO = XS_VERSION
XS_DEFINE_VERSION = -D$(XS_VERSION_MACRO)=\"$(XS_VERSION)\"
INST_ARCHLIB = blib\arch
INST_SCRIPT = blib\script
INST_BIN = blib\bin
INST_LIB = blib\lib
INST_MAN1DIR = blib\man1
INST_MAN3DIR = blib\man3
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
PERL_LIB =
PERL_ARCHLIB = C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\perl\lib
PERL_ARCHLIBDEP = C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\perl\lib
LIBPERL_A = libperl.a
FIRST_MAKEFILE = Makefile
MAKEFILE_OLD = Makefile.old
MAKE_APERL_FILE = Makefile.aperl
PERLMAINCC = $(CC)
PERL_INC = C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\perl\lib\CORE
PERL_INCDEP = C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\perl\lib\CORE
PERL = "C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\perl\bin\perl.exe" "-Iinc"
FULLPERL = "C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\perl\bin\perl.exe" "-Iinc"
ABSPERL = $(PERL)
PERLRUN = $(PERL)
FULLPERLRUN = $(FULLPERL)
ABSPERLRUN = $(ABSPERL)
PERLRUNINST = $(PERLRUN) "-I$(INST_ARCHLIB)" "-Iinc" "-I$(INST_LIB)"
FULLPERLRUNINST = $(FULLPERLRUN) "-I$(INST_ARCHLIB)" "-Iinc" "-I$(INST_LIB)"
ABSPERLRUNINST = $(ABSPERLRUN) "-I$(INST_ARCHLIB)" "-Iinc" "-I$(INST_LIB)"
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
FULLEXT = Module\Install
BASEEXT = Install
PARENT_NAME = Module
DLBASE = $(BASEEXT)
VERSION_FROM = lib/Module/Install.pm
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
INST_LIBDIR      = $(INST_LIB)\Module
INST_ARCHLIBDIR  = $(INST_ARCHLIB)\Module

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


TO_INST_PM = lib/Module/AutoInstall.pm \
	lib/Module/Install.pm \
	lib/Module/Install.pod \
	lib/Module/Install/API.pod \
	lib/Module/Install/Admin.pm \
	lib/Module/Install/Admin/Bundle.pm \
	lib/Module/Install/Admin/Compiler.pm \
	lib/Module/Install/Admin/Find.pm \
	lib/Module/Install/Admin/Include.pm \
	lib/Module/Install/Admin/Makefile.pm \
	lib/Module/Install/Admin/Manifest.pm \
	lib/Module/Install/Admin/Metadata.pm \
	lib/Module/Install/Admin/ScanDeps.pm \
	lib/Module/Install/Admin/WriteAll.pm \
	lib/Module/Install/AutoInstall.pm \
	lib/Module/Install/Base.pm \
	lib/Module/Install/Bundle.pm \
	lib/Module/Install/Can.pm \
	lib/Module/Install/Compiler.pm \
	lib/Module/Install/DSL.pm \
	lib/Module/Install/Deprecated.pm \
	lib/Module/Install/External.pm \
	lib/Module/Install/FAQ.pod \
	lib/Module/Install/Fetch.pm \
	lib/Module/Install/Include.pm \
	lib/Module/Install/Inline.pm \
	lib/Module/Install/MakeMaker.pm \
	lib/Module/Install/Makefile.pm \
	lib/Module/Install/Metadata.pm \
	lib/Module/Install/PAR.pm \
	lib/Module/Install/Philosophy.pod \
	lib/Module/Install/Run.pm \
	lib/Module/Install/Scripts.pm \
	lib/Module/Install/Share.pm \
	lib/Module/Install/Win32.pm \
	lib/Module/Install/With.pm \
	lib/Module/Install/WriteAll.pm \
	lib/inc/Module/Install.pm \
	lib/inc/Module/Install/DSL.pm

PM_TO_BLIB = lib/Module/AutoInstall.pm \
	blib\lib\Module\AutoInstall.pm \
	lib/Module/Install.pm \
	blib\lib\Module\Install.pm \
	lib/Module/Install.pod \
	blib\lib\Module\Install.pod \
	lib/Module/Install/API.pod \
	blib\lib\Module\Install\API.pod \
	lib/Module/Install/Admin.pm \
	blib\lib\Module\Install\Admin.pm \
	lib/Module/Install/Admin/Bundle.pm \
	blib\lib\Module\Install\Admin\Bundle.pm \
	lib/Module/Install/Admin/Compiler.pm \
	blib\lib\Module\Install\Admin\Compiler.pm \
	lib/Module/Install/Admin/Find.pm \
	blib\lib\Module\Install\Admin\Find.pm \
	lib/Module/Install/Admin/Include.pm \
	blib\lib\Module\Install\Admin\Include.pm \
	lib/Module/Install/Admin/Makefile.pm \
	blib\lib\Module\Install\Admin\Makefile.pm \
	lib/Module/Install/Admin/Manifest.pm \
	blib\lib\Module\Install\Admin\Manifest.pm \
	lib/Module/Install/Admin/Metadata.pm \
	blib\lib\Module\Install\Admin\Metadata.pm \
	lib/Module/Install/Admin/ScanDeps.pm \
	blib\lib\Module\Install\Admin\ScanDeps.pm \
	lib/Module/Install/Admin/WriteAll.pm \
	blib\lib\Module\Install\Admin\WriteAll.pm \
	lib/Module/Install/AutoInstall.pm \
	blib\lib\Module\Install\AutoInstall.pm \
	lib/Module/Install/Base.pm \
	blib\lib\Module\Install\Base.pm \
	lib/Module/Install/Bundle.pm \
	blib\lib\Module\Install\Bundle.pm \
	lib/Module/Install/Can.pm \
	blib\lib\Module\Install\Can.pm \
	lib/Module/Install/Compiler.pm \
	blib\lib\Module\Install\Compiler.pm \
	lib/Module/Install/DSL.pm \
	blib\lib\Module\Install\DSL.pm \
	lib/Module/Install/Deprecated.pm \
	blib\lib\Module\Install\Deprecated.pm \
	lib/Module/Install/External.pm \
	blib\lib\Module\Install\External.pm \
	lib/Module/Install/FAQ.pod \
	blib\lib\Module\Install\FAQ.pod \
	lib/Module/Install/Fetch.pm \
	blib\lib\Module\Install\Fetch.pm \
	lib/Module/Install/Include.pm \
	blib\lib\Module\Install\Include.pm \
	lib/Module/Install/Inline.pm \
	blib\lib\Module\Install\Inline.pm \
	lib/Module/Install/MakeMaker.pm \
	blib\lib\Module\Install\MakeMaker.pm \
	lib/Module/Install/Makefile.pm \
	blib\lib\Module\Install\Makefile.pm \
	lib/Module/Install/Metadata.pm \
	blib\lib\Module\Install\Metadata.pm \
	lib/Module/Install/PAR.pm \
	blib\lib\Module\Install\PAR.pm \
	lib/Module/Install/Philosophy.pod \
	blib\lib\Module\Install\Philosophy.pod \
	lib/Module/Install/Run.pm \
	blib\lib\Module\Install\Run.pm \
	lib/Module/Install/Scripts.pm \
	blib\lib\Module\Install\Scripts.pm \
	lib/Module/Install/Share.pm \
	blib\lib\Module\Install\Share.pm \
	lib/Module/Install/Win32.pm \
	blib\lib\Module\Install\Win32.pm \
	lib/Module/Install/With.pm \
	blib\lib\Module\Install\With.pm \
	lib/Module/Install/WriteAll.pm \
	blib\lib\Module\Install\WriteAll.pm \
	lib/inc/Module/Install.pm \
	blib\lib\inc\Module\Install.pm \
	lib/inc/Module/Install/DSL.pm \
	blib\lib\inc\Module\Install\DSL.pm


# --- MakeMaker platform_constants section:
MM_Win32_VERSION = 7.10


# --- MakeMaker tool_autosplit section:
# Usage: $(AUTOSPLITFILE) FileToSplit AutoDirToSplitInto
AUTOSPLITFILE = $(ABSPERLRUN)  -e "use AutoSplit;  autosplit($$$$ARGV[0], $$$$ARGV[1], 0, 1, 1)" --



# --- MakeMaker tool_xsubpp section:


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


# --- MakeMaker dist section:
TAR = tar
TARFLAGS = cvf
ZIP = zip
ZIPFLAGS = -r
COMPRESS = gzip --best
SUFFIX = .gz
SHAR = shar
PREOP = $(PERL) -I. "-MModule::Install::Admin" -e "dist_preop(q($(DISTVNAME)))"
POSTOP = $(NOECHO) $(NOOP)
TO_UNIX = $(NOECHO) $(NOOP)
CI = ci -u
RCS_LABEL = rcs -Nv$(VERSION_SYM): -q
DIST_CP = best
DIST_DEFAULT = tardist
DISTNAME = Module-Install
DISTVNAME = Module-Install-1.16


# --- MakeMaker macro section:


# --- MakeMaker depend section:


# --- MakeMaker cflags section:


# --- MakeMaker const_loadlibs section:


# --- MakeMaker const_cccmd section:


# --- MakeMaker post_constants section:


# --- MakeMaker pasthru section:
PASTHRU = 

# --- MakeMaker special_targets section:
.SUFFIXES : .xs .c .C .cpp .i .s .cxx .cc $(OBJ_EXT)

.PHONY: all config static dynamic test linkext manifest blibdirs clean realclean disttest distdir

.USESHELL :


# --- MakeMaker c_o section:


# --- MakeMaker xs_c section:


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

Install.def: Makefile.PL
	$(PERLRUN) -MExtUtils::Mksymlists \
     -e "Mksymlists('NAME'=>\"Module::Install\", 'DLBASE' => '$(BASEEXT)', 'DL_FUNCS' => {  }, 'FUNCLIST' => [], 'IMPORTS' => {  }, 'DL_VARS' => []);"


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

# none

# --- MakeMaker clean_subdirs section:
clean_subdirs :
	$(NOECHO) $(NOOP)


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
	  blib dll.base \
	  dll.exp t/Foo 
	  $(NOECHO) $(RM_F) $(MAKEFILE_OLD)
	- $(MV) $(FIRST_MAKEFILE) $(MAKEFILE_OLD) $(DEV_NULL)


# --- MakeMaker realclean_subdirs section:
realclean_subdirs :
	$(NOECHO) $(NOOP)


# --- MakeMaker realclean section:
# Delete temporary files (via clean) and also delete dist files
realclean purge ::  clean realclean_subdirs
	- $(RM_F) \
	  $(FIRST_MAKEFILE) $(MAKEFILE_OLD) 
	- $(RM_RF) \
	  $(DISTVNAME) MYMETA.yml 


# --- MakeMaker metafile section:
metafile :
	$(NOECHO) $(NOOP)


# --- MakeMaker signature section:
signature :
	cpansign -s


# --- MakeMaker dist_basics section:
distclean :: realclean distcheck
	$(NOECHO) $(NOOP)

distcheck :
	$(PERLRUN) "-MExtUtils::Manifest=fullcheck" -e fullcheck

skipcheck :
	$(PERLRUN) "-MExtUtils::Manifest=skipcheck" -e skipcheck

manifest :
	$(PERLRUN) "-MExtUtils::Manifest=mkmanifest" -e mkmanifest

veryclean : realclean
	$(RM_F) *~ */*~ *.orig */*.orig *.bak */*.bak *.old */*.old



# --- MakeMaker dist_core section:

dist : $(DIST_DEFAULT) $(FIRST_MAKEFILE)
	$(NOECHO) $(ABSPERLRUN) -l -e "print 'Warning: Makefile possibly out of date with $(VERSION_FROM)'\
    if -e '$(VERSION_FROM)' and -M '$(VERSION_FROM)' < -M '$(FIRST_MAKEFILE)';" --

tardist : $(DISTVNAME).tar$(SUFFIX)
	$(NOECHO) $(NOOP)

uutardist : $(DISTVNAME).tar$(SUFFIX)
	uuencode $(DISTVNAME).tar$(SUFFIX) $(DISTVNAME).tar$(SUFFIX) > $(DISTVNAME).tar$(SUFFIX)_uu
	$(NOECHO) $(ECHO) 'Created $(DISTVNAME).tar$(SUFFIX)_uu'

$(DISTVNAME).tar$(SUFFIX) : distdir
	$(PREOP)
	$(TO_UNIX)
	$(TAR) $(TARFLAGS) $(DISTVNAME).tar $(DISTVNAME)
	$(RM_RF) $(DISTVNAME)
	$(COMPRESS) $(DISTVNAME).tar
	$(NOECHO) $(ECHO) 'Created $(DISTVNAME).tar$(SUFFIX)'
	$(POSTOP)

zipdist : $(DISTVNAME).zip
	$(NOECHO) $(NOOP)

$(DISTVNAME).zip : distdir
	$(PREOP)
	$(ZIP) $(ZIPFLAGS) $(DISTVNAME).zip $(DISTVNAME)
	$(RM_RF) $(DISTVNAME)
	$(NOECHO) $(ECHO) 'Created $(DISTVNAME).zip'
	$(POSTOP)

shdist : distdir
	$(PREOP)
	$(SHAR) $(DISTVNAME) > $(DISTVNAME).shar
	$(RM_RF) $(DISTVNAME)
	$(NOECHO) $(ECHO) 'Created $(DISTVNAME).shar'
	$(POSTOP)


# --- MakeMaker distdir section:
create_distdir :
	$(RM_RF) $(DISTVNAME)
	$(PERLRUN) "-MExtUtils::Manifest=manicopy,maniread" \
		-e "manicopy(maniread(),'$(DISTVNAME)', '$(DIST_CP)');"

distdir : create_distdir  
	$(NOECHO) $(NOOP)



# --- MakeMaker dist_test section:
disttest : distdir
	cd $(DISTVNAME) && $(ABSPERLRUN) Makefile.PL 
	cd $(DISTVNAME) && $(MAKE) $(PASTHRU)
	cd $(DISTVNAME) && $(MAKE) test $(PASTHRU)



# --- MakeMaker dist_ci section:
ci :
	$(ABSPERLRUN) -MExtUtils::Manifest=maniread -e "@all = sort keys %{{ maniread() }};\
print(qq{{Executing $(CI) @all\n}});\
system(qq{{$(CI) @all}}) == 0 or die $$!;\
print(qq{{Executing $(RCS_LABEL) ...\n}});\
system(qq{{$(RCS_LABEL) @all}}) == 0 or die $$!;" --


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



# --- MakeMaker install section:

install :: pure_install doc_install
	$(NOECHO) $(NOOP)

install_perl :: pure_perl_install doc_perl_install
	$(NOECHO) $(NOOP)

install_site :: pure_site_install doc_site_install
	$(NOECHO) $(NOOP)

install_vendor :: pure_vendor_install doc_vendor_install
	$(NOECHO) $(NOOP)

pure_install :: pure_$(INSTALLDIRS)_install
	$(NOECHO) $(NOOP)

doc_install :: doc_$(INSTALLDIRS)_install
	$(NOECHO) $(NOOP)

pure__install : pure_site_install
	$(NOECHO) $(ECHO) INSTALLDIRS not defined, defaulting to INSTALLDIRS=site

doc__install : doc_site_install
	$(NOECHO) $(ECHO) INSTALLDIRS not defined, defaulting to INSTALLDIRS=site

pure_perl_install :: all
	$(NOECHO) $(MOD_INSTALL) \
		read "$(PERL_ARCHLIB)\auto\$(FULLEXT)\.packlist" \
		write "$(DESTINSTALLARCHLIB)\auto\$(FULLEXT)\.packlist" \
		"$(INST_LIB)" "$(DESTINSTALLPRIVLIB)" \
		"$(INST_ARCHLIB)" "$(DESTINSTALLARCHLIB)" \
		"$(INST_BIN)" "$(DESTINSTALLBIN)" \
		"$(INST_SCRIPT)" "$(DESTINSTALLSCRIPT)" \
		"$(INST_MAN1DIR)" "$(DESTINSTALLMAN1DIR)" \
		"$(INST_MAN3DIR)" "$(DESTINSTALLMAN3DIR)"
	$(NOECHO) $(WARN_IF_OLD_PACKLIST) \
		"$(SITEARCHEXP)\auto\$(FULLEXT)"


pure_site_install :: all
	$(NOECHO) $(MOD_INSTALL) \
		read "$(SITEARCHEXP)\auto\$(FULLEXT)\.packlist" \
		write "$(DESTINSTALLSITEARCH)\auto\$(FULLEXT)\.packlist" \
		"$(INST_LIB)" "$(DESTINSTALLSITELIB)" \
		"$(INST_ARCHLIB)" "$(DESTINSTALLSITEARCH)" \
		"$(INST_BIN)" "$(DESTINSTALLSITEBIN)" \
		"$(INST_SCRIPT)" "$(DESTINSTALLSITESCRIPT)" \
		"$(INST_MAN1DIR)" "$(DESTINSTALLSITEMAN1DIR)" \
		"$(INST_MAN3DIR)" "$(DESTINSTALLSITEMAN3DIR)"
	$(NOECHO) $(WARN_IF_OLD_PACKLIST) \
		"$(PERL_ARCHLIB)\auto\$(FULLEXT)"

pure_vendor_install :: all
	$(NOECHO) $(MOD_INSTALL) \
		read "$(VENDORARCHEXP)\auto\$(FULLEXT)\.packlist" \
		write "$(DESTINSTALLVENDORARCH)\auto\$(FULLEXT)\.packlist" \
		"$(INST_LIB)" "$(DESTINSTALLVENDORLIB)" \
		"$(INST_ARCHLIB)" "$(DESTINSTALLVENDORARCH)" \
		"$(INST_BIN)" "$(DESTINSTALLVENDORBIN)" \
		"$(INST_SCRIPT)" "$(DESTINSTALLVENDORSCRIPT)" \
		"$(INST_MAN1DIR)" "$(DESTINSTALLVENDORMAN1DIR)" \
		"$(INST_MAN3DIR)" "$(DESTINSTALLVENDORMAN3DIR)"


doc_perl_install :: all
	$(NOECHO) $(ECHO) Appending installation info to "$(DESTINSTALLARCHLIB)/perllocal.pod"
	-$(NOECHO) $(MKPATH) "$(DESTINSTALLARCHLIB)"
	-$(NOECHO) $(DOC_INSTALL) \
		"Module" "$(NAME)" \
		"installed into" $(INSTALLPRIVLIB) \
		LINKTYPE "$(LINKTYPE)" \
		VERSION "$(VERSION)" \
		EXE_FILES "$(EXE_FILES)" \
		>> "$(DESTINSTALLARCHLIB)\perllocal.pod"

doc_site_install :: all
	$(NOECHO) $(ECHO) Appending installation info to "$(DESTINSTALLARCHLIB)/perllocal.pod"
	-$(NOECHO) $(MKPATH) "$(DESTINSTALLARCHLIB)"
	-$(NOECHO) $(DOC_INSTALL) \
		"Module" "$(NAME)" \
		"installed into" $(INSTALLSITELIB) \
		LINKTYPE "$(LINKTYPE)" \
		VERSION "$(VERSION)" \
		EXE_FILES "$(EXE_FILES)" \
		>> "$(DESTINSTALLARCHLIB)\perllocal.pod"

doc_vendor_install :: all
	$(NOECHO) $(ECHO) Appending installation info to "$(DESTINSTALLARCHLIB)/perllocal.pod"
	-$(NOECHO) $(MKPATH) "$(DESTINSTALLARCHLIB)"
	-$(NOECHO) $(DOC_INSTALL) \
		"Module" "$(NAME)" \
		"installed into" $(INSTALLVENDORLIB) \
		LINKTYPE "$(LINKTYPE)" \
		VERSION "$(VERSION)" \
		EXE_FILES "$(EXE_FILES)" \
		>> "$(DESTINSTALLARCHLIB)\perllocal.pod"


uninstall :: uninstall_from_$(INSTALLDIRS)dirs
	$(NOECHO) $(NOOP)

uninstall_from_perldirs ::
	$(NOECHO) $(UNINSTALL) "$(PERL_ARCHLIB)\auto\$(FULLEXT)\.packlist"

uninstall_from_sitedirs ::
	$(NOECHO) $(UNINSTALL) "$(SITEARCHEXP)\auto\$(FULLEXT)\.packlist"

uninstall_from_vendordirs ::
	$(NOECHO) $(UNINSTALL) "$(VENDORARCHEXP)\auto\$(FULLEXT)\.packlist"


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
MAP_TARGET    = perl
FULLPERL      = "C:\Users\TOSH\Documents\GitHub\dwimperl-windows\strawberry-perl-5.20.0.1-32bit-portable\perl\bin\perl.exe"

$(MAP_TARGET) :: static $(MAKE_APERL_FILE)
	$(MAKE) $(USEMAKEFILE) $(MAKE_APERL_FILE) $@

$(MAKE_APERL_FILE) : $(FIRST_MAKEFILE) pm_to_blib
	$(NOECHO) $(ECHO) Writing \"$(MAKE_APERL_FILE)\" for this $(MAP_TARGET)
	$(NOECHO) $(PERLRUNINST) \
		Makefile.PL DIR="" \
		MAKEFILE=$(MAKE_APERL_FILE) LINKTYPE=static \
		MAKEAPERL=1 NORECURS=1 CCCDLFLAGS=


# --- MakeMaker test section:

TEST_VERBOSE=0
TEST_TYPE=test_$(LINKTYPE)
TEST_FILE = test.pl
TEST_FILES = t/*.t t/recursive/*.t
TESTDB_SW = -d

testdb :: testdb_$(LINKTYPE)

test :: $(TEST_TYPE) subdirs-test

subdirs-test ::
	$(NOECHO) $(NOOP)


test_dynamic :: pure_all
	$(FULLPERLRUN) "-MExtUtils::Command::MM" "-MTest::Harness" "-e" "undef *Test::Harness::Switches; test_harness($(TEST_VERBOSE), 'inc', '$(INST_LIB)', '$(INST_ARCHLIB)')" $(TEST_FILES)

testdb_dynamic :: pure_all
	$(FULLPERLRUN) $(TESTDB_SW) "-Iinc" "-I$(INST_LIB)" "-I$(INST_ARCHLIB)" $(TEST_FILE)

test_ : test_dynamic

test_static :: test_dynamic
testdb_static :: testdb_dynamic


# --- MakeMaker ppd section:
# Creates a PPD (Perl Package Description) for a binary distribution.
ppd :
	$(NOECHO) $(ECHO) "<SOFTPKG NAME=\"$(DISTNAME)\" VERSION=\"$(VERSION)\">" > $(DISTNAME).ppd
	$(NOECHO) $(ECHO) "    <ABSTRACT>Standalone, extensible Perl module installer</ABSTRACT>" >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) "    <AUTHOR>Adam Kennedy &lt;adamk@cpan.org&gt;</AUTHOR>" >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) "    <IMPLEMENTATION>" >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) "        <PERLCORE VERSION=\"5,006,0,0\" />" >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) "        <REQUIRE NAME=\"Devel::PPPort\" VERSION=\"3.16\" />" >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) "        <REQUIRE NAME=\"ExtUtils::Install\" VERSION=\"1.52\" />" >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) "        <REQUIRE NAME=\"ExtUtils::MakeMaker\" VERSION=\"6.59\" />" >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) "        <REQUIRE NAME=\"ExtUtils::ParseXS\" VERSION=\"2.19\" />" >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) "        <REQUIRE NAME=\"File::Path\" />" >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) "        <REQUIRE NAME=\"File::Remove\" VERSION=\"1.42\" />" >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) "        <REQUIRE NAME=\"File::Spec\" VERSION=\"3.28\" />" >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) "        <REQUIRE NAME=\"Module::Build\" VERSION=\"0.29\" />" >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) "        <REQUIRE NAME=\"Module::CoreList\" VERSION=\"2.17\" />" >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) "        <REQUIRE NAME=\"Module::ScanDeps\" VERSION=\"1.09\" />" >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) "        <REQUIRE NAME=\"Parse::CPAN::Meta\" VERSION=\"1.4413\" />" >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) "        <REQUIRE NAME=\"Win32::UTCFileTime\" VERSION=\"1.56\" />" >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) "        <REQUIRE NAME=\"YAML::Tiny\" VERSION=\"1.38\" />" >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) "        <ARCHITECTURE NAME=\"MSWin32-x86-multi-thread-64int-5.20\" />" >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) "        <CODEBASE HREF=\"\" />" >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) "    </IMPLEMENTATION>" >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) ^</SOFTPKG^> >> $(DISTNAME).ppd


# --- MakeMaker pm_to_blib section:

pm_to_blib : $(FIRST_MAKEFILE) $(TO_INST_PM)
	$(NOECHO) $(ABSPERLRUN) -MExtUtils::Install -e "pm_to_blib({{@ARGV}}, '$(INST_LIB)\auto', q[$(PM_FILTER)], '$(PERM_DIR)')" -- \
	  lib/Module/AutoInstall.pm blib\lib\Module\AutoInstall.pm \
	  lib/Module/Install.pm blib\lib\Module\Install.pm \
	  lib/Module/Install.pod blib\lib\Module\Install.pod \
	  lib/Module/Install/API.pod blib\lib\Module\Install\API.pod \
	  lib/Module/Install/Admin.pm blib\lib\Module\Install\Admin.pm \
	  lib/Module/Install/Admin/Bundle.pm blib\lib\Module\Install\Admin\Bundle.pm \
	  lib/Module/Install/Admin/Compiler.pm blib\lib\Module\Install\Admin\Compiler.pm \
	  lib/Module/Install/Admin/Find.pm blib\lib\Module\Install\Admin\Find.pm \
	  lib/Module/Install/Admin/Include.pm blib\lib\Module\Install\Admin\Include.pm \
	  lib/Module/Install/Admin/Makefile.pm blib\lib\Module\Install\Admin\Makefile.pm \
	  lib/Module/Install/Admin/Manifest.pm blib\lib\Module\Install\Admin\Manifest.pm \
	  lib/Module/Install/Admin/Metadata.pm blib\lib\Module\Install\Admin\Metadata.pm \
	  lib/Module/Install/Admin/ScanDeps.pm blib\lib\Module\Install\Admin\ScanDeps.pm \
	  lib/Module/Install/Admin/WriteAll.pm blib\lib\Module\Install\Admin\WriteAll.pm \
	  lib/Module/Install/AutoInstall.pm blib\lib\Module\Install\AutoInstall.pm \
	  lib/Module/Install/Base.pm blib\lib\Module\Install\Base.pm \
	  lib/Module/Install/Bundle.pm blib\lib\Module\Install\Bundle.pm \
	  lib/Module/Install/Can.pm blib\lib\Module\Install\Can.pm 
	$(NOECHO) $(ABSPERLRUN) -MExtUtils::Install -e "pm_to_blib({{@ARGV}}, '$(INST_LIB)\auto', q[$(PM_FILTER)], '$(PERM_DIR)')" -- \
	  lib/Module/Install/Compiler.pm blib\lib\Module\Install\Compiler.pm \
	  lib/Module/Install/DSL.pm blib\lib\Module\Install\DSL.pm \
	  lib/Module/Install/Deprecated.pm blib\lib\Module\Install\Deprecated.pm \
	  lib/Module/Install/External.pm blib\lib\Module\Install\External.pm \
	  lib/Module/Install/FAQ.pod blib\lib\Module\Install\FAQ.pod \
	  lib/Module/Install/Fetch.pm blib\lib\Module\Install\Fetch.pm \
	  lib/Module/Install/Include.pm blib\lib\Module\Install\Include.pm \
	  lib/Module/Install/Inline.pm blib\lib\Module\Install\Inline.pm \
	  lib/Module/Install/MakeMaker.pm blib\lib\Module\Install\MakeMaker.pm \
	  lib/Module/Install/Makefile.pm blib\lib\Module\Install\Makefile.pm \
	  lib/Module/Install/Metadata.pm blib\lib\Module\Install\Metadata.pm \
	  lib/Module/Install/PAR.pm blib\lib\Module\Install\PAR.pm \
	  lib/Module/Install/Philosophy.pod blib\lib\Module\Install\Philosophy.pod \
	  lib/Module/Install/Run.pm blib\lib\Module\Install\Run.pm \
	  lib/Module/Install/Scripts.pm blib\lib\Module\Install\Scripts.pm \
	  lib/Module/Install/Share.pm blib\lib\Module\Install\Share.pm \
	  lib/Module/Install/Win32.pm blib\lib\Module\Install\Win32.pm \
	  lib/Module/Install/With.pm blib\lib\Module\Install\With.pm \
	  lib/Module/Install/WriteAll.pm blib\lib\Module\Install\WriteAll.pm 
	$(NOECHO) $(ABSPERLRUN) -MExtUtils::Install -e "pm_to_blib({{@ARGV}}, '$(INST_LIB)\auto', q[$(PM_FILTER)], '$(PERM_DIR)')" -- \
	  lib/inc/Module/Install.pm blib\lib\inc\Module\Install.pm \
	  lib/inc/Module/Install/DSL.pm blib\lib\inc\Module\Install\DSL.pm 
	$(NOECHO) $(TOUCH) pm_to_blib


# --- MakeMaker selfdocument section:


# --- MakeMaker postamble section:


# End.
# Postamble by Module::Install 1.16
# --- Module::Install::Admin::Makefile section:

realclean purge ::
	$(RM_F) $(DISTVNAME).tar$(SUFFIX)
	$(RM_F) MANIFEST.bak _build
	$(PERL) "-Ilib" "-MModule::Install::Admin" -e "remove_meta()"
	$(RM_RF) inc

reset :: purge

upload :: test dist
	cpan-upload -verbose $(DISTVNAME).tar$(SUFFIX)

grok ::
	perldoc Module::Install

distsign ::
	cpansign -s

