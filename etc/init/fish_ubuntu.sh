# XDG Base Directory
# https://wiki.archlinux.org/index.php/XDG_Base_Directory
XDG_CONFIG_HOME=$HOME/.config
XDG_CACHE_HOME=$HOME/.cache
XDG_DATA_HOME=$HOME/.local/share

curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher
fisher add hauleth/agnoster
fisher add plugin-expand
fisher add oh-my-fish/plugin-extract
git clone https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
fisher add jethrokuan/fzf
fisher add jethrokuan/z
fisher add 0rax/fish-bd

# sudo apt install -y make libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev
# source $XDG_CONFIG_HOME/fish/config.fish
# pyenv install 3.6.6
# pyenv global 3.6.6
# pip install pip==18.0

# mkdir $XDG_CONFIG_HOME/nvim
# ln -s $HOME/dotfiles/nvim/ $XDG_CONFIG_HOME/
# sudo apt-add-repository ppa:neovim-ppa/stable
# sudo apt update
# sudo apt install -y neovim
# pip install neovim
# pip install flake8

# pip install jupyter
# pip install jupyter_contrib_nbextensions
# pip install jupyterthemes

# pip install kaggle

# echo "give me e-mail"
# read EMAIL
# ssh-keygen -f $HOME/.ssh/id_rsa -t rsa -b 4096 -C $EMAIL
# chmod 600 $HOME/.ssh/id_rsa

