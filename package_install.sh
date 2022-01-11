#! /bin/bash

sudo pacman -Syu


# Downloading and installing VS Code
cd ~/Downloads
sudo pacman -S git
git clone https://AUR.archlinux.org/visual-studio-code-bin.git
cd visual-studio-code-bin
makepkg -s
sudo pacman -U visual-studio-code-bin-*.pkg.tar.zst




sudo pacman -S vlc nano


clean up Downloads folder
cd ../ && sudo rm -rfv visual-studio-code-bin
