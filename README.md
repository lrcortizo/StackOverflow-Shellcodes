# StackOverflow-Shellcodes
Example of StackOverFlow with shellcodes in Linux/x86 
### Compile whitout protections:
sudo -s  
sysctl kernel.randomize_va_space=0  
gcc -fno-stack-protector -z execstack -D_FORTIFY_SOURCE=0 -U_FORTIFY_SOURCE -m32 -g stack_over.c -o stack_over
./example_xploit.sh | ./stack_over
### Shellcodes:
http://shell-storm.org/shellcode/  
https://www.exploit-db.com/shellcode/?order_by=title&order=asc&p=Linux_x86

