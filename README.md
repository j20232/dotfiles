# dotfiles

## Ubuntu

```
sudo apt install git make -y && git clone https://github.com/j20232/dotfiles && cd dotfiles && make init && exit
```

### table

```
make table
```

### CUDA & cuDNN

```
make cuda && sudo reboot
```

```
make cudnn && make nn
```

### GUI

```
make gui
```

---

## OSX

### App.
- [XCode](https://developer.apple.com/jp/xcode/)
- [iTerm2](https://www.iterm2.com)
  - Settings: https://qiita.com/ruwatana/items/8d9c174250061721ad11
- [Alfred](https://www.alfredapp.com/)
- [Mendeley](https://www.mendeley.com/download-desktop/)
- [Adobe Acrobat Reader DC](https://get.adobe.com/jp/reader/)
- [Slack](https://slack.com/intl/ja-jp/downloads/osx)
- [Google Chrome](https://www.google.com/intl/ja_ALL/chrome/)
- [Google 日本語入力](https://www.google.co.jp/ime/)
- [Discord](https://discordapp.com/)
- [LINE](https://itunes.apple.com/jp/app/line/id443904275?mt=8)
- [TouchSwitcher](https://hazeover.com/touchswitcher.html)

### iTerm2

- [homebrew](https://brew.sh/index_ja)

```bash
 $ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
 $ brew install fish vim tmux
 $ chsh
```

- ssh: https://qiita.com/shizuma/items/2b2f873a0034839e47ce

```fish
 $ mkdir ~/.ssh
 $ cd ~/.ssh
 $ ssh-keygen -t rsa
 $ pbcopy < ~/.ssh/id_rsa.pub
```

- Install Powerline: https://qiita.com/mktktmr/items/5481eac60b96c80cc262

```fish
 $ brew tap sanemat/font
 $ brew install ricty --with-powerline
 $ cp -f /usr/local/Cellar/ricty/4.1.0_2/share/fonts/*.ttf ~/Library/Fonts/
 $ fc-cache -vf
```
- Preferences->Text->Font->Change Font: select "Ricty Discord Regular for Powerline"


### git

```fish
 $ git config --global user.name "First-name Family-name"
 $ git config --global user.email "hoge@example.com"
 $ git config --global core.editor 'vim -c'
 $ git config --global color.diff auto
 $ git config --global color.status auto
 $ git config --global color.branch auto
 $ git config --global core.precomposeunicode true
 $ git config --global core.quotepath false
 $ git config --list
```

### pyenv anaconda

```fish
 $ git clone git://github.com/yyuu/pyenv.git ~/.pyenv
 $ brew install pyenv
 $ pyenv install -l | grep anaconda
 $ pyenv install anaconda3-*.*.*
 $ pip install --upgrade pip
```


### lightgbm
https://lightgbm.readthedocs.io/en/latest/Installation-Guide.html
https://github.com/Microsoft/LightGBM/blob/master/python-package/README.rst#build-from-sources

before 2.2.0

```fish
 $ brew install libomp
 $ brew install open-mpi
 $ brew install gcc
 $ ls /usr/local/bin | grep gcc
 $ ls /usr/local/bin | grep g++
 $ ln -s /usr/local/bin/gcc-8 /usr/local/bin/gcc
 $ ln -s /usr/local/bin/g++-8 /usr/local/bin/g++
 $ git clone --recursive https://github.com/Microsoft/LightGBM ; cd LightGBM
 $ mkdir build ; cd build
 $ cmake -DUSE_MPI=ON ..
 $ make -j4
```
