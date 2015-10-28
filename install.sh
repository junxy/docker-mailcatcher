#! /bin/bash

# exit if a command fails
set -e

apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 80F70E11F0F0D5F10CB20E62F5DA5F09C3173AA6
echo "deb http://ppa.launchpad.net/brightbox/ruby-ng/ubuntu trusty main" >> /etc/apt/sources.list

# install ruby 2.2
DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install -y libsqlite3-dev ruby2.2 ruby2.2-dev
update-locale LANG=C.UTF-8 LC_MESSAGES=POSIX \
 && locale-gen en_US.UTF-8 \
 && dpkg-reconfigure locales \

# install mailcatcher
# gem install --no-document mailcatcher

# cleanup package manager
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

