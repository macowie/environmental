#!/usr/bin/env bash

# Install TLP Advance Power Management
# https://linrunner.de/en/tlp/docs/tlp-linux-advanced-power-management.html

sudo dnf install -y tlp tlp-rdw 
 
read -p "Install ThinkPad battery extensions? " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
   sudo dnf install -y https://repo.linrunner.de/fedora/tlp/repos/releases/tlp-release.fc$(rpm -E %fedora).noarch.rpm 
   sudo dnf install -y akmod-tp_smapi akmod-acpi_call kernel-devel   
fi

tlp start
tlp-stat -s
