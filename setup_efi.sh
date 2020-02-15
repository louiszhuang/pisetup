#!/bin/sh -xe
#sudo efibootmgr -d /dev/mmcblk1 -p 1 -c -L "Arch Linux" -l /vmlinuz-linux -u "ro root=UUID=5f0e2b41-6c9d-4152-a1a1-a33878352c72 initrd=/intel-ucode.img initrd=/initramfs-linux.img systemd.gpt_auto=0"
efibootmgr -d /dev/mmcblk1 -p 1 -c -L "Ubuntu EFI" -l /EFI/ubuntu/vmlinuz -u "ro root=UUID=9810f71a-c1a8-497a-a2db-242547c75fe8 initrd=/EFI/ubuntu/initrd.img"
