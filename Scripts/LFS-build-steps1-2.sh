#!/bin/bash
if [ "$EUID" -ne 0 ]
   then echo "Script needs to be run as root"
   exit
fi
echo "Setting up a new LFS system requires formatting a new drive. Below is the list of hard drives found:"
fdisk --list | grep 'Disk /dev/sd*'
echo "Select the device to be formatted for the new LFS system: "
read device
echo "Creating new filesystem for "$device
(printf "n\n"; printf "\n"; printf "\n"; printf "\n"; printf "\n"; printf "w\n") | fdisk $device
mkfs.ext4 $device"1"
mkdir /mnt/lfs
mount $device"1" /mnt/lfs
