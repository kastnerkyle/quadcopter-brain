#!/bin/bash

sudo sh -c 'mkdir unpacked && cd unpacked && cat ../initramfs3.gz | dd bs=8 skip=1 | gunzip | cpio -i'
