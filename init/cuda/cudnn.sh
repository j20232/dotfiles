wget http://developer.download.nvidia.com/compute/redist/cudnn/v7.1.4/cudnn-9.2-linux-x64-v7.1.tgz
tar xzf cudnn-9.2-linux-x64-v7.1.tgz
sudo cp -a cuda/lib64/* /usr/local/lib/
sudo cp -a cuda/include/* /usr/local/include/
sudo ldconfig

rm cuda-repo-ubuntu1804_10.1.168-1_amd64.deb
rm -R -f cuda cudnn-9.2-linux-x64-v7.1.tgz
