#!/bin/bash

set -e

opam install -y coq.9.0.0 vscoq-language-server.2.2.6 coq-lsp.0.2.3+9.0
opam clean --logs --all-switches --download-cache --repo-cache --untracked
