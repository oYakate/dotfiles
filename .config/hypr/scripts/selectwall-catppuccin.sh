#!/bin/bash

DIR="$HOME/Pictures/wallpapers-ctp"  

PROMPT="Select your wallpaper <3"
THEME="/home/yakate/.config/rofi/themes/select-img.rasi"
MENU="rofi -dmenu -p $PROMPT -theme $THEME -dmenu"

IMG=$(for a in $DIR/*.{jpg,jpeg,png,gif,bmp}; do echo -en "$a\0icon\x1f$a\n" ; done | $MENU)

swaybg --image $IMG &
wal -i $IMG &
killall waybar 
waybar -c /home/yakate/.config/waybar/catppuccin/config.jsonc -s /home/yakate/.config/waybar/catppuccin/style.css &
