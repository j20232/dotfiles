echo "Setting Python on OSX"
brew install ctags
brew install python
brew tap neovim/homebrew-neovim
brew install --HEAD neovim

git clone https://github.com/pyenv/pyenv.git $HOME/.pyenv
brew install pyenv
source $XDG_CONFIG_HOME/fish/config.fish
pyenv install anaconda3-2019.03
pyenv global anaconda3-2019.03

pip install -U pip
pip install neovim flake8
