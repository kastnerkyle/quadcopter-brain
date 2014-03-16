#!/bin/bash

crossball=crosstool-ng-1.18.0.tar.bz2
wget http://crosstool-ng.org/download/crosstool-ng/$crossball
sudo apt-get install -y gcj-jdk
tar xjf $crossball
prefix_dir=`pwd`
cd `basename $crossball .tar.bz2`
./configure --prefix=$prefix_dir
make
make install
cd ..
bin/ct-ng arm-unknown-linux-gnueabi 
bin/ct-ng build
