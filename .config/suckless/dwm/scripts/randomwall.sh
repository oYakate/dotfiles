#!/bin/sh

wall=$(find $HOME/wallpapers -type f -name "*.jpg" -o -name "*png" | shuf -n 1)

wal -i $wall
feh --bg-scale $wall $wall
kill -USR1 $(pidof kitty)
killall dunst
dunst &
xdotool key super+F5
notify-send wallpaper "succesfully set a new wallpaper"
