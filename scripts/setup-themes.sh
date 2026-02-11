#!/bin/bash
set -e

echo "[+] Setting up themes and icons dirs"
mkdir -p ~/.themes
mkdir -p ~/.icons

echo "[+] Installing extraction tools"
sudo pacman -S --noconfirm p7zip

echo "[+] Setting GTK theme"
# 7z x ~/black-shadow-hyprland/themes/Midnight-Red.7z -o"$HOME/.themes"
ln -sf ~/black-shadow-hyprland/themes/Black-n-White-GTK/ ~/.themes/

echo "[+] Extracting icons"
tar -xf ~/black-shadow-hyprland/themes/ColorFlow.tar.xz -C ~/.icons


echo "[+] Fixing permissions"
chmod -R 755 ~/.themes ~/.icons

echo "[+] Setting up themes..."

gsettings set org.gnome.desktop.interface gtk-theme "Midnight-Red"
gsettings set org.gnome.desktop.interface icon-theme "ColorFlow"
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'

echo "[+] Done"

