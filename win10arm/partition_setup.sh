#!/bin/sh
# Windows Deploying Script

umount "$part1" "$part2"

# mount partitions
mkdir -p /tmp/Windows /tmp/boot
mount -t ntfs "$part2" /tmp/Windows
mount "$part1" /tmp/boot
# don't try to edit this

cd /tmp/Windows
printf "Extracting Windows.wim"
7z x Windows.rar

rm Windows.rar

# extract Windows.wim image
printf "Extracting Windows 10"
7z x Windows.wim

rm Windows.wim

# copy C:\Windows\System32\winload.efi to X:\EFI\boot\bootaa64.efi
# Warning:did u try to skip this , u can't see Windows 10's error also!
cp /tmp/Windows/Windows/System32/winload.efi /tmp/boot/EFI/boot/bootaa64.efi

umount /tmp/boot /tmp/Windows
rmdir /tmp/boot /tmp/Windows

exit 1
