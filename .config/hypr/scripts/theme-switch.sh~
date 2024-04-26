#!/usr/bin/env bash
hyprland_dir="$HOME/.config/hypr/themes"
rofi_dir="$HOME/.config/rofi/themes"
kitty_dir="$HOME/.config/kitty/themes"
waybar_dir="$HOME/.config/waybar/themes"
waybar_conf_dir="$HOME/.config/waybar/configs"


MENU="rofi -dmenu"

#Theme sel
theme1=" Frieren"
theme2=" Akame"
theme3=" EsDeath"
theme4=" Sakura"
theme5=" Truck-kun"
theme6=" Ayanokoji"
theme7=" main"
exit_menu="󰌑 exit"

options="$theme1\n$theme2\n$theme3\n$theme4\n$theme5\n$theme6\n$theme7\n$exit_menu"

change_theme(){

	cp ${hyprland_dir}/$1.conf $hypr_dir/color.main
	cp ${rofi_dir}/$1.rasi ${rofi_dir}/../config.rasi
	cp ${kitty_dir}/$1.conf ${kitty_dir}/main.conf
	cp ${waybar_dir}/$1.css ${waybar_dir}/../style.css
	cp ${waybar_conf_dir}/$1 ${waybar_conf_dir}/../config
	hyprctl reload
	killall waybar
	waybar
	kill -USR1 $(pidof kitty)
	pywalfox update
}

update_wallpaper(){
	pkill -kill swaybg
	swaybg -m fill -i $@ &
	wal -i $@ -n -s -t
}

select="$(echo -e "$options" | $MENU -p "Choose a theme: ")"
case $select in
	$theme1)update_wallpaper $HOME/wallpapers/frieren.jpeg
		change_theme catpuccin
		;;
	$theme2)update_wallpaper $HOME/wallpapers/akame.jpg
		change_theme akame
		;;
	$theme3)
		update_wallpaper $HOME/wallpapers/rosepine.jpg
	#	update_wallpaper $HOME/wallpapers/rosepine/rosepine.jpg
		change_theme rosepine
		;;
	$theme4)update_wallpaper $HOME/wallpapers/sakura.jpg
		change_theme sakura
	
		;;
	$theme5)
		;;
	$theme6)update_wallpaper $HOME/wallpapers/nord/nord.png
		change_theme nord
		;;
	$theme7)
		update_wallpaper $HOME/wallpapers/everforest/everforest.jpg
		change_theme everforest
		;;
	$exit_menu)exit
		   ;;
   esac






