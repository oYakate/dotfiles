#!/bin/sh


# Function to kill programs
killprogs() {
	# Kill udisks-glue
	pkill -x udisks-glue
	# Kill panel
	pkill -x panel
	# Kill Redshift
	pkill -x redshift
}

# Restart function
# shellcheck source=/dev/null
restart() {
  systemctl reboot
}

# Logout function
logout() {
  sleep 1 && killall Hyprland
}



items="restart
logout
hibernate
suspend
reboot
poweroff"

# Open menu
selection=$(printf '%s' "$items" | wofi --show dmenu -p'select in:')

case $selection in
	restart)
		restart
		;;
	logout)
		logout
		;;
	hibernate)
		systemctl hibernate
		;;
	suspend)
		systemctl suspend
		;;
	reboot)
		logout
		systemctl reboot
		;;
	halt|poweroff|shutdown)
		logout
		systemctl poweroff
		;;
esac

exit
