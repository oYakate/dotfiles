setxkbmap pl
xrandr --output HDMI-2 --auto --left-of eDP-1 

picom & 
#~/.config/suckless/dwm/scripts/status.sh &
dwmblocks &
dunst &
~/.config/suckless/dwm/scripts/randomwall.sh &
exec dwm
