#!/bin/bash
# This is the command that was used to create the efibootmgr entry when the
# system was installed using gentoo-install.
efibootmgr --verbose --create --disk "/dev/nvme0n1" --part "1" --label "gentoo" --loader '\vmlinuz.efi' --unicode 'initrd=\initramfs.img'" rd.vconsole.keymap=us rd.luks.uuid= root=UUID= amdgpu.sg_display=0"
