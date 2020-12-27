CC = gcc
CFLAGS += -Wall -W -pedantic -O2 -Wno-deprecated-declarations
LDLIBS = -lcrypto

all: pass2key

pass2key.c: 
	 $(CC) $(CFLAGS) $(LDLIBS) -o pass2key

clean: 
	rm pass2key
