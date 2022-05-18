build() {
	cmake -S ../ -B .
	make
}

if [ ! -d ./build ]; then
  mkdir -p ./build
fi

cd "build"
	build
cd ../../