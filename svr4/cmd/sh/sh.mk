#	Copyright (c) 1990 UNIX System Laboratories, Inc.
#	Copyright (c) 1984, 1986, 1987, 1988, 1989, 1990 AT&T
#	  All Rights Reserved

#	THIS IS UNPUBLISHED PROPRIETARY SOURCE CODE OF
#	UNIX System Laboratories, Inc.
#	The copyright notice above does not evidence any
#	actual or intended publication of such source code.



#ident	"@(#)sh:sh.mk	1.18.11.1"

#	Makefile for sh

ROOT =

DIR = $(ROOT)/sbin

INS = install

INC = $(ROOT)/usr/include
INCSYS = $(ROOT)/usr/include

LDFLAGS = -s -lgen -lw

DFLGS = -DVPIX

CFLAGS = -O -I$(INC) -I$(INCSYS) $(DFLGS) -DACCT

STRIP = strip

SIZE = size

#top#
# Generated by makefile 1.18.5.1

MAKEFILE = sh.mk


MAINS = sh

OBJECTS =  args.o blok.o cmd.o ctype.o defs.o echo.o error.o expand.o \
	fault.o func.o hash.o hashserv.o io.o macro.o main.o main2.o msg.o \
	name.o print.o pwd.o service.o setbrk.o stak.o string.o test.o \
	word.o xec.o bltin.o jobs.o ulimit.o

SOURCES =  args.c blok.c cmd.c ctype.c defs.c echo.c error.c expand.c \
	fault.c func.c hash.c hashserv.c io.c macro.c main.c msg.c name.c \
	print.c pwd.c service.c setbrk.c stak.c string.c test.c word.c xec.c \
	bltin.c jobs.c ulimit.c

ALL:		$(MAINS)

sh:		main.o args.o blok.o cmd.o defs.o error.o fault.o hash.o \
		hashserv.o io.o	msg.o name.o print.o service.o stak.o \
		string.o word.o	xec.o ctype.o echo.o expand.o func.o \
		macro.o	pwd.o setbrk.o test.o jobs.o bltin.o ulimit.o
	$(CC) -o sh  main.o args.o blok.o cmd.o defs.o error.o \
	fault.o hash.o hashserv.o io.o msg.o name.o print.o service.o stak.o \
	string.o word.o xec.o ctype.o echo.o expand.o func.o macro.o pwd.o \
	setbrk.o test.o bltin.o jobs.o ulimit.o $(LDFLAGS) $(ROOTLIBS)


args.o:		 $(INC)/ctype.h $(INC)/locale.h \
		 $(INC)/setjmp.h $(INC)/signal.h \
		 $(INC)/stdlib.h $(INCSYS)/sys/signal.h brkincr.h \
		 ctype.h defs.h	mac.h mode.h name.h stak.h 


blok.o:		 $(INC)/ctype.h $(INC)/locale.h \
		 $(INC)/setjmp.h $(INC)/signal.h \
		 $(INC)/stdlib.h $(INCSYS)/sys/signal.h brkincr.h \
		 ctype.h defs.h	mac.h mode.h name.h stak.h 


cmd.o:		 $(INC)/ctype.h $(INC)/locale.h \
		 $(INC)/setjmp.h $(INC)/signal.h \
		 $(INC)/stdlib.h $(INCSYS)/sys/signal.h brkincr.h \
		 ctype.h defs.h	mac.h mode.h name.h stak.h sym.h 


ctype.o:	 $(INC)/ctype.h $(INC)/locale.h \
		 $(INC)/setjmp.h $(INC)/signal.h \
		 $(INC)/stdlib.h $(INCSYS)/sys/signal.h brkincr.h \
		 ctype.h defs.h	mac.h mode.h name.h stak.h 


defs.o:		 $(INC)/setjmp.h $(INCSYS)/sys/fs/s5param.h \
		 $(INCSYS)/sys/param.h mode.h name.h	


echo.o:		 $(INC)/ctype.h $(INC)/locale.h \
		 $(INC)/setjmp.h $(INC)/signal.h \
		 $(INC)/stdlib.h $(INCSYS)/sys/signal.h brkincr.h \
		 ctype.h defs.h	mac.h mode.h name.h stak.h 


error.o:	 $(INC)/ctype.h $(INC)/locale.h \
		 $(INC)/setjmp.h $(INC)/signal.h \
		 $(INC)/stdlib.h $(INCSYS)/sys/signal.h brkincr.h \
		 ctype.h defs.h	mac.h mode.h name.h stak.h 


