#!/bin/bash

set -e

# shellcheck disable=SC2046
eval $(opam env --switch=ocaml-4.14-flambda)

# coq system dependencies
apt-get install -y libgmp-dev pkg-config

opam install -y coq
# shellcheck disable=SC2016
echo 'eval $(opam env)' >>~/.profile
