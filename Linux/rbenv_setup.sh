#!/usr/bin/env bash 

git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
RBENV="$HOME/.rbenv/bin/rbenv"
$RBENV init -
mkdir -p ~/.rbenv/plugins
git clone https://github.com/znz/rbenv-plug.git ~/.rbenv/plugins/rbenv-plug
$RBENV plug ruby-build
$RBENV plug rbenv-update
$RBENV plug bundle-exec
$RBENV plug bundler-ruby-version
$RBENV install 2.5.3
$RBENV global 2.5.3