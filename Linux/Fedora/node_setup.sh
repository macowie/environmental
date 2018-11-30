#!/usr/bin/env bash

# Install Node (11.x) and Yarn
curl -sL https://rpm.nodesource.com/setup_11.x | bash -
curl --silent --location https://dl.yarnpkg.com/rpm/yarn.repo | sudo tee /etc/yum.repos.d/yarn.repo 
sudo dnf install yarn