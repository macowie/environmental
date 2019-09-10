#!/usr/bin/env bash

source ./utils/utils.sh

# Sublime Text & Merge
if is_fedora; then
  sudo rpm -v --import https://download.sublimetext.com/sublimehq-rpm-pub.gpg
  sudo dnf config-manager --add-repo https://download.sublimetext.com/rpm/stable/x86_64/sublime-text.repo
  sudo dnf install -y sublime-text sublime-merge
elif is_ubuntuy; then
  wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
  echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
  sudo apt update
  sudo apt install -y sublime-text sublime-merge
fi

# Visual Studio Code
if is_fedora; then
  sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
  sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
  dnf check-update
  sudo dnf install -y code
elif is_ubuntuy; then
  curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
  sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
  sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
  sudo apt update
  sudo apt install -y code
fi

# Flatpak everything possible
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

flatpak install -y flathub \
  org.gnome.Evolution \
  org.libreoffice.LibreOffice \
  org.kde.okular \
  de.wolfvollprecht.UberWriter \
  org.signal.Signal \
  org.telegram.desktop \
  com.slack.Slack \
  com.discordapp.Discord \
  org.gnome.Lollypop \
  io.github.Pithos \
  com.spotify.Client \
  io.github.celluloid_player.Celluloid \
  org.videolan.VLC \
  org.shotcut.Shotcut \
  org.audacityteam.Audacity \
  org.zealdocs.Zeal \
  io.dbeaver.DBeaverCommunity \
  com.github.alecaddd.sequeler \
  org.freecadweb.FreeCAD \
  com.transmissionbt.Transmission \
  org.gnome.Chess \
  org.gnome.Mines \
  org.gnome.Dictionary \
  org.gnome.Todo \
  org.gnome.FeedReader \
  org.gnome.Notes
