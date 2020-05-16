#!/usr/bin/sh

# Load fonts.
xset +fp $HOME/.fonts
xset fp rehash

# Set solid color as background.
# xsetroot -solid "#333333"

# Set wallpapers as background.
feh --randomize --bg-fill $HOME/.config/i3/wallpapers/*
