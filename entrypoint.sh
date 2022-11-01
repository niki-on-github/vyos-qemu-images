#!/bin/bash

git clone https://github.com/vyos/vyos-vm-images /vyos-vm-images
pushd /vyos-vm-images
ansible-playbook qemu.yml
popd
ls /tmp
cp -fv /tmp/*.qcow2 /output
