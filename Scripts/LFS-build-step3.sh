#!/bin/bash
echo "LFS build - Step 3 - Create Basic Filesystem"
LFS="/mnt/lfs"
mkdir -pv $LFS/{etc,var,sources} $LFS/usr/{bin,lib,sbin}

for i in bin lib sbin; do
	ln -sv usr/$i $LFS/$i
done

case $(uname -m) in
	x86_64) mkdir -pv $LFS/lib64 ;;
esac

mkdir -pv $LFS/tools

cp -rvf sources/ $LFS
