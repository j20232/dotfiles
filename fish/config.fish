alias vi="nvim"
alias vim="nvim"
alias ju="jupyter notebook"

function cd
  builtin cd $argv
    ls -a
end

alias gcm="git commit -m"
alias gb="git branch"
alias gpom="git push origin master"
alias :q="exit"

set XDG_CONFIG_HOME $HOME/.config $XDG_CONFIG_HOME
set XDG_CACHE_HOME $HOME/.cache $XDG_CACHE_HOME
set XDG_DATA_HOME $HOME/.local/share $XDG_DATA_HOME
set PYENV_ROOT $HOME/.pyenv $PYENV_ROOT
set PATH $PYENV_ROOT/bin $PATH
set PATH /usr/local/bin $PATH

if not test -e $HOME/.tmux.conf
  ln -s $HOME/dotfiles/tmux/.tmux.conf $HOME/
end


if not test -e $HOME/.config/fish/config.fish
  ln -s $HOME/dotfiles/fish/config.fish $XDG_CONFIG_HOME/fish/
end

if not test -d $HOME/.config/nvim
  ln -s $HOME/dotfiles/nvim/ $XDG_CONFIG_HOME/
end

if test -e $XDG_CONFIG_HOME/local.fish
  source $XDG_CONFIG_HOME/local.fish
end

# source $HOME/dotfiles/fish/pyenv.sh

