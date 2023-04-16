#!/bin/bash

# exit status

ls -d /usr/bin
echo $?

ls -d /usr/bin 2> /dev/null
echo $?

echo ''

echo 'exit status numbers of true & false:'
true
echo $?

false
echo $?

exit
