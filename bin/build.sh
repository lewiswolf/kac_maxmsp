#!/bin/bash

# build dir
if [ ! -d ./build ]; then
	mkdir -p ./build
fi

# build
cmake -S . -B build -DCMAKE_BUILD_TYPE=Release
cmake --build build -j4

# codesign
if [[ "$OSTYPE" == "darwin"* ]]; then
	for f in ./externals/*
	do 
		codesign --force --deep -s - $f
	done
fi