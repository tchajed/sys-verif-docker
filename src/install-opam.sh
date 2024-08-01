#!/bin/bash

set -e

apt-get update -y

ln -fs /usr/share/zoneinfo/America/Chicago /etc/localtime
DEBIAN_FRONTEND=noninteractive apt-get install -y tzdata
dpkg-reconfigure --frontend noninteractive tzdata

# install opam dependencies
apt-get install -y wget gcc make patch unzip bzip2 bubblewrap git

wget 'https://raw.githubusercontent.com/ocaml/opam/master/shell/install.sh'
yes '' | bash install.sh --fresh

opam init -y --bare
opam switch create -y ocaml-4.14-flambda ocaml-variants.4.14.2+options ocaml-option-flambda
