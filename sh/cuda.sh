sudo apt-key adv --fetch-keys http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/7fa2af80.pub

wget http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/cuda-repo-ubuntu1604_9.2.88-1_amd64.deb
sudo dpkg -i cuda-repo-ubuntu1604_9.2.88-1_amd64.deb
sudo apt update

sudo apt install cuda cuda-drivers
sudo reboot

rm cuda-repo-ubuntu1604_9.2.88-1_amd64.deb
