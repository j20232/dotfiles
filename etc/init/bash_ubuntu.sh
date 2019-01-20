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
export LANG=en_US.UTF-8
export LC_ALL=$LANG
sudo locale-gen --purge $LANG
sudo dpkg-reconfigure -f noninteractive locales
sudo /usr/sbin/update-locale LANG=$LANG LC_ALL=$LANG

# tmux
ln -s $HOME/dotfiles/tmux/.tmux.conf $HOME/

# fish
yes | sudo apt-add-repository ppa:fish-shell/release-2
sudo apt-get update
yes | sudo apt-get install fish
sudo mkdir $XDG_CONFIG_HOME/fish
sudo chown $USER -R $HOME
sudo chsh $USER -s $(which fish)
