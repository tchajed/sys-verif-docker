# Developing the container

Reminders for myself for how to use this.

## Rebuild the docker tchajed/sys-verif image

Builds can take 10-20min and pushing can take 20min.

```sh
docker buildx build -t tchajed/sys-verif:latest src --platform linux/arm64,linux/amd64
docker push tchajed/sys-verif
```

## OCaml version to use

> [!CAUTION]
> Don't use flambda.

A quick benchmark shows flambda does improve performance slightly, but I was
getting sporadic illegal instruction errors when doing the amd64 build (under
Docker in Rosetta on arm64). These are not worth it; just use regular OCaml.
It's fine to use OCaml 5.2.* or 4.14.*.

## Testing

Use the devcontainer setup in the sys-verif-solutions repo (or the copy in the
sys-verif-fa24-proofs repo).
