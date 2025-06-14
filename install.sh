#!/bin/bash

if [ "$(basename "$PWD")" = "dotfiles" ]; then
    dotfiles_dir=$(pwd)
else
    cd $HOME
    echo "cloning dotfiles...\n"

    git clone https://github.com/oYakate/dotfiles.git
    cd dotfiles
    dotfiles_dir=$(pwd)
fi

sudo pacman -Sy yay --noconfirm

yay -Sy adobe-source-han-sans-jp-fonts bibata-cursor-theme-bin blueman bluez-utils catppuccin-gtk-theme-mocha cava code eza fastfetch fzf git glow htop hyprland iwd jq kitty lxappearance nano nautilus neovim networkmanager network-manager-applet opentabletdriver otf-takao pacman-contrib pavucontrol rofi-wayland spotify swaybg thunar tty-clock vesktop vim w3m waybar wget wl-clipboard xournalpp zsh --noconfirm

echo "Creating a backup of your .config directory..."
mv $HOME/.config $HOME/.config-bck

echo "installing dotfiles...\n"


echo "do you want to install oh my zsh? [y/n] "
read answer

case "$answer" in
  [yY])
    echo "Installing zsh..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    mv ./.oh-my-zsh/custom/* ~/.oh-my-zsh/custom/
    ;;
  [nN])
    echo "Skipping..."
    ;;
  *)
    echo "Invalid input. Skipping.."
    ;;
esac



