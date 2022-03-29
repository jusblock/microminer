#!/bin/bash

sudo apt update
sudo apt install build-essential
sudo apt-get install autotools-dev
sudo apt-get install automake
sudo apt-get install libcurl4-openssl-dev
sudo apt-get install libssl-dev

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

# git clone https://gitlab.com/blockchain25/microminer-test.git
# git clone git@gitlab.com:blockchain25/microminer-test.git


# cd microminer && \
                # ./autogen.sh && \
                # ./configure CFLAGS="-O3" && \
                # make install
#sudo rm -rf microminer

#wget https://gitlab.com/c2511/microminer-test/-/raw/master/setup.sh -O - | bash
