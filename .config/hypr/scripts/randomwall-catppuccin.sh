#!/bin/sh

wall=$(find $HOME/Pictures/wallpapers-ctp -type f -name "*.jpg" -o -name "*png" | shuf -n 1)

wal -i $wall &

swaybg -i $wall &
killall waybar
waybar -c /home/yakate/.config/waybar/catppuccin/config.jsonc -s /home/yakate/.config/waybar/catppuccin/style.css
kill -USR1 kitty
