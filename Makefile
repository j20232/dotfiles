init:
	@bash init/sh/bash_init.sh
	@fish init/sh/fish_init.sh
	@fish init/python/init.sh

gui:
	@fish init/gui/init.sh

ssh:
	@fish init/etc/ssh.sh 

cuda:
	@fish init/cuda/cuda.sh

cudnn:
	@fish init/cuda/cudnn.sh

# Python
table:
	@fish init/pip/default.sh
	@fish init/pip/table.sh

nn:
	@fish init/pip/default.sh
	@fish init/pip/nn.sh

pyutil:
	@fish init/pip/optional.sh

# C++
cpp:
	@fish init/cpp/init.sh

