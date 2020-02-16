echo "Setting Python on Ubuntu"
sudo apt install ctags
sudo apt install -y make libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev
yes | sudo apt install wamerican-huge
yes | sudo apt-add-repository ppa:neovim-ppa/stable
sudo apt update
yes | sudo apt install neovim

git clone https://github.com/pyenv/pyenv.git ~/.pyenv
source $XDG_CONFIG_HOME/fish/config.fish
pyenv install anaconda3-5.3.1
pyenv global anaconda3-5.3.1
sudo apt install python-pip -y

pip install -U pip
pip install neovim flake8
