#!/usr/bin/bash

# Based on https://gist.github.com/kuznero/f4e983c708cd2bdcadc97be695baacf8

apt-get install \
  cmake cmake-data libcairo2-dev libxcb1-dev libxcb-ewmh-dev \
  libxcb-icccm4-dev libxcb-image0-dev libxcb-randr0-dev \
  libxcb-util0-dev libxcb-xkb-dev pkg-config python3-xcbgen \
  xcb-proto libxcb-xrm-dev libasound2-dev libmpdclient-dev \
  libiw-dev libcurl4-openssl-dev libpulse-dev \
  libxcb-composite0-dev xcb libxcb-ewmh2 g++
git clone https://github.com/jaagr/polybar.git
cd polybar
git checkout 3.4.2
./build.sh
