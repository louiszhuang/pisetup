#!/bin/sh -xe
#sudo efibootmgr -d /dev/mmcblk1 -p 1 -c -L "Arch Linux" -l /vmlinuz-linux -u "ro root=UUID=5f0e2b41-6c9d-4152-a1a1-a33878352c72 initrd=/intel-ucode.img initrd=/initramfs-linux.img systemd.gpt_auto=0"
efibootmgr -d /dev/mmcblk1 -p 1 -b 0 -L "Ubuntu" -l /ubuntu/vmlinuz-linux -u "ro root=UUID=6e867af0-fa11-426b-80af-d25e6dcc61d7 initrd=/ubuntu/initrd.img"
