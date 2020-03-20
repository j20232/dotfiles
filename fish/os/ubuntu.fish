# ubuntu settings

# CUDA
set PATH /usr/local/cuda/bin $PATH
set LD_LIBRARY_PATH /usr/local/cuda/lib64 $LD_LIBRARY_PATH

# pyenv
if test -e $HOME/.pyenv/bin/pyenv
  eval (pyenv init - | source)
end
