#!/bin/bash

cnt=`ls /tmp | wc -l`
maxnum=3

echo "counting files in /tmp folder"

if [ $cnt -ge $maxnum ]
then
	echo "`date` Max number of files ($cnt) exceeded in /tmp" >> /home/conorgriffin/Documents/EPA-COMP/CA2_Practice/log.txt
fi


