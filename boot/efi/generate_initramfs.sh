#!/bin/bash
kver="$1"
output="$2" # should be "/boot/efi/initramfs.img"
[[ -n "$kver" ]] || { echo "usage $0 <kernel_version> <output>" >&2; exit 1; }
dracut \
	--kver          "$kver" \
	--zstd \
	--no-hostonly \
	--ro-mnt \
	--add           "bash crypt crypt-gpg btrfs" \
	\
	--force \
	"$output"
