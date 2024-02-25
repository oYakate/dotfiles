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
cd .config
if [ -L $HOME/.config/bspwm ]; then
  rm -rf $HOME/.config/bspwm
fi
if [ -L $HOME/.config/sxhkd ]; then
  rm -rf $HOME/.config/sxhkd
fi
if [ -L $HOME/.config/suckless ]; then
  rm -rf $HOME/.config/suckless
fi
if [ -L $HOME/.config/polybar ]; then
  rm -rf $HOME/.config/polybar
fi
if [ -L $HOME/.config/kitty ]; then
  rm -rf $HOME/.config/kitty
fi

cp * $HOME/.config/
cd ../
cd .local/bin
cp * ~/.local/src
echo "export $PATH=$HOME/.local/bin:$HOME/bin:/usr/local/bin:$PATH" >> ~/.zshrc
#.xinitrc file
echo "Which wm do you want to use?"
echo "1) bspwm"
echo "2) dwm"
echo "3) I'll do that myself"
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






































































                                                                                                                                                                   
