CC = gcc 
CFLAGS += -Wall -W -pedantic -O2 -Wno-deprecated-declarations
LDLIBS = -lcrypto
INSTDIR = /usr/local/bin

all: pass2key

pass2key.c: 
	 $(CC) $(CFLAGS) $(LDLIBS) -o pass2key

clean: 
	rm pass2key

install: all
	sudo cp pass2key $(INSTDIR)
