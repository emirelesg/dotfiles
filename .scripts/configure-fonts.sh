#!/usr/bin/sh

cd $HOME/.fonts
mkfontdir
mkfontscale
xset +fp $HOME/.fonts
xset fp rehash
fc-cache -f -v
xlsfonts
