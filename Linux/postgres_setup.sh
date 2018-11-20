#!/usr/bin/env bash 


# (assumes one of dnf or apt)
if hash dnf 2>/dev/null; then
    sudo dnf install -y postgresql postgresql-server postgresql-contrib libpq-devel
else
    sudo apt install -y postgresql postgresql-contrib libpq-dev
fi

sudo postgresql-setup --initdb
sudo service postgresql start
                    
# Create default postgresql user and database
sudo -u postgres createuser $USER --superuser --login
createdb $USER