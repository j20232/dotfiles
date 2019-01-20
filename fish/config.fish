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

set XDG_CONFIG_HOME $HOME/.config $XDG_CONFIG_HOME
set XDG_CACHE_HOME $HOME/.cache $XDG_CACHE_HOME
set XDG_DATA_HOME $HOME/.local/share $XDG_DATA_HOME
set PYENV_ROOT $HOME/.pyenv $PYENV_ROOT
set PATH $PYENV_ROOT/bin $PATH
set PATH /usr/local/bin $PATH

if test -e '$XDG_CONFIG_HOME/local.fish'
  echo "hogehoge"
  source $XDG_CONFIG_HOME/local.fish
end
