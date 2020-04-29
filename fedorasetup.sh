#!/bin/bash
#This will begin by installing all imortant programs
#Make sure PC is connected to internet 
echo "This script will update Fedora system and install most delicious programs SUDO & Internet required"
#Update system first
sudo dnf update -y &&
#Packages installed: Tilix teminal emulator, neovim editor, htop, radeontop, lm-sensors, ranger file manager, fish shell
sudo dnf install -y tilix neovim htop lm-sensors ranger fish
#
#
# Install sublime text and add to repo
sudo rpm -v --import https://download.sublimetext.com/sublimehq-rpm-pub.gpg
sudo dnf config-manager --add-repo https://download.sublimetext.com/rpm/stable/x86_64/sublime-text.repo
sudo dnf install sublime-text
# Install flatpaks zoom & transmission
flatpak install flathub com.transmissionbt.Transmission && flatpak install flathub us.zoom.Zoom
