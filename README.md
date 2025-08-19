# DOM - C++ Project

A modern C++ project with hot reload capabilities and cross-platform build support for Windows and Linux.

## 🚀 Quick Start

### Hot Reload Development (Recommended)

```bash
# Start hot reload mode - automatically rebuilds on file changes
make watch
```

### One-Command Build & Run

```bash
# Build and run in one command (fastest development workflow)
make go
```

## 📁 Project Structure

```
dom/
├── src/                    # Source files
│   └── main.cpp           # Main application entry point
├── include/               # Header files
├── build/                 # Build outputs (auto-generated)
│   ├── linux/            # Linux build artifacts
│   └── windows/          # Windows build artifacts
├── CMakeLists.txt         # CMake configuration
├── Makefile              # Build automation
├── linux.cmake           # Linux toolchain configuration
├── mingw-w64-x86_64.cmake # Windows toolchain configuration
└── README.md             # This file
```

## 🛠️ Build Commands

### Development Workflow

| Command      | Description                                | Speed        |
| ------------ | ------------------------------------------ | ------------ |
| `make watch` | 🔥 Hot reload mode - watches for changes   | Auto-rebuild |
| `make go`    | 🚀 Build and run in one command            | Fastest      |
| `make dev`   | 🔨 Fast development build (Linux only)     | Very Fast    |
| `make quick` | ⚡ Quick rebuild (requires previous build) | Fastest      |

### Platform-Specific Builds

| Command              | Description                   | Platform |
| -------------------- | ----------------------------- | -------- |
| `make build-linux`   | 🐧 Build Linux version only   | Linux    |
| `make build-windows` | 🪟 Build Windows version only | Windows  |
| `make build-fast`    | 🚀 Fast parallel build        | Both     |
| `make build`         | 🔨 Full build (original)      | Both     |

### Utility Commands

| Command      | Description                    |
| ------------ | ------------------------------ |
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

**Windows (with WSL):**

```bash
# Install WSL and Ubuntu, then follow Ubuntu instructions above
```

**Windows (Native):**

```bash
# Install MinGW-w64 and CMake
# Add to PATH: C:\mingw64\bin and CMake installation directory
```

## 🚀 Usage Examples

### Development Mode

```bash
# Start hot reload for rapid development
make watch

# Edit src/main.cpp and save - it will auto-rebuild!
```

### Quick Development Cycle

```bash
# Build and run in one command
make go

# Make changes to code, then run again
make go
```

### Platform-Specific Development

```bash
# Linux development (faster builds)
make dev

# Windows development
make build-windows
```

### Production Builds

```bash
# Build for both platforms
make build-fast

# Clean build
make clean && make build
```

## 🔥 Hot Reload Features

The `make watch` command provides:

- **Automatic file watching** for `src/`, `include/`, and `CMakeLists.txt`
- **Incremental builds** - only rebuilds what changed
- **Parallel compilation** for faster builds
- **Real-time feedback** with status messages

## ⚡ Performance Optimizations

- **Parallel builds** using all CPU cores
- **Precompiled headers** for faster compilation
- **Incremental builds** - only rebuilds changed files
- **Debug builds** optimized for development speed
- **Release builds** optimized for performance

## 🐛 Debugging

### Debug Build

```bash
# Build with debug symbols
make dev
```

### Run with Debugger

```bash
# Build first
make dev

# Run with gdb
gdb ./build/linux/dom
```

## 📦 Build Outputs

- **Linux**: `./build/linux/dom`
- **Windows**: `./build/windows/dom.exe`

## 🔄 Cross-Platform Support

The project automatically detects and configures for:

- **Linux**: Uses native GCC toolchain
- **Windows**: Uses MinGW-w64 cross-compiler

## 🛠️ Customization

### Adding Source Files

1. Add `.cpp` files to `src/` directory
2. Add `.h` files to `include/` directory
3. CMake automatically finds all source files

### Modifying Build Configuration

- Edit `CMakeLists.txt` for build settings
- Edit toolchain files for compiler options
- Modify `Makefile` for build automation

## 🐛 Troubleshooting

### Common Issues

**Build fails with "command not found":**

```bash
# Ensure build tools are installed
sudo apt install build-essential cmake make
```

**Windows build fails:**

```bash
# Ensure MinGW-w64 is installed and in PATH
# Or use WSL for easier development
```

**Hot reload not working:**

```bash
# Check file permissions
chmod +x Makefile

# Ensure you're in the project root directory
```

### Clean Build

```bash
# If builds are corrupted
make clean
make build
```

## 📝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test with `make go`
5. Submit a pull request

## 📄 License

This project is open source. See LICENSE file for details.

---

**Happy coding! 🚀**
