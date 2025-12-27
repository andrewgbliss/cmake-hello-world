# cmake hello world

A simple C++ project with cross-platform build support for Windows and Linux.

## 📁 Project Structure

```
/
├── src/                    # Source files
│   └── main.cpp            # Main application entry point
├── include/                # Header files
├── build/                  # Build outputs (auto-generated)
│   ├── linux/              # Linux build artifacts
│   └── windows/            # Windows build artifacts
├── CMakeLists.txt          # CMake configuration
├── Makefile                # Build automation
├── linux.cmake             # Linux toolchain configuration
├── mingw-w64-x86_64.cmake  # Windows toolchain configuration
└── README.md               # This file
```

## 🛠️ Build Commands

| Command      | Description                    |
| ------------ | ------------------------------ |
| `make build` | 🔨 Full build (original)       |
| `make clean` | 🧹 Clean all build directories |
| `make run`   | 🚀 Run the application         |
| `make help`  | 📖 Show all available commands |

## 🔧 Prerequisites

### Linux

- GCC/G++ compiler
- CMake 3.10+
- Make

### Windows

- MinGW-w64 toolchain
- CMake 3.10+
- Make (or use WSL)

### Install Dependencies

**Ubuntu/Debian:**

```bash
sudo apt update
sudo apt install build-essential cmake make
```

**Windows (Native):**

```bash
# Install MinGW-w64 and CMake
# Add to PATH: C:\mingw64\bin and CMake installation directory
```

## 📄 License

This project is open source. See LICENSE file for details.

---

**Happy coding! 🚀**
