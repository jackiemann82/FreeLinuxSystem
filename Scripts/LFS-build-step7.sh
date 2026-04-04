#!/bin/bash
LFS=/mnt/lfs
echo "LFS Build - Step 7 - Entering the chroot environment"
chroot "$LFS" /usr/bin/env -i HOME=/root TERM="$TERM" PS1='(lfs chroot) \u:\w\$' PATH=/usr/bin:/usr/sbin /bin/bash --login
echo "Left chroot environment"
