#!/usr/bin/env bash

source ./utils/utils.sh

ERLANG_VERSION="22.3"
ELIXIR_VERSION="1.10-otp-22"

# Miscellaneous Prereqs
if is_fedora; then
  sudo dnf install -y wxGTK3-devel wxBase3 libiodbc unixODBC.x86_64 \
     		      erlang-odbc.x86_64 libxslt fop
elif is_ubuntuy; then
  sudo apt install -y libwxgtk3.0-dev libgl1-mesa-dev libglu1-mesa-dev \
		      libpng-dev xsltproc fop
elif is_mac; then
  brew install autoconf wxmac
fi

asdf plugin-add erlang
asdf plugin-add elixir

# Enable Erlang Documentation support
append_if_not_present ~/.bashrc 'export KERL_BUILD_DOCS=yes'
append_if_not_present ~/.config/fish/config.fish 'set -xg KERL_BUILD_DOCS yes'

asdf install erlang $ERLANG_VERSION
asdf global erlang $ERLANG_VERSION
asdf install elixir $ELIXIR_VERSION
asdf global elixir $ELIXIR_VERSION
