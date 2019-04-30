#!/usr/bin/env bash

# Install TLP Advance Power Management
# https://linrunner.de/en/tlp/docs/tlp-linux-advanced-power-management.html

source ./utils/utils.sh

read THINKPAD -p "Install ThinkPad battery extensions? " -n 1 -r
echo

if [ is_fedora ]; then
  sudo dnf install -y tlp tlp-rdw

  if [[ $THINKPAD =~ ^[Yy]$ ]]; then
    sudo dnf install -y https://repo.linrunner.de/fedora/tlp/repos/releases/tlp-release.fc$(rpm -E %fedora).noarch.rpm
    sudo dnf install -y akmod-tp_smapi akmod-acpi_call kernel-devel
  fi
elif [ is_ubuntuy ]; then
  sudo add-apt-repository ppa:linrunner/tlp
  sudo apt update
  sudo apt install tlp tlp-rdw

  if [[ $THINKPAD =~ ^[Yy]$ ]]; then
     sudo apt-get install tp-smapi-dkms acpi-call-dkms
  fi
fi

sudo tlp start
sudo tlp-stat -s
