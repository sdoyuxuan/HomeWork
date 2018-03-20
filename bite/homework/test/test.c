#include<stdio.h>
#include<stdlib.h>
int main()
{
   int*p=malloc(sizeof(int));
   printf("stack:%p   heap:%p\n",&p,p);
   return 0;
}

