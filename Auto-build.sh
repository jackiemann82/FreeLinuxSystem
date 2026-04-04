#!/bin/bash
LFS="/mnt/lfs"
Scripts/LFS-build-steps1-2.sh
Scripts/LFS-build-step3.sh
Scripts/LFS-build-step4.sh
runuser -u lfs -c 'Scripts/LFS-build-step5.sh'
