#!/usr/bin/env bash

# Setup RPM Fusion
sudo dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
## Enable AppStream metadata for GNOME Software/KDE Discover
sudo dnf groupupdate -y core
## Update GStreamer, etc complementary components
sudo dnf groupupdate -y multimedia
sudo dnf groupupdate -y sound-and-video

# Upgrade base packages
sudo dnf check-update
sudo dnf upgrade

# Install basic dev tools
sudo dnf groupinstall -y "Development Tools" "Development Libraries"
sudo dnf install -y openssl-devel libyaml-devel libffi-devel libsq3-devel gcc-c++

# Install global menu helpers
sudo dnf install -y libdbusmenu-gtk3 libdbusmenu-gtk2 libdbusmenu-jsonloader

# Install chromium & chromedriver for automated testing
sudo dnf install -y chromium chromedriver

# Install multimedia libraries
sudo dnf install -y ffmpeg vips ImageMagick mupdf
