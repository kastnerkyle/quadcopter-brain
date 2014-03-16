#!/bin/bash
for i in image3 program.bin initramfs3.gz mtd_jffs2.bin; do
    sudo cp $i /mnt;
done
