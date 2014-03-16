#!/bin/bash

sudo apt-get install -y autoconf automake libtool libexpat1-dev libncurses5-dev bison flex patch curl cvs texinfo build-essential subversion gawk python-dev gperf

build_tool="~/x-tools/arm-unknown-linux-gnueabi/bin/g++"
bbox=busybox-1.22.1.tar.bz2
wget http://www.busybox.net/downloads/$bbox
tar xjf $bbox
busy_dir=`basename $bbox .tar.bz2`
cd $busy_dir
comp=$HOME"/x-tools/arm-unknown-linux-gnueabi/bin/arm-unknown-linux-gnueabi-"
CROSS_COMPILE=$comp make menuconfig
CROSS_COMPILE=$comp make
