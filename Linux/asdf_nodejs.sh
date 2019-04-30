#!/usr/bin/env bash

NODEJS_VERSION="10.15.3"

asdf plugin-add nodejs

bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring
asdf install nodejs $NODEJS_VERSION
asdf global nodejs $NODEJS_VERSION
npm install -g yarn
npm install -g lsp-tsserver
