#!/bin/bash

#Simply decrypt the contents within the enc.txt file
echo $(openssl enc -aes-128-cbc -a -salt -pass pass:ABCDEF -d -in enc.txt -out out.txt)
