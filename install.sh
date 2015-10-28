#! /bin/bash

# exit if a command fails
set -e

# install ruby 2.1
apt-get update && apt-get install -y ruby2.1

# install mailcatcher
gem install --no-document mailcatcher

# cleanup package manager
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

