#!/bin/bash

cnt=`aws ec2 describe-instance-status --instance-id $1 | wc -l` 

if [ $cnt -eq 30 ]
then
	echo "The instance is running"
else 
	echo "Instance is not running"
fi
