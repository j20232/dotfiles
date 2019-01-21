deploy:
	@apt update
	@apt upgrade -y
	ln -s $(HOME)/dotfiles/.tmux.conf $(HOME)/
	ln -s $(HOME)/dotfiles/fish $(XDG_CONFIG_HOME)/
	ln -s $(HOME)/dotfiles/nvim $(XDG_CONFIG_HOME)/

init:
	@bash etc/init/bash_init.sh
	@bash sudo apt install -y fish
	@bash sudo chsh $USER -s $(which fish)
	@fish etc/init/fish_init.sh

