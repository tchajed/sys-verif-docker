# Developing the container

Reminders for myself for how to use this.

Find the current version of the container with `docker image ls
tchajed/sys-verif`). Using a version number ensures that updates propagate,
which otherwise requires a `docker pull` as well as rebuilding the cached
devcontainer.

## Rebuild the docker tchajed/sys-verif image

Builds can take 10-20min and pushing can take 20min.

Remember to bump the version number in the below script.

```sh
docker buildx build -t tchajed/sys-verif:latest src --platform linux/arm64,linux/amd64
docker tag tchajed/sys-verif:latest tchajed/sys-verif:v2.4.0
docker push --all-tags tchajed/sys-verif
```

## OCaml version to use

It's fine to use OCaml 5.4.\* or 4.14.\*. Benchmarking shows flambda doesn't
make much of a difference.

## Testing

Use the devcontainer setup in the sys-verif-solutions repo.
