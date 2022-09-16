if type -q nvim
  alias vi="nvim"
  alias vim="nvim"
end
alias ju="jupyter notebook"


# function cd
#   builtin cd $argv
#     ls -a
# end
# 
# alias G="git log --oneline --graph --no-merges | head"
# alias :q="exit"
# 
# set XDG_CONFIG_HOME $HOME/.config $XDG_CONFIG_HOME
# set XDG_CACHE_HOME $HOME/.cache $XDG_CACHE_HOME
# set XDG_DATA_HOME $HOME/.local/share $XDG_DATA_HOME
# set PATH /usr/local/bin $PATH
# 
# set PATH $HOME/gibo $PATH
# 
# 
# switch (uname)
#   case Darwin
#     source $HOME/dotfiles/fish/os/osx.fish
#     set PYENV_ROOT $HOME/.pyenv $PYENV_ROOT
#     set PATH $PYENV_ROOT/bin $PATH
#   case Linux
#     source $HOME/dotfiles/fish/os/ubuntu.fish
#     set PYENV_ROOT $HOME/.pyenv $PYENV_ROOT
#     set LS_COLORS $LS_COLORS:'ow=1;34:' ; export LS_COLORS
#     set PATH $PYENV_ROOT/bin $PATH
#   case "*"
#     set os_name (uname)
#     if string match -q MINGW64_NT (string split - (uname))
#       source $HOME/dotfiles/fish/os/msys.fish
#     end
#   end
# 
#  if test -e $HOME/.config/local.fish
#    source $XDG_CONFIG_HOME/local.fish
# end
# 
# if not test -e $HOME/.tmux.conf
#   ln -s $HOME/dotfiles/tmux/.tmux.conf $HOME/
# end
# 
# 
# if not test -e $HOME/.config/fish/config.fish
#   ln -s $HOME/dotfiles/fish/config.fish $XDG_CONFIG_HOME/fish/
# end
# 
# if not test -e $HOME/.config/flake8
#   ln -s $HOME/dotfiles/flake8 $XDG_CONFIG_HOME/
# end
# 
# if not test -d $HOME/.config/nvim
#   ln -s $HOME/dotfiles/nvim/ $XDG_CONFIG_HOME/
# end
# 
# set -U fish_user_paths (echo $fish_user_paths | tr ' ' '\n' | sort -u)
