#include <stdio.h>
#include <stdlib.h>
main(){
   exit(confirm());
}

int confirm(){
   char buf[500];

   printf("%p, Sure? [y/N]: ", &buf);
   gets(buf);
   return strcmp(tolower(buf),"y");
}
