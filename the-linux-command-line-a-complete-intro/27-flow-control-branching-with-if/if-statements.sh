#!/bin/bash

# if statements

NUMBER=10

if [ "$NUMBER" -eq 5 ]; then
	echo "$NUMBER is equal to 5"
else
	echo "$NUMBER is not equal to 5"
	exit 1

fi

exit
