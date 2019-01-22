echo "Setting up XDG Base Directory..."
echo "Detail of XDG Base Directory is here: https://wiki.archlinux.org/index.php/XDG_Base_Directory"
XDG_CONFIG_HOME=$HOME/.config
XDG_CACHE_HOME=$HOME/.cache
XDG_DATA_HOME=$HOME/.local/share
sudo chown $USER -R $HOME
mkdir -p $XDG_CONFIG_HOME $XDG_CACHE_HOME $XDG_DATA_HOME

echo "Installing minimum packages..."
sudo apt update && sudo apt upgrade -y
sudo apt install -y tmux htop tree wget curl cmake gcc g++ build-essential ca-certificates software-properties-common
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

echo "Setting up the locale..."
sudo update-locale LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=$LANG
sudo locale-gen --purge $LANG
sudo dpkg-reconfigure -f noninteractive locales
sudo /usr/sbin/update-locale LANG=$LANG LC_ALL=$LANG

echo "Install fish..."
yes | sudo apt-add-repository ppa:fish-shell/release-2
sudo apt-get update
sudo apt-get install -y fish
sudo chsh $USER -s $(which fish)
