#!/bin/bash

#this is a CPU counting script
echo "hello user"

cnt=`grep "processor" /proc/cpuinfo | wc -l`

if [ $cnt -le 2 ]; then
  # some action
  echo "Too few CPUs, exiting"
fi

echo "hello $USER"
echo "$HOME"
