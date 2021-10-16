#!/bin/sh
apt update
apt install -y python3-pillow gcc g++ gcc-arm-none-eabi cmake make python3 python3-pip python3-setuptools libsdl2-dev libsdl2-image-dev libsdl2-net-dev unzip
pip3 install 32blit