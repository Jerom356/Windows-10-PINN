#!/bin/sh
# Windows Deploying Script

umount "$part1" "$part2"

# mount partitions
mkdir /tmp/Windows
mount -t ntfs "$part2" /tmp/Windows
# don't try to edit this

# extract install.wim for iso and extract install.wi
# extract compressed file

7z x Windows.rar -o /tmp/Windows

rm Windows.rar

cd /tmp/Windows

# extract Windows.wim image

7z x Windows.wim

rm Windows.wim

# pls wait some time to extract windows 10 imag
# unmount partitions
umount /tmp/1 /tmp/2
rmdir /tmp/1 /tmp/2

exit 1
