switch (uname)
  case Darwin
    if test -e /usr/local/bin/pyenv  
      eval (pyenv init - | source)
    end
  case Linux
    if test -e $HOME/.pyenv/bin/pyenv
      eval (pyenv init - | source)
    end
  end
