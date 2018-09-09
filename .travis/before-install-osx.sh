#!/bin/sh

export BREW_NO_ANALYTICS=1

# according to https://docs.travis-ci.com/user/caching#ccache-cache
brew install ccache --force-bottle
export PATH="/usr/local/opt/ccache/libexec:$PATH"

brew install libsndfile --force-bottle || true
brew install portaudio --force-bottle || true
brew install qt5 --force-bottle || true
brew link qt5 --force

# To get less noise in xcode output
gem install xcpretty
