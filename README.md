# dotfiles 🐱

## Ubuntu 🏮

```
sudo apt install git make -y && git clone https://github.com/j20232/dotfiles && cd dotfiles && make init2 && exit
```

### CUDA & cuDNN🔥

`make cuda && sudo reboot` -> `make cudnn`

---

## Windows 🚗

### msys2

1. Install from https://www.msys2.org/
2. Install [RitchyDiminished](https://github.com/mzyy94/RictyDiminished-for-Powerline).
3. Install `git` and `make`

```sh
$ pacman --needed -Sy bash pacman pacman-mirrors msys2-runtime
$ pacman -Suy
$ pacman --needed -Syy base-devel msys2-devel git make
```

4. Generate a ssh key and register it at your GitHub account.

5. Clone this repository

```sh
$ cd
$ git clone git@github.com:j20232/dotfiles.git
```

6. Change `msys64/msys2_shell.cmd` as follows

from

```
rem set MSYS=winsymlinks:nativestrict
rem set MSYS2_PATH_TYPE=inherit
```

To

```
set MSYS=winsymlinks:nativestrict
set MSYS2_PATH_TYPE=inherit
```

7. Run following lines after launching `msys64/msys2_shell.cmd` with Administrator mode

```sh
$ cd $HOME/dotfiles
$ make init2
```

8. Add following lines to `$XDG_CONFIG_HOME/local.fish`

```sh
set PROG_PATH "/c/Users/****/AppData/Local/Programs" $PROG_PATH
set PYTHONROOT "PROG_PATH/Python/****" $PYTHONROOT
set PYTHONPATH "$$PYTHONROOT/Lib/site-packages" $PYTHONPATH
set PATH "$PYTHONROOT" $PATH
set PATH "$PYTHONROOT/Scripts" $PATH
```
9. Add local `$HOME/.bashrc`

```sh
export PROG_PATH=/c/Users/****/AppData/Local/Programs
export PYTHONROOT=$PROG_PATH/Python/****
export PYTHONPATH=$PYTHONPATH:$PYTHONROOT/Lib/site-packages
export PATH=$PATH:$PYTHONROOT
export PATH=$PATH:$PYTHONROOT/Scripts
```

### WSL

```sh
$ make init2
$ make windows
```

### PowerShell

#### scoop

```sh
$ Set-ExecutionPolicy RemoteSigned -Scope CurrentUser -Force
$  iwr -useb get.scoop.sh | iex
$ scoop install vim gibo which
$ vim $PROFILE
```

Add following statements to `$PROFILE`

```sh
$PSDefaultParameterValues['Out-File:Encoding'] = 'utf8'
```

Ref: https://stackoverflow.com/questions/40098771/changing-powershells-default-output-encoding-to-utf-8

#### Chocolatey

https://chocolatey.org/install#installing-chocolatey

#### vcpkg

```
$ git clone git@github.com:microsoft/vcpkg.git
$ cd vcpkg
$ .\bootstrap-vcpkg.bat
```

## OSX 🍎

```
git clone https://github.com/j20232/dotfiles && cd dotfiles && make init2 && exit
```

- Touch Bar: [TouchSwitcher](https://hazeover.com/touchswitcher.html)
- iTerm2: Preferences->Text->Font->Change Font: select "Ricty Discord Regular for Powerline"
- MKL & TBB: https://software.intel.com/en-us/mkl

---

## Python 🐍

Don't run on `msys2`

- all: `make py`
- only table: `make table`
- only NN: `make nn`
- only util: `make pyutil`

## C++ 🐶

### Ubuntu/OSX
- `make cpp`

### Windows

#### MSVC
- Install [Visual Studio](https://visualstudio.microsoft.com/ja/vs/)

#### clang
- Install [ninja](https://github.com/ninja-build/ninja) and set the Path

@ `$HOME/.bashrc`
```sh
export PATH=$PATH:/c
export CC=/mingw64/bin/clang
export CXX=/mingw64/bin/clang++
```

- You may need to install [glbinding](git@github.com:hpicgs/glbinding.git) if you develop GL-based applications.
- If you use vscode, you have to the following settings @ `./vscode/settings.json` in your project 

```json
"terminal.integrated.shell.windows": "C:/msys64/usr/bin/bash.exe",
"terminal.integrated.env.windows": {
  "MSYS2_PATH_TYPE": "inherit",
  "MSYSTEM": "MINGW64",
  "CHERE_INVOKING": "1"
},
"terminal.integrated.shellArgs.windows": [
  "--login"
],
"C_Cpp.default.configurationProvider": "ms-vscode.cmake-tools"
```

## Others 🎚

- GUI: `make gui`
- ssh: `make ssh`

## git 🐙

```fish
 $ git config --global user.name mocobt
 $ git config --global user.email mocobt@gmail.com
 $ git config --global core.editor 'vim -c'
 $ git config --global color.diff auto
 $ git config --global color.status auto
 $ git config --global color.branch auto
 $ git config --global core.precomposeunicode true
 $ git config --global core.quotepath false
 $ git config --global core.autocrlf input
 $ git config --list
```

Add the following lines at `$HOME/.gitconfig` (on Windows PowerShell).

```
[alias]
	tree = log --graph --pretty=format:'%x09%C(auto) %h %Cgreen %ar %Creset%x09by"%C(cyan ul)%an%Creset" %x09%C(auto)%s %d'
```
