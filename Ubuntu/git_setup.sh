#!/usr/bin/env bash 

# Installs git and configures a secure credentials store via libsecret
# WSL installs should instead use Git for Windows' credential manager

sudo apt-get install git libsecret-1-0 libsecret-1-dev -y 
sudo make directory=/usr/share/doc/git/contrib/credential/libsecret
git config --global credential.helper /usr/share/doc/git/contrib/credential/libsecret/git-credential-libsecret
