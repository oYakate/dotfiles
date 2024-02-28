if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    	DIR=~/.config/polybar/i3/
	MONITOR=$m polybar -q i3 -c "$DIR"/config &#polybar --reload i3 &
  done
else
  polybar --reload i3 &
fi
