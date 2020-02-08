#!/bin/sh -xe
sudo efibootmgr -d /dev/mmcblk1 -p 1 -c -L "Arch Linux" -l /vmlinuz-linux -u "ro root=UUID=5f0e2b41-6c9d-4152-a1a1-a33878352c72 initrd=/intel-ucode.img initrd=/initramfs-linux.img systemd.gpt_auto=0"
