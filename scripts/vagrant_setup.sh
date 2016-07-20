#!/bin/bash

add-apt-repository ppa:chris-lea/libsodium
apt-get -qq update
apt-get -yq upgrade
apt-get -yq install build-essential python-dev openssl libssl-dev libevent-dev libsodium-dev
