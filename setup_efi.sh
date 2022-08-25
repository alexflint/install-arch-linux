# Run blkid to get the PARTUUID below. Make sure that it is the
# PARTUUID not the UUID. Make sure that it is for the ext4 partition
# that will contain the main filesystem, not the vfat boot partition.


efibootmgr \
    --bootnum 0000 \
    --delete-bootnum

efibootmgr \
    --bootnum 0000 \
    --disk /dev/nvme0n1 \
    --part 1 \
    --create \
    --label "Arch Linux" \
    --loader /vmlinuz-linux \
    --unicode "root=PARTUUID=b2cf7be8-03 resume=PARTUUID=b2cf7be8-03 rw initrd=\intel-ucode.img initrd=\initramfs-linux.img" \
    --verbose
