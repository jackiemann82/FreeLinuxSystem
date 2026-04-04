#!/bin/bash
echo "LFS Build - Step 10 - Pre final build phase cleanup"
rm -rf /usr/share/{info,man,doc}/*
find /usr/{lib,libexec} -name \*.la -delete
rm -rf /tools