expand.o:	 $(INC)/ctype.h $(INC)/dirent.h \
		 $(INC)/locale.h $(INC)/setjmp.h \
		 $(INC)/signal.h $(INC)/stdlib.h \
		 $(INCSYS)/sys/dirent.h $(INCSYS)/sys/signal.h \
		 $(INCSYS)/sys/stat.h $(INCSYS)/sys/types.h brkincr.h \
		 ctype.h defs.h	mac.h mode.h name.h stak.h 


fault.o:	 $(INC)/ctype.h $(INC)/locale.h \
		 $(INC)/setjmp.h $(INC)/signal.h \
		 $(INC)/stdlib.h $(INCSYS)/sys/signal.h brkincr.h \
		 ctype.h defs.h	mac.h mode.h name.h stak.h 


func.o:		 $(INC)/ctype.h $(INC)/locale.h \
		 $(INC)/setjmp.h $(INC)/signal.h \
		 $(INC)/stdlib.h $(INCSYS)/sys/signal.h brkincr.h \
		 ctype.h defs.h	mac.h mode.h name.h stak.h 


hash.o:		 $(INC)/ctype.h $(INC)/locale.h \
		 $(INC)/setjmp.h $(INC)/signal.h \
		 $(INC)/stdlib.h $(INCSYS)/sys/signal.h brkincr.h \
		 ctype.h defs.h	hash.h mac.h mode.h name.h stak.h 


hashserv.o:	 $(INC)/ctype.h $(INC)/errno.h \
		 $(INC)/locale.h $(INC)/setjmp.h \
		 $(INC)/signal.h $(INC)/stdlib.h \
		 $(INCSYS)/sys/errno.h $(INCSYS)/sys/signal.h \
		 $(INCSYS)/sys/stat.h $(INCSYS)/sys/types.h brkincr.h \
		 ctype.h defs.h	hash.h mac.h mode.h name.h stak.h 


io.o:		 $(INC)/ctype.h $(INC)/fcntl.h \
		 $(INC)/locale.h $(INC)/setjmp.h \
		 $(INC)/signal.h $(INC)/stdlib.h \
		 $(INCSYS)/sys/fcntl.h $(INCSYS)/sys/signal.h \
		 brkincr.h ctype.h defs.h dup.h	mac.h mode.h name.h stak.h 


macro.o:	 $(INC)/ctype.h $(INC)/locale.h \
		 $(INC)/setjmp.h $(INC)/signal.h \
		 $(INC)/stdlib.h $(INCSYS)/sys/signal.h brkincr.h \
		 ctype.h defs.h	mac.h mode.h name.h stak.h sym.h 


main.o:		 $(INC)/ctype.h $(INC)/locale.h \
		 $(INC)/setjmp.h $(INC)/signal.h \
		 $(INC)/stdlib.h $(INCSYS)/sys/signal.h \
		 $(INCSYS)/sys/stat.h $(INCSYS)/sys/types.h brkincr.h \
		 ctype.h defs.h	dup.h mac.h mode.h name.h stak.h sym.h \
		 timeout.h 


msg.o:		 $(INC)/ctype.h $(INC)/locale.h \
		 $(INC)/setjmp.h $(INC)/signal.h \
		 $(INC)/stdlib.h $(INCSYS)/sys/signal.h brkincr.h \
		 ctype.h defs.h	mac.h mode.h name.h stak.h sym.h 


name.o:		 $(INC)/ctype.h $(INC)/locale.h \
		 $(INC)/setjmp.h $(INC)/signal.h \
		 $(INC)/stdlib.h $(INCSYS)/sys/signal.h brkincr.h \
		 ctype.h defs.h	mac.h mode.h name.h stak.h 


print.o:	 $(INC)/ctype.h $(INC)/locale.h \
		 $(INC)/setjmp.h $(INC)/signal.h \
		 $(INC)/stdlib.h $(INCSYS)/sys/fs/s5param.h \
		 $(INCSYS)/sys/param.h $(INCSYS)/sys/signal.h \
		 brkincr.h ctype.h defs.h mac.h	mode.h name.h stak.h 


pwd.o:		 $(INC)/dirent.h $(INCSYS)/sys/dirent.h \
		 $(INCSYS)/sys/stat.h $(INCSYS)/sys/types.h mac.h	


service.o:	 $(INC)/ctype.h $(INC)/errno.h \
		 $(INC)/fcntl.h $(INC)/locale.h \
		 $(INC)/setjmp.h $(INC)/signal.h \
		 $(INC)/stdlib.h $(INCSYS)/sys/acct.h \
		 $(INCSYS)/sys/errno.h $(INCSYS)/sys/fcntl.h \
		 $(INCSYS)/sys/signal.h $(INCSYS)/sys/times.h \
		 $(INCSYS)/sys/types.h brkincr.h ctype.h defs.h \
		 mac.h mode.h name.h stak.h 
		 $(CC) $(CFLAGS) -I$(ROOT)/usr/src/cmd/acct -c service.c


