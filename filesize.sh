#!/bin/bash

#Prompt the user for a file name

read -p "Please enter a file path" filename

if ! [ -f $filename ];then
	echo "File not found"
	exit 1
else
	size=$( wc  -c <$filename )
	echo "$filename file size: $size"
fi
