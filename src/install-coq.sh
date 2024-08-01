#!/bin/bash

set -e

COQ_VERSION=8.19.2

# shellcheck disable=SC2046
eval $(opam env --switch=default)

opam install -y coq.${COQ_VERSION} vscoq-language-server
# shellcheck disable=SC2016
echo 'eval $(opam env)' >>~/.profile
opam clean --logs --all-switches --download-cache --repo-cache --untracked
