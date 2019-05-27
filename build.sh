#!/usr/bin/sh

crystal build src/simple.cr -o bin/simple --cross-compile
cc 'bin/simple.o' -o 'bin/libsimple.so' -shared -rdynamic -lpcre -lgc -lpthread /usr/lib/crystal/ext/libcrystal.a -levent -lrt -ldl -L/usr/lib -L/usr/local/lib
