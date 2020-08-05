#!/usr/bin/sh

# Load fonts.
xset +fp $HOME/.fonts
xset fp rehash

# Set solid color as background.
# xsetroot -solid "#333333"

# Set wallpapers as background.
feh --randomize --bg-fill $HOME/.config/i3/wallpapers/*

# Create virtual1 sink for OBS
pactl load-module module-null-sink sink_name="OBS-Monitor" sink_properties=device.description="OBS-Monitor"
