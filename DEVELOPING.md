# Developing the container

Reminders for myself for how to use this.

## Rebuild the docker tchajed/sys-verif image

Builds can take 10-20min and pushing can take 20min.

```sh
docker buildx build -t tchajed/sys-verif:latest src --platform linux/arm64,linux/amd64
docker push tchajed/sys-verif
```

## Deploying to students

Copy `.devcontainer` and `.vscode` to students' assignments repo.
