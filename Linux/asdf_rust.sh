#!/usr/bin/env bash

RUST_VERSION="1.42.0"

asdf plugin-add rust

asdf install rust $RUST_VERSION
asdf global rust $RUST_VERSION

