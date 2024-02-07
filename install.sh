#!/bin/bash
sudo apt update -y && sudo apt upgrade -y
sudo apt-get install  -y  git python3-pip python-is-python3 cmake gcc g++ libopencv-dev libeigen3-dev
mkdir ~/tools/
cd ~/tools/
git clone https://github.com/MrAsana/Intuitive_Control.git
cd ~/tools/Intuitive_Control/Pangolin
sed -i '33a\#include <limits>' ~/tools/Pangolin/include/pangolin/gl/colour.h
mkdir build
cd build
cmake -DCPP11_NO_BOOST=1 ..
make


cd ~/tools/Intuitive_Control/ORB_SLAM3
sudo chmod +x build.sh
./build.sh
cd ~/tools/ORB_SLAM3/Thirdparty/Sophus/build/
sudo make install

echo 'export LD_LIBRARY_PATH=~/tools/Pangolin/build/src/:~/tools/ORB_SLAM3/Thirdparty/DBoW2/lib:~/tools/ORB_SLAM3/Thirdparty/g2o/lib:~/tools/ORB_SLAM3/lib:$LD_LIBRARY_PATH' >> ~/.bashrc


cd ~/tools/Intuitive_Control/vio_arm
pip install -r requirements.txt

