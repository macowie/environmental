#!/usr/bin/env bash

source ./utils/utils.sh

RUBY_VERSION="2.6.2"

asdf plugin-add ruby

touch $HOME/.default-gems
append_if_not_present $HOME/.default-gems solargraph
append_if_not_present $HOME/.default-gems gemfury
append_if_not_present $HOME/.default-gems rdebug

asdf install ruby $RUBY_VERSION
asdf global ruby $RUBY_VERSION
ASDF_RUBY_VERSION=$RUBY_VERSION gem update --system
