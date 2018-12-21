#!/usr/bin/env bash

# Ensure Xcode utilities are good to go
softwareupdate -i -a
xcode-select --install

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Editors
brew cask install sublime-text visual-studio-code

# Dev browsers
brew cask install chromium homebrew/cask-versions/firefox-developer-edition

# Work
brew cask install 1password figma basecamp

# Miscellaneous
brew cask install keepingyouawake transmit

# Ruby management
brew install rbenv ruby-build puma/puma/puma-dev

# Database  s
brew install sqlite postgresql mysql

# Node.js
brew install nodejs yarn npm

# Multimedia libraries
brew cask install xquartz # Required by mupdf
brew install vips imagemagick ffmpeg pandoc poppler mupdf

# Cloud Services
brew install heroku/brew/heroku awscli

# Miscellaneous CLI tools
brew install git vim ripgrep stow htop

# Funsies
brew install fortune figlet cowsay lolcat youtube-dl
brew cask install iina
