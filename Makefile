init2:
	@bash init/sh/bash_init.sh
	@fish init/sh/fish_init.sh
	@fish init/python/init.sh

# CUDA
cuda:
	@fish init/cuda/cuda.sh

cudnn:
	@fish init/cuda/cudnn.sh

# Python
py:
	@fish init/pip/default.sh
	# @fish init/pip/table.sh
	# @fish init/pip/nn.sh
	# @fish init/pip/optional.sh

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

# Others
gui:
	@fish init/gui/init.sh

ssh:
	@fish init/sh/ssh.sh 


# windows
windows:
	@fish init/windows/sym.sh
