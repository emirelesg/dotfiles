#!/usr/bin/sh

mkfontdir
mkfontscale
xset +fp $HOME/.fonts
xset fp rehash
fc-cache -f -v
xlsfonts
