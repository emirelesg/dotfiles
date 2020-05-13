#!/usr/bin/bash

# suckless-tools contains dmenu
# rxvt-unicode used as a terminal in i3-gaps
# lxappearance sets the appearance in i3-gaps

apt install \
	suckless-tools rxvt-unicode lxappearance rofi

# Remove i3-* entry from menu
rm /usr/share/xsessions/i3-*.desktop
