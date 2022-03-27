build() {
	cmake -S ../ -B .
	make
}

cd "build"
	build
cd ../../