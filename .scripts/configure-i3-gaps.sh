#!/usr/bin/bash

# rxvt-unicode used as a terminal in i3-gaps
# lxappearance sets the appearance in i3-gaps

apt install \
	rxvt-unicode lxappearance rofi

# Remove i3-* entry from menu
rm /usr/share/xsessions/i3-*.desktop
