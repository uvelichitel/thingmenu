# thingmenu metadata
NAME = thingmenu
VERSION = 0.7

# Customize below to fit your system

# paths
PREFIX ?= /usr/home/uvelichitel/.local
MANPREFIX = ${PREFIX}/share/man

X11INC = /usr/local/include/X11
X11LIB = /usr/local/lib/x11

# includes and libs
INCS = -I. -I/usr/include -I/usr/local/include
LIBS = -L/usr/lib -L${X11LIB} -lc -lX11 -L/usr/local/lib

# flags
CPPFLAGS = -DVERSION=\"${VERSION}\" -D_POSIX_C_SOURCE=200809L
CFLAGS = -g -std=c99 -pedantic -Wall ${INCS} ${CPPFLAGS}
LDFLAGS = -g ${LIBS}
#LDFLAGS = -s ${LIBS}

# compiler and linker
CC = gcc9

