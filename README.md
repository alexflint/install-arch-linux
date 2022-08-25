# Install Arch
- get the root= variable by running blkid
- make sure to put in the PARTUUID for the root partition (ext4) not the boot partition (vfat)
- make sure to get the PARTUUID from blkid, it is not the same as the one from /etc/fstab
- make sure to mount the boot partition on /mnt/boot before running mkinitcpio -P
- do not forget to run mkinitcpio -P

install these things into the temp installation OS:
```
archlinux-keyring
```

install these things before first boot:
```
iwd dhcpcd man-db man-pages texinfo efibootmgr vi emacs openssh sudo git
```

install these things later for a basic GUI:
```
xorg xfce4 xfce4-goodies firefox pavucontrol pulseaudio
```