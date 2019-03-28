#!/usr/bin/env bash

source ./utils/utils.sh

# Pull latest ASDF
git clone https://github.com/asdf-vm/asdf.git ~/.asdf
cd ~/.asdf
git checkout "$(git describe --abbrev=0 --tags)"

# Activate asdf in bash & fish
append_if_not_present ~/.bash_profile 'source $HOME/.asdf/asdf.sh'
append_if_not_present ~/.bashrc 'source $HOME/.asdf/completions/asdf.bash'
append_if_not_present ~/.config/fish/config.fish 'source ~/.asdf/asdf.fish'
mkdir -p ~/.config/fish/completions && cp ~/.asdf/completions/asdf.fish ~/.config/fish/completions

# Enable .ruby-version, .node-version, etc files
echo "legacy_version_file = yes" > $HOME/.asdfrc

echo "** asdf-vm is now installed. Please open a new terminal to proceed. **"