# Coq docker container

## Using the container

Install [Docker](https://www.docker.com/get-started/).

Install [VS Code](https://code.visualstudio.com).

Install the [Dev Containers extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers):

VS Code: in the extensions panel (in the sidebar), search for `ms-vscode-remote.remote-container` and install it.

Command line: `code --install-extension ms-vscode-remote.remote-containers`.

The most important VS Code feature to learn is the [Command Palette](https://code.visualstudio.com/docs/getstarted/userinterface#_command-palette), accessed from View > Command Palette. The shortcut is worth learning (ctrl-shift-p, cmd-shift-p on macOS). The command palette gives search access to most editor functionality, and also shows the shortcuts if you want to learn them.

## Rebuild the docker tchajed/sys-verif image

Builds can take 10-20min and pushing can take 20min.

```sh
docker buildx build -t tchajed/sys-verif:latest src --platform linux/arm64,linux/amd64
docker push tchajed/sys-verif
```

## Deploying to students

Copy `.devcontainer` and `.vscode` to students' assignments repo.

## What's in the container?

- Debian 12 slim
- OCaml 5.2.0
- Coq 8.19.2
- vscoq-language-server
- Goose
