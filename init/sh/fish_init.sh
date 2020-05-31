echo "Setting up PATH..."

if not test -d $XDG_CONFIG_HOME
  set XDG_CONFIG_HOME $HOME/.config $XDG_CONFIG_HOME
end

if not test -d $XDG_CACHE_HOME
  set XDG_CACHE_HOME $HOME/.cache $XDG_CACHE_HOME
end

if not test -d $XDG_DATA_HOME
  set XDG_DATA_HOME $HOME/.local/share $XDG_DATA_HOME
end

if not test -L $HOME/.config/fish/config.fish
  ln -s $HOME/dotfiles/fish/config.fish $HOME/.config/fish/
end

# source $XDG_CONFIG_HOME/fish/config.fish

if not test -L $HOME/.config/fish/functions/fisher.fish
  curl -Lo $HOME/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher
end
fisher add hauleth/agnoster
fisher add oh-my-fish/plugin-extract
git clone https://github.com/junegunn/fzf.git ~/.fzf
yes | ~/.fzf/install
fisher add jethrokuan/fzf
fisher add edc/bass

# gibo
git clone git@github.com:simonwhitaker/gibo.git ~/gibo
cd $HOME/gibo
chmod +x ~/gibo
set PATH $HOME/gibo $PATH
gibo update


