output=$(wlr-randr)
result=$(echo "$output" | grep 'HDMI-A-2 "Dell Inc. DELL U2414H X4J7185P1HCL (HDMI-A-2)"')

if [[ -n "$result" ]]; then
  wlr-randr --output eDP-1 --off 
else
  wlr-randr --output eDP-1 --on
fi

