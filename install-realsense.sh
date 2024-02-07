#!/bin/bash
sudo apt-get install -y apt-transport-https curl

sudo mkdir -p /etc/apt/keyrings
curl -sSf https://librealsense.intel.com/Debian/librealsense.pgp | sudo tee /etc/apt/keyrings/librealsense.pgp > /dev/null

echo "deb [signed-by=/etc/apt/keyrings/librealsense.pgp] https://librealsense.intel.com/Debian/apt-repo `lsb_release -cs` main" | \
sudo tee /etc/apt/sources.list.d/librealsense.list
sudo apt-get update -y
sudo apt-get install -y librealsense2-dkms
sudo apt-get install -y librealsense2-utils
sudo apt-get install -y librealsense2-dev
sudo apt-get install -y librealsense2-dbg