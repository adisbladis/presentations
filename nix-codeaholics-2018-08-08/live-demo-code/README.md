# Demoing nix

## How to build a package
`nix-build default.nix`

## How to build the container
`nix-build container.nix`

## How to load the container
1. Copy nix-store path to container tarball
2. `docker load < /nix/store/33ragzgwy5ww9lnym9qf88lhcwdvfsh0-docker-image-timeservice-0.0.1.tar.gz`
