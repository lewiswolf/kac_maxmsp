#!/bin/bash

# build dir
if [ ! -d ./build ]; then
	mkdir -p ./build
fi

# build
cmake -S . -B build
cmake --build build --config Release -j4

# codesign
if [[ "$OSTYPE" == "darwin"* ]]; then
	for f in ./externals/*
	do 
		codesign --force --deep -s - $f
	done
fi