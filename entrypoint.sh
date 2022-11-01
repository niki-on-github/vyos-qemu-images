#!/bin/bash

git clone https://github.com/vyos/vyos-vm-images /vyos-vm-images
pushd /vyos-vm-images
ansible-playbook -e guest_agent=qemu -e enable_ssh=true -e cloud_init=true qemu.yml
popd
ls /tmp
cp -fv /tmp/*.qcow2 /output
