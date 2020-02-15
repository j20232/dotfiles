echo "Setting up XDG Base Directory..."
XDG_CONFIG_HOME=$HOME/.config
XDG_CACHE_HOME=$HOME/.cache
XDG_DATA_HOME=$HOME/.local/share

sudo chown $USER -R $HOME
mkdir -p $XDG_CONFIG_HOME $XDG_CACHE_HOME $XDG_DATA_HOME

echo "Installing minimum packages..."
xcode-select --install
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/installe"
brew doctor
brew update
brew install fish vim tmux
chsh -s /usr/local/bin/fish
