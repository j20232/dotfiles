source $XDG_CONFIG_HOME/fish/config.fish
yes | sudo apt-add-repository ppa:neovim-ppa/stable
sudo apt update
yes | sudo apt install neovim
pip install -U pip
pip install neovim flake8

# default
pip install numpy scipy cython numba
pip install pandas scikit-learn
pip install matplotlib seaborn tqdm
pip install joblib pathlib fasteners pyyaml
pip install mlflow

# jupyter
pip install jupyter notebook
pip installjupyter_contrib_nbextensions jupyterthemes
jupyter contrib nbextension install --user

# kaggle
pip install kaggle
