#!/bin/bash

dirA="/home/epa"
dirB=`pwd`

if [ ! $dirA = $dirB ] ; then
	echo "wrong dir..install cannot proceed"
fi
