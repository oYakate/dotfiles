if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    	DIR=~/.config/polybar/spectrwm/
	MONITOR=$m polybar -q spectrwm -c "$DIR"/config &#polybar --reload i3 &
  done
else
  polybar --reload spectrwm &
fi
