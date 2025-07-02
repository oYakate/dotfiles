#!/bin/sh

wall=$(find $HOME/Pictures/wallpapers -type f -name "*.jpg" -o -name "*png" | shuf -n 1)

wal -i $wall &

swaybg -i $wall &
killall waybar
sleep 0.4
waybar 
kill -USR1 kitty
