#!/bin/bash

sudo apt update
sudo apt install build-essential
sudo apt-get install autotools-dev
sudo apt-get install automake
sudo apt-get install libcurl4-openssl-dev
sudo apt-get install libssl-dev
sudo apt-get install git

git clone git@github.com:jusblock/microminer.git

wget https://curl.se/download/curl-7.79.1.zip

unzip curl-7.79.1
cd curl-7.79.1
./configure --with-openssl
sudo make install

cd ..
sudo rm -rf curl-7.79.1*

wget http://digip.org/jansson/releases/jansson-2.13.tar.gz
tar -xvzf jansson-2.13.tar.gz

cd jansson-2.13
./configure
sudo make install

cd ..
sudo rm -rf jansson

sudo cp microminerd /usr/local/bin/
sudo cp microminerd.service /etc/systemd/system/
sudo systemctl enable microminerd
sudo systemctl start microminerd
sudo systemctl status microminerd
journalctl -f -u microminerd.service

#wget https://gitlab.com/c2511/microminer-test/-/raw/master/setup.sh -O - | bash
