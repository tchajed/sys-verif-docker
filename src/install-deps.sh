#!/bin/bash

set -e

apt-get update -y

ln -fs /usr/share/zoneinfo/America/Chicago /etc/localtime
DEBIAN_FRONTEND=noninteractive apt-get install -y tzdata
dpkg-reconfigure --frontend noninteractive tzdata

# install opam dependencies
apt-get install -y wget gcc make patch unzip bzip2 bubblewrap
apt-get install -y git python3 vim

apt-get install -y libgmp-dev pkg-config
