quadcopter-brain
================

Repository for work on a quadcopter brain using hacked wifi SD cards.


Loading kernel, bootloader and ramdisk
======================================


If you want to compile a different busybox
==========================================
To build a new busybox, go into the transcend directory. If you have not run
./make_crosstool, do so now. This will take a while, but once that is complete
you should be able to run ./make_busybox to create a new busybox utility. Copy
that into the ramdisk which is unpacked by transcend/core/unpack_ramdisk.sh 

Now run

cp transcend/busybox-1.22.1/busybox transcend/core/unpacked/bin/busybox

Once this is complete, repack the ramdisk and copy to the transcend SD card.
