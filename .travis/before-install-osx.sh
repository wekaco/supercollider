#!/bin/sh

export BREW_NO_AUTO_UPDATE=1
export BREW_NO_ANALYTICS=1

# according to https://docs.travis-ci.com/user/caching#ccache-cache
BREW_NO_AUTO_UPDATE=1 brew install ccache
export PATH="/usr/local/opt/ccache/libexec:$PATH"

BREW_NO_AUTO_UPDATE=1 brew install libsndfile || true
BREW_NO_AUTO_UPDATE=1 brew install portaudio || true
BREW_NO_AUTO_UPDATE=1 brew install qt5 || true
brew link qt5 --force

# To get less noise in xcode output
gem install xcpretty
