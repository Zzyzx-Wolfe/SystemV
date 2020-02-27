/*	Copyright (c) 1990 UNIX System Laboratories, Inc.	*/
/*	Copyright (c) 1984, 1986, 1987, 1988, 1989, 1990 AT&T	*/
/*	  All Rights Reserved  	*/

/*	THIS IS UNPUBLISHED PROPRIETARY SOURCE CODE OF     	*/
/*	UNIX System Laboratories, Inc.                     	*/
/*	The copyright notice above does not evidence any   	*/
/*	actual or intended publication of such source code.	*/


#ident	"@(#)ucbtroff:hytab.c	1.1.1.1"

/*******************************************************************

		PROPRIETARY NOTICE (Combined)

This source code is unpublished proprietary information
constituting, or derived under license from AT&T's UNIX(r) System V.
In addition, portions of such source code were derived from Berkeley
4.3 BSD under license from the Regents of the University of
California.



		Copyright Notice 

Notice of copyright on this source code product does not indicate 
publication.

	(c) 1986,1987,1988,1989  Sun Microsystems, Inc
	(c) 1983,1984,1985,1986,1987,1988,1989  AT&T.
	          All rights reserved.
********************************************************************/ 

/*
 * Hyphenation digram tables
 */

char	bxh[1][13] = {
	0060,0000,0040,0000,0040,0000,0000,0040,0000,0000,0040,0000,0040
};

unsigned char	hxx[26][13] = {
	0006,0042,0041,0123,0021,0024,0063,0042,0002,0043,0021,0001,0022,
	0140,0000,0200,0003,0260,0006,0000,0160,0007,0000,0140,0000,0320,
	0220,0000,0160,0005,0240,0010,0000,0100,0006,0000,0200,0000,0320,
	0240,0000,0120,0003,0140,0000,0000,0240,0010,0000,0220,0000,0160,
	0042,0023,0041,0040,0040,0022,0043,0041,0030,0064,0021,0000,0041,
	0100,0000,0140,0000,0220,0006,0000,0140,0003,0000,0200,0000,0000,
	0200,0000,0120,0002,0220,0010,0000,0160,0006,0000,0140,0000,0320,
	0020,0000,0020,0000,0020,0000,0000,0020,0000,0000,0020,0000,0000,
	0043,0163,0065,0044,0022,0043,0104,0042,0061,0146,0061,0000,0007,
	0100,0000,0140,0000,0040,0000,0000,0100,0000,0000,0120,0000,0000,
	0140,0000,0040,0011,0060,0004,0001,0120,0003,0000,0140,0000,0040,
	0200,0000,0100,0000,0140,0000,0000,0140,0000,0000,0140,0000,0240,
	0200,0000,0140,0000,0160,0000,0000,0220,0000,0000,0140,0000,0240,
	0200,0000,0140,0000,0160,0000,0000,0220,0000,0000,0060,0000,0240,
	0021,0043,0041,0121,0040,0023,0042,0003,0142,0042,0061,0001,0022,
	0120,0000,0140,0010,0140,0010,0000,0140,0002,0000,0120,0000,0120,
	0000,0000,0000,0000,0360,0000,0000,0000,0000,0000,0160,0000,0000,
	0100,0000,0040,0005,0120,0000,0000,0100,0000,0000,0060,0000,0140,
	0140,0040,0100,0001,0240,0041,0000,0242,0000,0002,0140,0000,0100,
	0240,0000,0120,0002,0200,0000,0000,0320,0007,0000,0240,0000,0340,
	0101,0021,0041,0020,0040,0005,0042,0121,0002,0021,0201,0000,0020,
	0160,0000,0100,0000,0140,0000,0000,0160,0006,0000,0220,0000,0140,
	0140,0000,0020,0001,0020,0000,0000,0100,0001,0000,0300,0000,0000,
	0000,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000,
	0106,0041,0040,0147,0040,0000,0063,0041,0001,0102,0160,0002,0002,
	0300,0000,0040,0017,0140,0017,0000,0240,0000,0000,0140,0000,0120,
};

