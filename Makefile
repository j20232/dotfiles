deploy:
	@apt update
	@apt upgrade -y
	ln -s $(HOME)/dotfiles/.tmux.conf $(HOME)/
	ln -s $(HOME)/dotfiles/fish $(XDG_CONFIG_HOME)/
	ln -s $(HOME)/dotfiles/nvim $(XDG_CONFIG_HOME)/

init:
	@bash etc/init/bash_init.sh
	@fish etc/init/fish_init.sh
	@fish sh/fisher.sh
	@fish sh/pip.sh
	@fish sh/ssh.sh
