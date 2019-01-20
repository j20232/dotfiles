# XDG Base Directory
# https://wiki.archlinux.org/index.php/XDG_Base_Directory
XDG_CONFIG_HOME=$HOME/.config
XDG_CACHE_HOME=$HOME/.cache
XDG_DATA_HOME=$HOME/.local/share
mkdir -p $XDG_CONFIG_HOME $XDG_CACHE_HOME $XDG_DATA_HOME

# apt install
sudo apt update && sudo apt upgrade -y
sudo apt install -y tmux htop tree wget curl cmake gcc g++ build-essential ca-certificates software-properties-common
sudo update-locale LC_ALL=en_US.UTF-8

# tmux
ln -s $HOME/dotfiles/.tmux.conf $HOME/

# fish
yes | sudo apt-add-repository ppa:fish-shell/release-2
sudo apt-get update
yes | sudo apt-get install fish
sudo mkdir $XDG_CONFIG_HOME/fish
sudo ln -s $HOME/dotfiles/fish/config.fish $XDG_CONFIG_HOME/fish/
sudo chown user:usergroup -R $USER
sudo chsh $USER -s $(which fish)
