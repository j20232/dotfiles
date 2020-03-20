echo "Setting C++ on Ubuntu"

# OpenCV
sudo apt update
sudo apt upgrade
sudo apt -y install build-essential cmake unzip pkg-config
sudo apt -y install libjpeg-dev libpng-dev libtiff-dev
sudo apt -y install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
sudo apt -y install libxvidcore-dev libx264-dev
sudo apt -y install libgtk-3-dev
sudo apt -y install libatlas-base-dev gfortran

sudo apt install clang-format
