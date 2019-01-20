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

# pyenv
# sudo git clone https://github.com/yyuu/pyenv.git $HOME/.pyenv
# echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.profile
# echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.profile
# echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.profile
# source ~/.profile

# fish
sudo apt install fish -y
sudo mkdir $XDG_CONFIG_HOME/fish
sudo ln -s $HOME/dotfiles/fish/config.fish $XDG_CONFIG_HOME/fish/
sudo chsh $USER -s $(which fish)
