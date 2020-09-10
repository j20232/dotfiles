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
$ pacman -Su
$ pacman --needed -Sy base-devel msys0-devel git make
```

3. Generate a ssh key and register it at your GitHub account.

4. Clone this repository

```sh
$ cd
$ git clone git@github.com:j20232/dotfiles.git
```

5. Run `make` at this repository

```sh
$ cd $HOME/dotfiles
$ make
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

- `make cpp`

## Others 🎚

- GUI: `make gui`
- ssh: `make ssh`

## git 🐙

```fish
 $ git config --global user.name "First-name Family-name"
 $ git config --global user.email "hoge@example.com"
 $ git config --global core.editor 'vim -c'
 $ git config --global color.diff auto
 $ git config --global color.status auto
 $ git config --global color.branch auto
 $ git config --global core.precomposeunicode true
 $ git config --global core.quotepath false
 $ git config --global core.autocrlf input
 $ git config --list
```
