#!/bin/bash
sudo apt update && sudo apt upgrade
sudo apt-get install  -y  git python3-pip python-is-python3 cmake gcc g++ libopencv-dev build-essential libglib2.0-dev libeigen3-dev net-tools libgl1-mesa-dev libegl1-mesa-dev libglew-dev
mkdir ~/tools/
cd ~/tools/
git clone https://github.com/MrAsana/Intuitive_Control.git
cd ~/tools/Intuitive_Control/Pangolin
sed -i '33a\#include <limits>' ~/tools/Pangolin/include/pangolin/gl/colour.h
mkdir build
cd build
cmake -DCPP11_NO_BOOST=1 ..
make


bash ~/tools/install-realsense.sh

cd ~/tools/Intuitive_Control/lcm
mkdir build
cd build
cmake ..
make
sudo make install

cd ~/tools/Intuitive_Control/ORB_SLAM3
sudo chmod +x build.sh
./build.sh
cd ~/tools/ORB_SLAM3/Thirdparty/Sophus/build/
sudo make install

echo 'export LD_LIBRARY_PATH=~/tools/Pangolin/build/src/:~/tools/ORB_SLAM3/Thirdparty/DBoW2/lib:~/tools/ORB_SLAM3/Thirdparty/g2o/lib:~/tools/ORB_SLAM3/lib:$LD_LIBRARY_PATH' >> ~/.bashrc

bash ~/tools/install-pinocchio.sh


cd ~/tools/Intuitive_Control/vio_arm
pip install -r requirements.txt

