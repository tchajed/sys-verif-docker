#!/bin/bash

set -e

wget 'https://raw.githubusercontent.com/ocaml/opam/master/shell/install.sh'
yes '' | bash install.sh --fresh

opam init -y --bare
opam switch create -y default ocaml-variants.5.2.0+options ocaml-option-flambda
