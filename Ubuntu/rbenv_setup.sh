#!/bin/bash

git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
source ~/.bashrc
mkdir -p "$(rbenv root)"/plugins
git clone https://github.com/znz/rbenv-plug.git "$(rbenv root)/plugins/rbenv-plug"
rbenv plug ruby-build
rbenv plug rbenv-update
rbenv plug bundle-exec
rbenv plug bundler-ruby-version
rbenv install 2.5.1
rbenv global 2.5.1
