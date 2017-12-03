#!/bin/bash

USER="Conor"

echo "Hello $USER"

echo "Your directory is : "
pwd

echo "Enter directory name"
read dirname
echo "this is the directory name :  $dirname"
mkdir $dirname

cd $dirname
echo "your directory now is : "
pwd
touch test.sh

ls -l
echo
cnt=`grep "processor" /proc/cpuinfo | wc -l` 
echo "CPU Count =  $cnt"

if [ $cnt -le 2 ]; then
	echo "Too few CPU's, exiting"

fi


