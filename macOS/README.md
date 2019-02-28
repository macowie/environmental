# Environmental macOS Setup

Installs [Homebrew](https://brew.sh) uses to bootstrap the rest of the installs

## Base setup

* Homebrew
* Build essentials
* Multimedia libraries for image/video/pdf manipulation & preview
* Common tools; git, vim, ripgrep, etc.
* Heroku and AWS CLIs
* Chromedriver for automated testing
* Common database servers and clients

## Additional apps

Uses Homebrew's cask system to grab stuff not in the App Store

* Firefox Developer Edition and Chromium
* Work stuff; 1password, Figma, Basecamp
* Handy utilities; KeepingYouAwake, Transmit

## Languages

Use the [asdf-vm](https://asdf-vm.com) scripts in the Linux folder. They'll
work on macOS too after the `1st_macos` script is run.