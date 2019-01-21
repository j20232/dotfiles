source $XDG_CONFIG_HOME/fish/config.fish
sudo apt-add-repository ppa:neovim-ppa/stable
sudo apt update
yes | sudo apt install neovim
pip install neovim flake8
pip install jupyter jupyter_contrib_nbextensions jupyterthemes
pip install kaggle
pip install numpy pandas matplotlib seaborn scikit-learn lightgbm joblib pathlib numba fasteners
pip install "dask[complete]"
