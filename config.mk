# project metadata
NAME = dwm
VERSION = 6.0.1zpln
DIST = ${NAME}-${VERSION}

# optional xinerama support (comment to disable)
XINERAMAFLAGS = -DXINERAMA
XINERAMALIBS = -lXinerama

# optional per window keyboard layout support (comment to disable)
PWKL = -DPWKL

# optional windows title support (comment to disable)
WINTITLE = -DWINTITLE

# paths
PREFIX = /usr/local
MANPREFIX = ${PREFIX}/share/man

# DragonFlyBSD, FreeBSD (uncomment to enable)
#X11INC = /usr/local/include
#X11LIB = /usr/local/lib
#FT2INC = /usr/local/include/freetype2

# NetBSD, OpenBSD (uncomment to enable)
#X11INC = /usr/X11R6/include
#X11LIB = /usr/X11R6/lib

# Linux (comment to disable)
X11INC = /usr/include
X11LIB = /usr/lib
FT2INC = /usr/include/freetype2

FT2LIB = -lfontconfig -lXft

# includes and libs
INCS = -I${X11INC} -I${FT2INC}
LIBS = -L${X11LIB} -lX11 ${FT2LIB} ${XINERAMALIBS}

# flags
CPPFLAGS = -D_DEFAULT_SOURCE -D_BSD_SOURCE -D_POSIX_C_SOURCE=200809L \
	   -DNAME=\"${NAME}\" -DVERSION=\"${VERSION}\" ${INCS} \
	   ${XINERAMAFLAGS} ${PWKL} ${WINTITLE}
CFLAGS   = -std=c99 -pedantic -Wall -Wextra -Wformat
LDFLAGS  = ${LIBS}

# compiler and linker
CC = cc
LD = ${CC}
