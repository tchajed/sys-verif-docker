#!/bin/bash

set -e

opam install -y coq.9.0.0 vscoq-language-server
opam clean --logs --all-switches --download-cache --repo-cache --untracked
