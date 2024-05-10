#!/bin/bash

# build dir
if [ ! -d ./build ]; then
  mkdir -p ./build
fi

# build
cmake -S . -B build
cmake --build build -j4

# codesign
if [[ "$OSTYPE" == "darwin"* ]]; then
	cd externals
		for f in *
		do 
			codesign --force --deep -s - $f
		done
	cd ../
fi