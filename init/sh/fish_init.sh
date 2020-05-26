echo "Setting up PATH..."
set XDG_CONFIG_HOME $HOME/.config $XDG_CONFIG_HOME
set XDG_CACHE_HOME $HOME/.cache $XDG_CACHE_HOME
set XDG_DATA_HOME $HOME/.local/share $XDG_DATA_HOME
ln -s $HOME/dotfiles/fish/config.fish $XDG_CONFIG_HOME/fish/
source $XDG_CONFIG_HOME/fish/config.fish

curl -Lo $XDG_CONFIG_HOME/fish/functions/fisher.fish --create-dirs https://git.io/fisher
fisher add hauleth/agnoster
fisher add oh-my-fish/plugin-extract
git clone https://github.com/junegunn/fzf.git ~/.fzf
yes | ~/.fzf/install
fisher add jethrokuan/fzf
fisher add edc/bass
