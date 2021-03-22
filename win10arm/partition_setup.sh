#!/bin/sh

umount "$part1" "$part2"

# mount partitions
mkdir /tmp/1 /tmp/2
mount "$part1" /tmp/1
mount -t ntfs "$part2" /tmp/2
# check partition id to make as bootable

uuid=$(blkid -s UUID -o value "$part2")

# edit/create an file with $uuid

echo {$uuid} >> '/tmp/1/System Volume Information/IndexerVolumeGuid'

# now also have main work ,don't try to edit this

# download iso and extract install.wim for iso and extract install.wim
mkdir /tmp/2/ISO

cd /tmp/2/ISO

wget --tries=inf https://drive.google.com/u/0/uc?export=download&confirm=5nrf&id=1SK_5D0AJJoaK1yQ_1GhSc4JhsRxREUtM
wait wget

# rename file
mv * Windows_10_arm64.iso

# extract ISO

7z e Windows_10_arm64.iso /sources/install.wim -o /tmp/2

rm Windows_10_arm64.iso

cd /tmp/2

# extract Install.wim image

7z x install.wim

rm install.wim

# pls wait some time to extract windows 10 imag
# unmount partitions
umount /tmp/1 /tmp/2
rmdir /tmp/1 /tmp/2

exit 1
