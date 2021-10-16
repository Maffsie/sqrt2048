#!/bin/sh
curl -fsSL https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | gpg --dearmor - > /etc/apt/trusted.gpg.d/kitware.gpg
apt update
apt install -y python3-pillow gcc g++ gcc-arm-none-eabi make python3 python3-pip python3-setuptools libsdl2-dev libsdl2-image-dev libsdl2-net-dev unzip software-properties-common lsb-release
apt-add-repository "deb https://apt.kitware.com/ubuntu/ $(lsb_release -cs) main"
apt remove --purge --auto-remove cmake
apt clean all
apt update
apt install -y kitware-archive-keyring
rm /etc/apt/trusted.gpg.d/kitware.gpg
apt update
apt install -y cmake
pip3 install 32blit