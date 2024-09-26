# Developing the container

Reminders for myself for how to use this.

## Rebuild the docker tchajed/sys-verif image

Builds can take 10-20min and pushing can take 20min.

```sh
docker buildx build -t tchajed/sys-verif:latest src --platform linux/arm64,linux/amd64
docker push tchajed/sys-verif
```

## OCaml version to use

It's fine to use OCaml 5.2.\* or 4.14.\*. Benchmarking shows flambda doesn't
make much of a difference.

## Testing

Use the devcontainer setup in the sys-verif-solutions repo (or the copy in the
sys-verif-fa24-proofs repo).
