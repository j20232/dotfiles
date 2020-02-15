echo "Setting up PATH..."
set XDG_CONFIG_HOME $HOME/.config $XDG_CONFIG_HOME
set XDG_CACHE_HOME $HOME/.cache $XDG_CACHE_HOME
set XDG_DATA_HOME $HOME/.local/share $XDG_DATA_HOME
ln -s $HOME/dotfiles/fish/config.fish $XDG_CONFIG_HOME/fish/
source $XDG_CONFIG_HOME/fish/config.fish

echo "Setting C++..."
brew install gcc
brew install cmake
brew install libomp open-mpi

echo "Setting up Python..."
brew install ctags
brew install python
git clone https://github.com/pyenv/pyenv.git $HOME/.pyenv
brew install pyenv
source $XDG_CONFIG_HOME/fish/config.fish
pyenv install anaconda3-5.3.1
pyenv global anaconda3-5.3.1
pip install --upgrade pip

