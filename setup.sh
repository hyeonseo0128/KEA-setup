#!/bin/bash

sudo apt-get -y install python3-pip
sudo apt-get -y install curl
sudo apt-get -y install nano

sudo apt install -y nvidia-jetpack
sudo apt-get install -y libopenblas-base libopenmpi-dev

pip3 install --upgrade pip 
pip3 install Cython
pip3 install numpy

wget https://nvidia.box.com/shared/static/fjtbno0vpo676a25cgvuqc1wty0fkkg6.whl -O torch-1.10.0-cp36-cp36m-linux_aarch64.whl
pip3 install torch-1.10.0-cp36-cp36m-linux_aarch64.whl

git clone --branch v0.11.1 https://github.com/pytorch/vision torchvision
sudo python3 torchvision/setup.py install

git clone https://github.com/ultralytics/yolov5.git
pip3 install -r yolov5/requirements.txt
