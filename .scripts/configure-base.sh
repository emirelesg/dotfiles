#!/usr/bin/bash

apt update
apt upgrade

apt remove --auto-remove \
	pidgin thunderbird xfburn mugshot simple-scan gnome-mines gnome-sudoku \
	sgt-launcher sgt-puzzles parole \
	humanity-icon-theme xfce4-dict

apt install \
	git arandr xbacklight curl vlc kazam

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
