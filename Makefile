CC = gcc
CXX = g++
MINGW_CXX = x86_64-w64-mingw32-g++

project = dom

build: 
	@echo "🔨 Full build..."
	@mkdir -p build/windows
	@cd build/windows && cmake ../.. -DCMAKE_TOOLCHAIN_FILE=../../mingw-w64-x86_64.cmake && cmake --build . --parallel
	@mkdir -p build/linux
	@cd build/linux && cmake ../.. -DCMAKE_TOOLCHAIN_FILE=../../linux.cmake && cmake --build . --parallel

clean:
	@echo "🧹 Cleaning build directories..."
	@rm -rf build

run:
	@echo "🚀 Running application..."
	@./build/linux/${project}

help:
	@echo "Available commands:"
	@echo "  build         - Full build (original)"
	@echo "  clean         - Clean all build directories"
	@echo "  run           - Run the application (linux only)"
	@echo "  help          - Show this help message"	