setbrk.o:	 $(INC)/ctype.h $(INC)/locale.h \
		 $(INC)/setjmp.h $(INC)/signal.h \
		 $(INC)/stdlib.h $(INCSYS)/sys/signal.h brkincr.h \
		 ctype.h defs.h	mac.h mode.h name.h stak.h 


stak.o:		 $(INC)/ctype.h $(INC)/locale.h \
		 $(INC)/setjmp.h $(INC)/signal.h \
		 $(INC)/stdlib.h $(INCSYS)/sys/signal.h brkincr.h \
		 ctype.h defs.h	mac.h mode.h name.h stak.h 


string.o:	 $(INC)/ctype.h $(INC)/locale.h \
		 $(INC)/setjmp.h $(INC)/signal.h \
		 $(INC)/stdlib.h $(INCSYS)/sys/signal.h brkincr.h \
		 ctype.h defs.h	mac.h mode.h name.h stak.h 


test.o:		 $(INC)/ctype.h $(INC)/locale.h \
		 $(INC)/setjmp.h $(INC)/signal.h \
		 $(INC)/stdlib.h $(INCSYS)/sys/signal.h \
		 $(INCSYS)/sys/stat.h $(INCSYS)/sys/types.h brkincr.h \
		 ctype.h defs.h	mac.h mode.h name.h stak.h 

ulimit.o:	$(INC)/stdlib.h $(INCSYS)/sys/resource.h defs.h

word.o:		 $(INC)/ctype.h $(INC)/locale.h \
		 $(INC)/setjmp.h $(INC)/signal.h \
		 $(INC)/stdlib.h $(INCSYS)/sys/signal.h brkincr.h \
		 ctype.h defs.h	mac.h mode.h name.h stak.h sym.h 


xec.o:		 $(INC)/ctype.h $(INC)/errno.h \
		 $(INC)/locale.h $(INC)/setjmp.h \
		 $(INC)/signal.h $(INC)/stdlib.h \
		 $(INCSYS)/sys/errno.h $(INCSYS)/sys/signal.h \
		 $(INCSYS)/sys/times.h $(INCSYS)/sys/types.h brkincr.h \
		 ctype.h defs.h	hash.h mac.h mode.h name.h stak.h sym.h	

GLOBALINCS = $(INC)/ctype.h $(INC)/dirent.h $(INC)/errno.h \
	$(INC)/fcntl.h $(INC)/locale.h $(INC)/setjmp.h \
	$(INC)/signal.h $(INC)/stdlib.h $(INCSYS)/sys/acct.h \
	$(INCSYS)/sys/dirent.h $(INCSYS)/sys/errno.h \
	$(INCSYS)/sys/fcntl.h $(INCSYS)/sys/fs/s5param.h \
	$(INCSYS)/sys/param.h $(INCSYS)/sys/signal.h \
	$(INCSYS)/sys/stat.h $(INCSYS)/sys/times.h \
	$(INCSYS)/sys/types.h 

LOCALINCS = acctdef.h brkincr.h ctype.h defs.h dup.h hash.h mac.h mode.h \
	name.h stak.h sym.h timeout.h 

clean:
	rm -f $(OBJECTS)

clobber:
	rm -f $(OBJECTS) $(MAINS)

newmakefile:
	makefile -m -f $(MAKEFILE)  -s INC $(INC)
#bottom#

all : ALL

install: ALL
	$(INS) -o -m 555 -u bin -g root -f $(DIR) sh
	$(INS) -o -m 555 -u bin -g root -f $(ROOT)/usr/bin sh
	rm -f $(DIR)/jsh
	ln -f $(DIR)/sh $(DIR)/jsh
	rm -f $(ROOT)/usr/lib/rsh
	ln -f $(ROOT)/usr/bin/sh $(ROOT)/usr/lib/rsh
	rm -f $(ROOT)/usr/bin/jsh
	ln -f $(ROOT)/usr/bin/sh $(ROOT)/usr/bin/jsh

size: ALL
	$(SIZE) $(MAINS)

strip: ALL
	$(STRIP) $(MAINS)

#	These targets are useful but optional

partslist:
	@echo $(MAKEFILE) $(SOURCES) $(LOCALINCS)  |  tr ' ' '\012'  |  sort

productdir:
	@echo $(DIR) | tr ' ' '\012' | sort

product:
	@echo $(MAINS)  |  tr ' ' '\012'  | \
	sed 's;^;$(DIR)/;'

srcaudit:
	@fileaudit $(MAKEFILE) $(LOCALINCS) $(SOURCES) -o $(OBJECTS) $(MAINS)
