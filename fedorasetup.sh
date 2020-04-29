#!/bin/bash
#~~~This will begin by installing all imortant programs
#~~~Make sure PC is connected to internet 
echo "This script will update Fedora system and install most delicious programs SUDO & Internet required"
#Update system first
sudo dnf update -y &&
#~~~~Packages installed: Tilix teminal emulator, neovim editor, htop, radeontop, lm-sensors, ranger file manager, fish shell
sudo dnf install -y tilix neovim htop lm-sensors ranger fish gnome-tweaks
#
#~~~~~~~~~~~~~~~~~Install sublime text and add to repo~~~~~~~~~~~~~
sudo rpm -v --import https://download.sublimetext.com/sublimehq-rpm-pub.gpg
sudo dnf config-manager --add-repo https://download.sublimetext.com/rpm/stable/x86_64/sublime-text.repo
sudo dnf install sublime-text
#~~~~~~ Install Visual Studio Code & add to repo ~~~~~~~
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
sudo dnf check-update
sudo dnf install code
#~~~~~~~Install flatpaks zoom & transmission
flatpak install flathub com.transmissionbt.Transmission && flatpak install flathub us.zoom.Zoom
#
# ~~~~~~~~~ This section will set default shell to 'fish'
#~~~~~~~~~~~~~~~~ Needs to be changed, not working as expected
fish_Var="$(which fish)"
chsh $fish_var

