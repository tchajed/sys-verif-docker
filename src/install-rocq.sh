#!/bin/bash

set -e

# we still install the coq backwards compatibility package
opam install -y coq.9.1.0 vsrocq-language-server.2.3.4 coq-lsp.0.2.5+9.1
opam clean --logs --all-switches --download-cache --repo-cache --untracked
