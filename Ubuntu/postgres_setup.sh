#!/usr/bin/env bash 

sudo apt install -y postgresql postgresql-contrib libpq-dev
                    
# Create default postgresql user and database
sudo -u postgres createuser $USER --superuser --login
createdb $USER