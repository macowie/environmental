#!/usr/bin/env bash

source ./utils/utils.sh

# Upgrade base packages
sudo apt update
sudo apt upgrade

sudo apt install -y fish

# Install build essentials
sudo apt install -y autoconf bison build-essential libssl-dev libyaml-dev \
                    libreadline-dev zlib1g-dev libncurses-dev libffi-dev \
                    libgdbm-dev libsqlite3-dev libssh-dev unixodbc-dev

# Install multimedia libraries
sudo apt install -y ffmpeg libvips imagemagick mupdf

# Uncomment for mysql.. if necessary
# sudo apt install -y mysql-server mysql-client libmysqlclient-dev

if [ !is_wsl ]; then
  sudo apt install -y inotify-tools

  # Install chromedriver
  sudo apt install -y chromium-chromedriver
  ln -s /usr/lib/chromium-browser/chromedriver /usr/bin/chromedriver

  # Installs git and configures a secure credentials store via libsecret
  # WSL installs should instead use Git for Windows' credential manager
  sudo apt-get install git libsecret-1-0 libsecret-1-dev -y
  sudo make directory=/usr/share/doc/git/contrib/credential/libsecret
  git config --global credential.helper /usr/share/doc/git/contrib/credential/libsecret/git-credential-libsecret
fi