unsigned char	bxxh[26][13] = {
	0005,0150,0153,0062,0062,0246,0152,0127,0146,0203,0310,0017,0206,
	0100,0000,0120,0000,0140,0000,0000,0100,0000,0000,0120,0000,0060,
	0100,0000,0040,0000,0060,0000,0000,0060,0000,0000,0220,0000,0040,
	0100,0000,0120,0000,0200,0000,0000,0100,0000,0000,0140,0000,0060,
	0043,0142,0046,0140,0062,0147,0210,0131,0046,0106,0246,0017,0111,
	0060,0000,0020,0000,0060,0000,0000,0040,0000,0000,0100,0000,0000,
	0060,0000,0040,0000,0040,0000,0000,0040,0000,0000,0100,0000,0040,
	0100,0000,0100,0000,0100,0000,0000,0040,0000,0000,0100,0000,0140,
	0066,0045,0145,0140,0000,0070,0377,0030,0130,0103,0003,0017,0006,
	0040,0000,0040,0000,0020,0000,0000,0040,0000,0000,0100,0000,0000,
	0200,0000,0020,0000,0140,0000,0000,0120,0000,0000,0120,0000,0040,
	0120,0000,0040,0000,0060,0000,0000,0060,0000,0000,0160,0000,0040,
	0120,0000,0040,0000,0120,0000,0000,0040,0000,0000,0160,0000,0040,
	0120,0000,0020,0000,0140,0000,0000,0120,0000,0000,0140,0000,0040,
	0051,0126,0150,0140,0060,0210,0146,0006,0006,0165,0003,0017,0244,
	0120,0000,0040,0000,0160,0000,0000,0140,0000,0000,0060,0000,0140,
	0000,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000,
	0140,0000,0140,0000,0060,0000,0000,0100,0000,0000,0140,0000,0020,
	0120,0000,0020,0000,0060,0000,0000,0060,0000,0000,0060,0000,0040,
	0140,0000,0020,0000,0100,0000,0000,0140,0000,0000,0140,0000,0020,
	0070,0125,0051,0162,0120,0105,0126,0104,0006,0044,0000,0017,0052,
	0140,0000,0020,0000,0140,0000,0000,0060,0000,0000,0060,0000,0040,
	0020,0000,0000,0000,0020,0000,0000,0000,0000,0000,0000,0000,0060,
	0140,0000,0160,0000,0200,0000,0000,0140,0000,0000,0000,0000,0240,
	0065,0042,0060,0200,0000,0210,0222,0146,0006,0204,0220,0012,0003,
	0240,0000,0020,0000,0120,0000,0000,0200,0000,0000,0200,0000,0240,
};

unsigned char	xhx[26][13] = {
	0032,0146,0042,0107,0076,0102,0042,0146,0202,0050,0006,0000,0051,
	0036,0377,0057,0013,0057,0366,0377,0057,0001,0377,0057,0000,0040,
	0037,0377,0020,0000,0100,0022,0377,0057,0362,0116,0100,0000,0017,
	0057,0377,0057,0031,0137,0363,0377,0037,0362,0270,0077,0000,0117,
	0074,0142,0012,0236,0076,0125,0063,0165,0341,0046,0047,0000,0024,
	0020,0017,0075,0377,0040,0001,0377,0017,0001,0204,0020,0000,0040,
	0057,0017,0057,0340,0140,0362,0314,0117,0003,0302,0100,0000,0057,
	0057,0357,0077,0017,0100,0366,0314,0057,0342,0346,0037,0000,0060,
	0252,0145,0072,0157,0377,0165,0063,0066,0164,0050,0363,0000,0362,
	0000,0000,0020,0000,0020,0000,0000,0017,0000,0000,0020,0000,0000,
	0117,0017,0237,0377,0200,0354,0125,0110,0004,0257,0000,0000,0300,
	0057,0367,0054,0357,0157,0216,0314,0114,0217,0353,0053,0000,0057,
	0077,0213,0077,0077,0177,0317,0377,0114,0377,0352,0077,0000,0076,
	0077,0213,0077,0077,0157,0177,0377,0054,0377,0352,0117,0000,0075,
	0125,0230,0065,0216,0057,0066,0063,0047,0345,0126,0011,0000,0033,
	0057,0377,0051,0360,0120,0361,0273,0056,0001,0256,0057,0000,0060,
	0000,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000,
	0076,0310,0056,0310,0137,0174,0273,0055,0335,0266,0033,0000,0155,
	0077,0157,0057,0360,0057,0063,0042,0024,0077,0206,0020,0000,0040,
	0057,0037,0077,0360,0100,0365,0377,0037,0362,0176,0050,0000,0026,
	0167,0146,0042,0112,0077,0110,0062,0254,0366,0052,0377,0000,0163,
	0060,0000,0040,0000,0120,0000,0377,0060,0012,0000,0037,0000,0257,
	0037,0232,0157,0361,0040,0003,0125,0010,0001,0256,0000,0000,0340,
	0377,0377,0377,0377,0377,0377,0377,0377,0377,0377,0377,0017,0277,
	0253,0315,0257,0216,0377,0206,0146,0306,0371,0126,0232,0000,0004,
	0057,0012,0100,0360,0160,0360,0000,0040,0000,0017,0157,0000,0176,
};

