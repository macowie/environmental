#!/usr/bin/env bash

source ./utils/utils.sh

if is_fedora; then
  sudo dnf install -y postgresql postgresql-server postgresql-contrib libpq-devel
elif is_ubuntuy; then
  sudo apt install -y postgresql postgresql-contrib libpq-dev
fi

sudo postgresql-setup --initdb
sudo systemctl start postgresql
sudo systemctl enable postgresql

# Create default postgresql user and database
sudo -u postgres createuser $USER --superuser --login
createdb $USER
