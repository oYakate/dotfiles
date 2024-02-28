if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
	DIR=~/.config/polybar/bspwm/
	MONITOR=$m polybar -q bspwm -c "$DIR"/config & 
  done
else
  polybar --reload bspwm &
fi
