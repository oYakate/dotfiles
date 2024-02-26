echo "running script...."
sleep 2
echo "
██╗   ██╗ █████╗ ██╗  ██╗ █████╗ ████████╗███████╗███████╗     ██████╗  ██████╗ ████████╗███████╗██╗██╗     ███████╗███████╗
╚██╗ ██╔╝██╔══██╗██║ ██╔╝██╔══██╗╚══██╔══╝██╔════╝██╔════╝     ██╔══██╗██╔═══██╗╚══██╔══╝██╔════╝██║██║     ██╔════╝██╔════╝
 ╚████╔╝ ███████║█████╔╝ ███████║   ██║   █████╗  ███████╗     ██║  ██║██║   ██║   ██║   █████╗  ██║██║     █████╗  ███████╗
  ╚██╔╝  ██╔══██║██╔═██╗ ██╔══██║   ██║   ██╔══╝  ╚════██║     ██║  ██║██║   ██║   ██║   ██╔══╝  ██║██║     ██╔══╝  ╚════██║
   ██║   ██║  ██║██║  ██╗██║  ██║   ██║   ███████╗███████║     ██████╔╝╚██████╔╝   ██║   ██║     ██║███████╗███████╗███████║
   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝   ╚═╝   ╚══════╝╚══════╝     ╚═════╝  ╚═════╝    ╚═╝   ╚═╝     ╚═╝╚══════╝╚══════╝╚══════╝
"
echo "are you running this on a freshly installed system? [Y/n]"
read answer
case $answer in
[Y/y] *)
echo "ok installing programs..."
sudo pacman -Sy --needed git base-devel python-pywal firefox kitty bspwm sxhkd cmake picom lolcat cowsay cmatrix cmus xorg-xinit -y && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
yay -S python-pywalfox snapd minecraft-launcher ani-cli y
;;

[N/n] *)

sudo pacman -S python-pywal firefox kitty bspwm sxhkd cmake picom lolcat cowsay cmatrix cmus xorg-xinit
echo "did you install yay? [Y/n]"
read answer1
  case $answer1 in
  [Y/y] *) echo "ok, installing programs"
  yay -S python-pywalfox snapd minecraft-launcher ani-cli -y
  ;;
  [N/n]
  echo "installing yay"
  pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
  echo"installing programs..."
  yay -S python-pywalfox snapd minecraft-launcher ani-cli -y

;;
*) echo "invalid answer! rerun the script"

echo "Did you back up your system? [Y/n]"
read answer
case $answer in
[Y/y] *) echo "ok proceeding..."
        sleep 1
;;
[N/n] *)sleep 1
        echo "do you still wish to proceed? [Y/n]"
        read answer1
        case $answer1 in 
        [Y/y] *) echo "ok"
        ;;
        [N/n] *) echo "okay stopping the script now..."
        exit
        
        ;;
;;
configs
echo "installing my dotfiles now..."
mkdir ~/.config/backups
echo "if you already had configs of your own in the .config directory they will be moved to ~/.config/backups."
cd .config
if [ -L $HOME/.config/bspwm ]; then
  mv $HOME/.config/bspwm $HOME/.config/backups
fi
if [ -L $HOME/.config/sxhkd ]; then
  mv $HOME/.config/sxhkd $HOME/.config/backups
fi
if [ -L $HOME/.config/suckless ]; then
  mv $HOME/.config/suckless $HOME/.config/backups
fi
if [ -L $HOME/.config/polybar ]; then
  mv $HOME/.config/polybar $HOME/.config/backups
fi
if [ -L $HOME/.config/kitty ]; then
  mv $HOME/.config/kitty $HOME/.config/backups
fi

cp * $HOME/.config/
cd ../
cd .local/bin
cp * ~/.local/bin
echo "export $PATH=$HOME/.local/bin:$HOME/bin:/usr/local/bin:$PATH" >> ~/.zshrc
#.xinitrc file
echo "Which wm do you want to use?"
echo "1) bspwm"
echo "2) dwm"
echo "3) I'll figure it out myself"
echo "eg. 1, 2, 3"
read answer
case $answer in
[1] *)
  echo "randomwallpaper-nopywal &" >> $HOME/.xinitrc
  echo "exec bspwm" >> $HOME/.xinitrc
;;
[2] *)
  echo "randomwallpaper &" >> $HOME/.xinitrc
  echo "exec dwm" >> $HOME/.xinitrc
  echo "done"
  sleep 1
;;
[3] *) sleep 1
;;
cd
startx

echo DONE! | dmenu -l 20

#end
exit






































































                                                                                                                                                                   
