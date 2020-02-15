deploy:
	@apt update
	@apt upgrade -y
	ln -s $(HOME)/dotfiles/.tmux.conf $(HOME)/
	ln -s $(HOME)/dotfiles/fish $(XDG_CONFIG_HOME)/
	ln -s $(HOME)/dotfiles/nvim $(XDG_CONFIG_HOME)/

init:
	@bash init/general/bash_init.sh
	@fish init/general/fish_init.sh
	@fish init/general/fisher.sh
	@fish init/python/pip.sh

table:
	@fish init/python/table.sh

cuda:
	@fish init/cuda/cuda.sh

cudnn:
	@fish init/cuda/cudnn.sh

nn:
	@fish init/python/nn.sh

gui:
	@fish init/gui/init.sh
