#!/bin/sh

wall=$(find $HOME/wallpapers -type f -name "*.jpg" -o -name "*png" -o -name "*.jpeg" | wofi --show dmenu -p"select wallpaper")

wal -i $wall

swww img $wall
killall waybar
waybar
kill -USR1 kitty
rm -f $HOME/.cache/wallpath.txt
touch $HOME/.cache/wallpath.txt
cat $wall >> $HOME/.cache/wallpath.txt 

