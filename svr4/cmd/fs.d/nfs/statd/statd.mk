#	Copyright (c) 1990 UNIX System Laboratories, Inc.
#	Copyright (c) 1984, 1986, 1987, 1988, 1989, 1990 AT&T
#	  All Rights Reserved

#	THIS IS UNPUBLISHED PROPRIETARY SOURCE CODE OF
#	UNIX System Laboratories, Inc.
#	The copyright notice above does not evidence any
#	actual or intended publication of such source code.

#ident	"@(#)nfs.cmds:nfs/statd/statd.mk	1.9.6.1"

BINS= statd
OBJS= sm_svc.o sm_proc.o sm_statd.o sm_svcreate.o xdr_sm.o rpc.o
SRCS= $(OBJS:.o=.c)
INC = $(ROOT)/usr/include
INCSYS = $(ROOT)/usr/include
INS = install
INSDIR = $(ROOT)/usr/lib/nfs

CPPFLAGS= 
CFLAGS= $(CPPFLAGS) -I$(INC)
LINTFLAGS= -hbax $(CPPFLAGS)
LDFLAGS = -s
COFFLIBS= -lrpc -ldes -lnsl_s -lnet
ELFLIBS = -lnsl

all: $(BINS)

$(BINS): $(OBJS)
	if [ x$(CCSTYPE) = xCOFF ] ; \
	then	$(CC) -o $@ $(OBJS) $(LDFLAGS) $(LIBOPT) $(SHLIBS) $(COFFLIBS) ; \
	else	$(CC) -o $@ $(OBJS) $(LDFLAGS) $(LIBOPT) $(SHLIBS) $(ELFLIBS) ; \
	fi

install: all
	if [ ! -d $(INSDIR) ] ; \
	then mkdir -p $(INSDIR); \
	fi
	$(INS) -f $(INSDIR) -m 0555 -u bin -g bin $(BINS)

lint:
	lint $(LINTFLAGS) $(SRCS)

tags: $(SRCS)
	ctags $(SRCS)

clean:
	-rm -f $(OBJS)

clobber: clean
	-rm -f $(BINS)