# XDG Base Directory
# https://wiki.archlinux.org/index.php/XDG_Base_Directory
XDG_CONFIG_HOME=$HOME/.config
XDG_CACHE_HOME=$HOME/.cache
XDG_DATA_HOME=$HOME/.local/share
mkdir -p $XDG_CONFIG_HOME $XDG_CACHE_HOME $XDG_DATA_HOME

# apt install
sudo apt update && sudo apt upgrade -y
sudo apt install -y tmux htop tree wget curl cmake gcc g++ build-essential ca-certificates software-properties-common

# tmux
ln -s $HOME/dotfiles/.tmux.conf $HOME/

# fish
sudo apt install fish -y
ln -s $HOME/dotfiles/fish $(XDG_CONFIG_HOME)/
sudo chsh $USER -s $(which fish)
