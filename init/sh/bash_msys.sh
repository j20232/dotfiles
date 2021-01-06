echo "Setting up XDG Base Directory..."
XDG_CONFIG_HOME=$HOME/.config
XDG_CACHE_HOME=$HOME/.cache
XDG_DATA_HOME=$HOME/.local/share
mkdir -p $XDG_CONFIG_HOME $XDG_CACHE_HOME $XDG_DATA_HOME

echo "Installing minimum packages..."
pacman --needed -Suy base-devel git make
pacman --needed -Suy mingw-w64-x86_64-clang
pacman --needed -Suy tmux tree unzip fish msys/gcc
pacman --needed -Suy mingw-w64-x86_64-gcc mingw-w64-x86_64-libtool mingw-w64-x86_64-cmake mingw-w64-x86_64-make
pacman --needed -Suy mingw-w64-x86_64-pkg-config mingw-w64-x86_64-unibilium gperf
pacman --needed -Suy msys/automake-wrapper
pacman --needed -Suy mingw64/mingw-w64-x86_64-glfw
pacman --needed -Suy mingw64/mingw-w64-x86_64-glew
pacman --needed -Suy mingw64/mingw-w64-x86_64-freeglut
pacman --needed -Suy mingw64/mingw-w64-x86_64-glm
