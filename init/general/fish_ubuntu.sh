echo "Setting up PATH..."
set XDG_CONFIG_HOME $HOME/.config $XDG_CONFIG_HOME
set XDG_CACHE_HOME $HOME/.cache $XDG_CACHE_HOME
set XDG_DATA_HOME $HOME/.local/share $XDG_DATA_HOME
ln -s $HOME/dotfiles/fish/config.fish $XDG_CONFIG_HOME/fish/
source $XDG_CONFIG_HOME/fish/config.fish

echo "Setting up pyenv..."
sudo apt install -y make libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
source $XDG_CONFIG_HOME/fish/config.fish
pyenv install anaconda3-5.3.1
pyenv global anaconda3-5.3.1
sudo apt install python-pip -y
sudo apt install ctags
