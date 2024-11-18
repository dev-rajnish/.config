#!/bin/bash

WALLPAPER="$(find $HOME/.config/walls/  -type f | shuf -n 1)"

swaybg -m fill -i "$WALLPAPER" &
