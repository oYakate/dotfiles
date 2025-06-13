#!/bin/bash

# Directory where your images are located
DIR="$HOME/Pictures/wallpapers"  # Modify as needed

PROMPT="Select your wallpaper <3"
THEME="/home/yakate/.config/rofi/themes/select-img.rasi"
MENU="rofi -dmenu -p $PROMPT -theme $THEME -dmenu"

IMG=$(for a in $DIR/*.{jpg,jpeg,png,gif,bmp}; do echo -en "$a\0icon\x1f$a\n" ; done | $MENU)

swaybg --image $IMG &
wal -i $IMG &
