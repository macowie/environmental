#!/usr/bin/env bash 

# Install Node 11.x and Yarn
curl -sL https://deb.nodesource.com/setup_11.x | sudo -E bash -
curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install -y nodejs yarn
