# XDG Base Directory
# https://wiki.archlinux.org/index.php/XDG_Base_Directory
XDG_CONFIG_HOME=$HOME/.config
XDG_CACHE_HOME=$HOME/.cache
XDG_DATA_HOME=$HOME/.local/share

sudo apt install -y make libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
source $XDG_CONFIG_HOME/fish/config.fish
pyenv install 3.6.6
pyenv global 3.6.6
sudo apt install python-pip -y

