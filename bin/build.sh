#!/bin/bash

# build dir
if [ ! -d ./build ]; then
  mkdir -p ./build
fi

# build
cmake -S . -B build
cmake --build build