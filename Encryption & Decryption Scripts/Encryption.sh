#!/bin/bash

ARG1="$1"

#If condition to check for input
if [[ $ARG1 != '' ]]
then


echo $ARG1 > input.txt

echo $(openssl enc -aes-128-cbc -a -salt -pass pass:ABCDEF -e -in input.txt -out enc.txt)

#If no input given:
else
	echo "ERROR: No data given to encrypt."

fi
