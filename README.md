# Rocq docker container

Docker container for courses using the Rocq Prover. This setup was created for CS 839: Systems Verification, taught in Fall 2024 and Fall 2025 at UW-Madison.

The setup is intended to make it easy to get started with Rocq using VS Code with
a prepared Dev Container.

## Using the container

Install [Docker](https://www.docker.com/get-started/).

Install [VS Code](https://code.visualstudio.com).

Install the [Dev Containers extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers). The install page has a link that will open in VS Code.

- Alternate option 1: you can also install the extension from the Extensions sidebar item.
- Alternate option 2: at the command line you can run `code --install-extension ms-vscode-remote.remote-containers`.

The most important VS Code feature to learn is the [Command Palette](https://code.visualstudio.com/docs/getstarted/userinterface#_command-palette), accessed from View > Command Palette. The shortcut is worth learning (ctrl-shift-p, cmd-shift-p on macOS). The command palette gives search access to most editor functionality and shows keyboard shortcuts if you want to learn them.

## What's in the container?

- Debian 12 slim
- OCaml 4.14.2
- Rocq 9.0
- vscoq-language-server 2.2.3
- Go 1.24
- Goose
