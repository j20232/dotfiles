sudo apt-key adv --fetch-keys http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/7fa2af80.pub

wget http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/cuda-repo-ubuntu1804_10.1.168-1_amd64.deb
sudo dpkg -i cuda-repo-ubuntu1804_10.1.168-1_amd64.deb
sudo apt update

sudo apt install cuda cuda-drivers
sudo reboot

if test -e ./cuda-repo-ubuntu1804_10.1.168-1_amd64.deb
  rm ./cuda-repo-ubuntu1804_10.1.168-1_amd64.deb
end

echo "Set up CUDA!"

