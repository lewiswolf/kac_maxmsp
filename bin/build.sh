#!/bin/bash

# build dir
if [ ! -d ./build ]; then
  mkdir -p ./build
fi

# build
cmake -S . -B build
cmake --build build -j4

# codesign
cd externals
	for f in *
	do 
		codesign --force --deep -s - $f
	done
cd ../
