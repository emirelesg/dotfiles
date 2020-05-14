#!/usr/bin/bash

apt update
apt upgrade

apt remove --auto-remove \
	pidgin thunderbird xfburn mugshot simple-scan gnome-mines gnome-sudoku \
	sgt-launcher sgt-puzzles parole

apt install \
	git arandr xbacklight curl vlc kazam net-tools gcc g++ make

# https://github.com/nodesource/distributions/blob/master/README.md
curl -sL https://deb.nodesource.com/setup_14.x | bash -
apt-get install nodejs
npm install -g @vue/cli

snap install chromium
snap install spotify
snap install code --classic

echo "xbacklight config for Thinkpad E470"
/bin/cat <<EOM > /usr/share/X11/xorg.conf.d/20-intel.conf
Section "Device"
Identifier "card0"
Driver "intel"
Option "Backlight" "intel_backlight"
BusID "PCI:0:2:0"
EndSection
EOM

echo "Remove xubuntu entry from xsessions"
rm /usr/share/xsessions/xubuntu.desktop
