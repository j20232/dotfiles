" setting
set fenc=utf-8
set nobackup
set noswapfile
set autoread
set hidden
set backspace=indent,eol,start
set showcmd
set belloff=all
set clipboard=unnamedplus

" Looking
set number
set cursorline
set virtualedit=onemore
set smartindent
set showmatch
set laststatus=1
set wildmode=list:longest
nnoremap j gj
nnoremap k gk

" Tab
set expandtab
set tabstop=2
set shiftwidth=2

" Search
set ignorecase
set smartcase
set wrapscan
nmap <Esc><Esc> :nohlsearch<CR><Esc>

" Map
nnoremap s <Nop>

" Split
nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>

" Move Cursor
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sw <C-w>w

" Move Window
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>L
nnoremap sH <C-w>H
nnoremap sr <C-w>r

" Change size of windows
nnoremap so <C-w>_<C-w>|
nnoremap s= <C-w>=
nnoremap sO <C-w>=

" Tab
nnoremap st :<C-u>tabnew<CR>
nnoremap sn gt
nnoremap sp gT
nnoremap sq :<C-u>q<CR>

syntax on

if &compatible
  set nocompatible
endif

let s:pyenv_root = empty($PYENV_ROOT) ? expand('~/.pyenv') : $PYENV_ROOT
let g:python_host_prog = s:pyenv_root . '/shims/python'
let g:python3_host_prog = s:pyenv_root . '/shims/python3'

let s:config_home = empty($XDG_CONFIG_HOME) ? expand('~/.config') : $XDG_CONFIG_HOME
let s:dein_config_dir = s:config_home . '/nvim'

let s:cache_home = empty($XDG_CACHE_HOME) ? expand('~/.cache') : $XDG_CACHE_HOME
let s:dein_cache_dir = s:cache_home . '/dein'
let s:dein_repo_dir = s:dein_cache_dir . '/repos/github.com/Shougo/dein.vim'
if !isdirectory(s:dein_repo_dir)
  call system('git clone https://github.com/Shougo/dein.vim ' . shellescape(s:dein_repo_dir))
endif
let &runtimepath = s:dein_repo_dir .",". &runtimepath

if dein#load_state(s:dein_cache_dir)
  call dein#begin(s:dein_cache_dir)

  let s:toml = s:dein_config_dir . '/dein.toml'
  let s:toml_lazy = s:dein_config_dir . '/dein_lazy.toml'
  call dein#load_toml(s:toml, {'lazy': 0})
  call dein#load_toml(s:toml_lazy, {'lazy': 1})

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
 
if dein#check_install()
  call dein#install()
endif

call map(dein#check_clean(), "delete(v:val, 'rf')")

