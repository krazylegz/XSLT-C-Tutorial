#
#  ***********************************************************************
#  *                                                                     *
#  * Wykobi Computational Geometry Library                               *
#  * Release Version 0.0.3                                               *
#  * http://www.wykobi.com                                               *
#  * Copyright (c) 2005-2007 Arash Partow, All Rights Reserved.          *
#  *                                                                     *
#  * The Wykobi computational library and its components are supplied    *
#  * under the terms of the General Wykobi License agreement. The        *
#  * contents of the Wykobi computational library and its components may *
#  * not be copied or disclosed except in accordance with the terms of   *
#  * that agreement.                                                     *
#  *                                                                     *
#  * URL: http://www.wykobi.com/license.html                             *
#  *                                                                     *
#  ***********************************************************************
#


CC               = -gcc
OPTIONS          = -I /usr/include/libxml2 -lxslt -ansi -Wall -Wunused -O3 -o
OPTIONS_LIBS     = -I /usr/include/libxml2 -lxslt -ansi -Wall -Wunused -O3 -c

#OPTIONS          = -pedantic -ansi -Wall -Wunused -Weffc++ -o
#OPTIONS_LIBS     = -pedantic -ansi -Wall -Wunused -Weffc++ -c

CPP_SRC =

OBJECTS = $(CPP_SRC:.cpp=.o)

%.o: %.hpp %.cpp
	$(CC) $(OPTIONS_LIBS) $*.cpp -o $@


all: $(OBJECTS) build 

build : test.c $(OBJECTS)
	$(CC) $(OPTIONS) test test.c $(OBJECTS)

clean:
	rm -f core *.o *.bak *stackdump test


#
# The End !
#
