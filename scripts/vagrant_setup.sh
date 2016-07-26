#!/bin/bash

apt-get -qq update
DEBIAN_FRONTEND=noninteractive apt-get -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" dist-upgrade
apt-get -yq install build-essential python-dev openssl libssl-dev libevent-dev libsodium-dev

# setup VOLTTRON in home directory
mkdir volttron
ln -s /vagrant/* volttron/
rm -f volttron/env
cd volttron
python2.7 bootstrap.py
