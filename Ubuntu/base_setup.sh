#!/usr/bin/env bash

# Upgrade base packages
sudo apt update
sudo apt upgrade

# Install build essentials
sudo apt install -y autoconf bison build-essential libssl-dev libyaml-dev \
                    libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev \
                    libgdbm5 libgdbm-dev libsqlite3-dev

sudo apt install -y chromium-chromedriver
ln -s /usr/lib/chromium-browser/chromedriver /usr/bin/chromedriver
# Install multimedia libraries
sudo apt install -y ffmpeg libvips imagemagick mupdf

# Uncomment for mysql.. if necessary
# sudo apt install -y mysql-server mysql-client libmysqlclient-dev
