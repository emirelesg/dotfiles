#!/bin/bash

# Load fonts.
xset +fp $HOME/.fonts
xset fp rehash

# Set the desired monitor setup.
$HOME/.screenlayout/i3.sh

# Set solid color as background.
# xsetroot -solid "#333333"

# Set wallpapers as background.
feh --randomize --bg-fill $HOME/.config/i3/wallpapers/*

# Set keyboard layouts. First layout has priority.
setxkbmap -layout latam,de
