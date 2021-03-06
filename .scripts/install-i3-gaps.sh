#!/usr/bin/bash

# Based on https://gist.github.com/boreycutts/6417980039760d9d9dac0dd2148d4783

apt install \
    libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev \
    libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev \
    libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev \
    libxkbcommon-x11-dev autoconf xutils-dev libtool automake libxcb-shape0-dev \
    libxcb-xrm-dev
git clone https://www.github.com/Airblader/i3 i3-gaps
cd i3-gaps
git checkout gaps && git pull
autoreconf --force --install
rm -rf build
mkdir build
cd build
../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers
make
make install
