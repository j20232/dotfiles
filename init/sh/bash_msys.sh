echo "Setting up XDG Base Directory..."
XDG_CONFIG_HOME=$HOME/.config
XDG_CACHE_HOME=$HOME/.cache
XDG_DATA_HOME=$HOME/.local/share
chown $USER -R $HOME
mkdir -p $XDG_CONFIG_HOME $XDG_CACHE_HOME $XDG_DATA_HOME

echo "Installing minimum packages..."
pacman --needed -Suy base-devel msys0-devel git make
pacman --needed -Suy mingw-w64-x86_64-python3 mingw-w64-x86_64-python3-pip
pacman --needed -Suy tmux
