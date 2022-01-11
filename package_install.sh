#! /bin/bash

sudo pacman -Syu


# Downloading and installing VS Code
cd ~/Downloads
sudo pacman -S git
git clone https://AUR.archlinux.org/visual-studio-code-bin.git
cd visual-studio-code-bin
makepkg -s
sudo pacman -U visual-studio-code-bin-*.pkg.tar.zst

# clean up Downloads folder
cd ../ && sudo rm -rfv visual-studio-code-bin

# Downloading other necessary packages
sudo pacman -S vlc nano python-virtualenv gnome-music

# Install Desktop Environment
sudo pacman -S xorg xorg-server gnome gdm
sudo systemctl enable gdm.service
# sudo systemctl start gdm.service

