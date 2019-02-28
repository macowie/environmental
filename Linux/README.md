# Linux Setup

A not-so opinionated web dev environment. Now with Fedora and Ubuntu flavors.
Ubuntu scripts (Should) work for both real installs and Windows Subsystem for
Linux.

## Base setup

* Build essentials
* Multimedia libraries for image/video/pdf manipulation & preview
* Chromium & Chromedriver for automated testing

## ASDF

Installs [asdf-vm](https://asdf-vm.com) for managing various language versions
and environments. Included are scripts to install and set up the latest versions
for the languages I'm currently using.

## Fonts

Installs some of my personal favorite fonts

* [Hack](https://sourcefoundry.org/hack/)
* [IBM Plex](https://www.ibm.com/plex/)
* [Fira Code](https://github.com/tonsky/FiraCode).

## TLP

Installs and starts [TLP](https://linrunner.de/en/tlp/tlp.html) power
management for much improved laptop battery life.

## PostgreSQL

Installs and creates a default database for the current user

## Note on configuration

These scripts are just meant to get things installed and ready. How you
configure them is your business. If you wan to see mine, they're
[here](https://github.com/macowie/dotfiles)