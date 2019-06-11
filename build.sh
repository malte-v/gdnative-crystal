#!/usr/bin/bash

crystal_linker_cmd=$(crystal build src/simple.cr -o bin/simple --cross-compile --debug -Dgc_none) &&
linker_cmd="$crystal_linker_cmd --shared -o bin/libsimple.so" &&
eval $linker_cmd