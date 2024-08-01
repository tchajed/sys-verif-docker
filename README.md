# Coq docker container

## Rebuild the docker tchajed/sys-verif image

```
docker buildx build -t tchajed/sys-verif:latest src --platform linux/arm64,linux/amd64
docker push tchajed/sys-verif
```

## Deploying to students

Copy `.devcontainer` to students' assignments repo.
