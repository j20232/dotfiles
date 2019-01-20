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

ln -s $HOME/dotfiles/nvim/ $XDG_CONFIG_HOME/
sudo apt-add-repository ppa:neovim-ppa/stable
sudo apt update
yes | sudo apt install neovim
pip install neovim flake8
pip install jupyter jupyter_contrib_nbextensions jupyterthemes
pip install kaggle
pip install numpy pandas matplotlib seaborn scikit-learn lightgbm joblib pathlib numba fasteners
pip install "dask[complete]"

eval (pyenv init - | source)

echo "give me e-mail"
read EMAIL
ssh-keygen -f $HOME/.ssh/id_rsa -t rsa -b 4096 -C $EMAIL
chmod 600 $HOME/.ssh/id_rsa
