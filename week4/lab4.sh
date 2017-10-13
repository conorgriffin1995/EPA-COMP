#!/bin/bash

cnt=`grep processor /proc/cpuinfo | wc -l`

if [ $cnt -eq $1 ]; then

  echo "Not enough CPUS, exiting"

fi

#to run script exit and save
#then type ./scriptName
#for this lab when running the script pass in a number e.g ./lab4.sh 2


