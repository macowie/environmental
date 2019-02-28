#!/usr/bin/env bash

# Ensure Xcode utilities are good to go
softwareupdate -i -a
xcode-select --install

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Basic dependencies
brew install autoconf coreutils gpg

# Domains for local rails apps
brew install puma/puma/puma-dev

# Databases
brew install sqlite postgresql mysql

# Multimedia libraries
brew cask install xquartz # Required by mupdf
brew install vips imagemagick ffmpeg pandoc poppler mupdf

# Cloud Services
brew install heroku/brew/heroku awscli

# Miscellaneous CLI tools
brew install git vim ripgrep stow htop

# Funsies
brew install fortune figlet cowsay lolcat youtube-dl
