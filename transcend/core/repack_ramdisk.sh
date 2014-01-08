#!/bin/bash

cd unpacked; find . | cpio -o -H newc | gzip -9 > /tmp/a && printf KAGZabcd | tr dcba $(du -b /tmp/a |awk '{for (b = 0; b < 4; b++) {printf "\\%o", $1 % 256; $1 /= 256}}') > /tmp/b && cat /tmp/b /tmp/a > ../initramfs3.gz && rm /tmp/a /tmp/b
