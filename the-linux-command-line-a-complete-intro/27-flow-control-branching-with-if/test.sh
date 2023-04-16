#!/bin/bash

file1=file-expressions.sh

file2=file-expressions-2.sh

if [ file1 -nt file2 ]; then
	echo "$file1 is newer than $file2"
else
	echo "$file2 is newer than $file1"
	exit 0
fi

exit
