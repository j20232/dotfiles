# dotfiles 🐱

## Ubuntu 🏮

```
sudo apt install git make -y && git clone https://github.com/j20232/dotfiles && cd dotfiles && make init2 && exit
```


### CUDA & cuDNN🔥

`make cuda && sudo reboot` -> `make cudnn`

---

## Windows 🚗

### WSL
```
$ make init2
$ make windows
```  

### PowerShell

#### scoop

```sh
$ Set-ExecutionPolicy RemoteSigned -Scope CurrentUser -Force
$  iwr -useb get.scoop.sh | iex
$ scoop install vim
$ scoop install gibo
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

- all: `make py`
- only table: `make table`
- only NN: `make nn`
- only util: `make pyutil`

## C++ 🐶
- `make cpp`

---

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