unsigned char	xxh[26][13] = {
	0045,0150,0154,0162,0042,0246,0210,0147,0152,0103,0230,0017,0206,
	0100,0000,0040,0000,0140,0000,0000,0100,0000,0021,0120,0017,0060,
	0100,0000,0040,0002,0140,0320,0000,0060,0000,0001,0220,0017,0040,
	0100,0001,0120,0001,0241,0000,0000,0100,0000,0020,0140,0017,0060,
	0023,0162,0046,0142,0022,0207,0210,0131,0052,0106,0250,0017,0110,
	0060,0000,0042,0000,0160,0000,0000,0040,0000,0212,0100,0017,0000,
	0140,0000,0040,0002,0140,0000,0000,0120,0000,0040,0120,0017,0040,
	0100,0000,0100,0000,0140,0001,0021,0140,0000,0046,0100,0017,0140,
	0066,0045,0025,0201,0020,0130,0146,0030,0130,0103,0025,0017,0006,
	0100,0000,0040,0000,0020,0000,0000,0040,0000,0000,0200,0017,0000,
	0200,0000,0020,0001,0140,0000,0000,0140,0000,0000,0120,0017,0040,
	0120,0026,0042,0020,0140,0161,0042,0143,0000,0022,0162,0017,0040,
	0121,0042,0060,0020,0140,0200,0000,0123,0000,0021,0220,0017,0041,
	0121,0042,0060,0120,0140,0200,0000,0123,0000,0021,0160,0017,0041,
	0051,0126,0150,0141,0060,0210,0146,0066,0026,0165,0026,0017,0247,
	0120,0000,0040,0003,0160,0000,0000,0140,0000,0021,0100,0017,0140,
	0000,0000,0000,0000,0200,0000,0000,0000,0000,0000,0000,0017,0000,
	0141,0023,0122,0040,0160,0143,0042,0142,0000,0047,0143,0017,0020,
	0120,0000,0040,0006,0140,0060,0000,0141,0000,0026,0100,0017,0040,
	0140,0000,0020,0007,0100,0000,0000,0140,0000,0001,0140,0017,0020,
	0110,0125,0051,0162,0120,0125,0127,0104,0006,0104,0000,0017,0052,
	0140,0000,0040,0000,0160,0000,0000,0140,0000,0000,0060,0017,0000,
	0040,0005,0020,0000,0040,0313,0231,0030,0000,0140,0000,0017,0056,
	0140,0000,0160,0000,0200,0000,0000,0140,0000,0000,0000,0017,0240,
	0065,0042,0060,0040,0000,0206,0231,0146,0006,0224,0220,0017,0004,
	0240,0000,0020,0000,0140,0000,0000,0220,0000,0000,0200,0017,0141,
};
