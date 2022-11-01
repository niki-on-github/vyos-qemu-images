# vyos qemu image

Use the Ansible playbooks from [vyos/vyos-vm-images](https://github.com/vyos/vyos-vm-images) inside an docker image to build VyOS qemu image.

## Requirements

- Docker

## Usage

```bash
./build.sh
```

This will generate the qcow2 image in `./images`

Or use the docker image from github actions:

```bash
docker run -it --rm --privileged -v /dev:/dev -v $PWD:/output ghcr.io/niki-on-github/vyos-qemu-images:dev
```
