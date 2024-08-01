#!/bin/bash

set -e

GO_VERSION=1.22.5

arch="amd64"
if [ "$(uname -m)" = "arm64" ]; then
  arch="arm64"
fi

wget -O go.tar.gz "https://go.dev/dl/go${GO_VERSION}.linux-${arch}.tar.gz"
sudo tar -C /usr/local -xzf go.tar.gz
rm go.tar.gz

# shellcheck disable=SC2016
echo 'export PATH=$PATH:/usr/local/go/bin' >>~/.profile

/usr/local/go/bin/go install github.com/goose-lang/goose/cmd/goose@latest
