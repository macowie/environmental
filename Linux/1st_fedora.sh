#!/usr/bin/env bash

# Setup RPM Fusion
sudo dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
## Enable AppStream metadata for GNOME Software/KDE Discover
sudo dnf groupupdate -y core
## Update GStreamer, etc complementary components
sudo dnf groupupdate -y multimedia --setop="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin
sudo dnf groupupdate -y sound-and-video
sudo dnf install -y rpmfusion-free-release-tainted
sudo dnf install -y libdvdcss

# Install and enable codecs for Firefox
sudo dnf config-manager --set-enabled fedora-cisco-openh264
sudo dnf install gstreamer1-plugin-openh264 mozilla-openh264

# Upgrade base packages
sudo dnf upgrade --refresh -y

# Install basic dev tools + libs
sudo dnf groupinstall -y "Development Tools" "Development Libraries"
sudo dnf install -y openssl-devel libyaml-devel libffi-devel libsq3-devel \
                    gcc-c++ 
sudo dnf install -y inotify-tools git git-credential-libsecret curl \
				    ripgrep bat exa fd-find neovim tilix \
				    fuse-exfat exfat-utils

# Install chromium & chromedriver for automated testing
sudo dnf install -y chromium chromedriver chromium-libs-media-freeworld

# Install multimedia libraries
sudo dnf install -y ffmpeg vips ImageMagick mupdf

# Funsies
sudo dnf install -y neofetch fortune-mod figlet cowsay lolcat youtube-dl

# Heroku CLI
curl https://cli-assets.heroku.com/install.sh | sh