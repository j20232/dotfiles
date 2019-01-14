# config
## About
個人用設定

## Ubuntu

```
sudo apt install git make -y && git clone https://github.com/j20232/dotfiles && cd dotfiles && make init && exit
```


## はじめに
とりあえず以下を落とす
- [XCode](https://developer.apple.com/jp/xcode/)
- [iTerm2](https://www.iterm2.com)
  - 設定: https://qiita.com/ruwatana/items/8d9c174250061721ad11
- [Alfred](https://www.alfredapp.com/)
- [Mendeley](https://www.mendeley.com/download-desktop/)
- [Adobe Acrobat Reader DC](https://get.adobe.com/jp/reader/)
- [Slack](https://slack.com/intl/ja-jp/downloads/osx)

おまけ
- [Google Chrome](https://www.google.com/intl/ja_ALL/chrome/)
- [Google 日本語入力](https://www.google.co.jp/ime/)
- [Discord](https://discordapp.com/)
- [LINE](https://itunes.apple.com/jp/app/line/id443904275?mt=8)
- [TouchSwitcher](https://hazeover.com/touchswitcher.html)

## iTerm2
- [homebrew](https://brew.sh/index_ja)を落とす
```bash
 $ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

- 必要最低限落とす: http://www.atmarkit.co.jp/flinux/rensai/linuxtips/106chgshell.html
```bash
 $ brew install fish vim tmux
 $ chsh
```

- sshの設定: https://qiita.com/shizuma/items/2b2f873a0034839e47ce
```fish
 $ mkdir ~/.ssh
 $ cd ~/.ssh
 $ ssh-keygen -t rsa
 $ pbcopy < ~/.ssh/id_rsa.pub
```

- 文字化け防止でPowerlineをInstall: https://qiita.com/mktktmr/items/5481eac60b96c80cc262
  - 以下実行後にPreferences->Text->FontでChange Fontで，Ricty Discord Regular for Powerlineに変える
```fish
 $ brew tap sanemat/font
 $ brew install ricty --with-powerline
 $ cp -f /usr/local/Cellar/ricty/4.1.0_2/share/fonts/*.ttf ~/Library/Fonts/
 $ fc-cache -vf
```

- 色々fishで落とす
  - fzfはCtrl+rで履歴検索, Ctrl+oで曖昧検索
```fish
 $ fisher add hauleth/agnoster
 $ fisher add plugin-expand
 $ fisher add oh-my-fish/plugin-extract
 $ brew install fzf
 $ fisher add jethrokuan/fzf
 $ fisher add jethrokuan/z
 $ fisher add 0rax/fish-bd
```

## git
https://qiita.com/wnoguchi/items/f7358a227dfe2640cce3
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

## pyenv anaconda
http://nihaoshijie.hatenadiary.jp/entry/2017/11/02/180351  
https://qiita.com/koooooo/items/b21d87ffe2b56d0c589b  
https://qiita.com/Gsann/items/8bf8da17841fd7d70307  
https://qiita.com/tkmpypy/items/9bd9692ad44dcd5710da  
https://qiita.com/koooooo/items/b21d87ffe2b56d0c589b  

```fish
 $ git clone git://github.com/yyuu/pyenv.git ~/.pyenv
 $ brew install pyenv
 $ pyenv install -l | grep anaconda
 $ pyenv install anaconda3-*.*.*
 $ pip install --upgrade pip
```

## vim

```fish
 $ brew install python3
 $ pip install neovim
 $ mkdir -p ~/.cache/dein
 $ cd ~/.cache/dein
 $ curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
 $ sh ./installer.sh ~/.cache/dein
 $ pip install flake8
 $ git config --global core.editor 'nvim -c'
```

## lightgbm
python setup.py経由かpip経由かでインストール手順が変わるので注意

https://lightgbm.readthedocs.io/en/latest/Installation-Guide.html

2.2.1からはgcc入れなくてもClangでやってくれるっぽい
https://github.com/Microsoft/LightGBM/blob/master/python-package/README.rst#build-from-sources

以下は2.2.0以前
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

## 参考
- https://wiki.archlinux.org/index.php/XDG_Base_Directory
