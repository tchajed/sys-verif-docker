#!/bin/bash

set -e

wget 'https://raw.githubusercontent.com/ocaml/opam/master/shell/install.sh'
yes '' | bash install.sh --fresh

# disable sandboxing since the container is enough isolation, and further
# sandboxing doesn't work in a container anyway
opam init -y --bare --disable-sandboxing
opam switch create -y default ocaml-variants.5.2.0+options ocaml-option-flambda
opam clean --logs --all-switches --download-cache --repo-cache --untracked