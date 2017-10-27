#!/bin/bash

status=`aws ec2 describe-instance-status --instance-id $1 | wc -l` 

if [ -z "$status" ]
then
	echo "The instance is running"
else 
	echo "Instance is not running"
fi
