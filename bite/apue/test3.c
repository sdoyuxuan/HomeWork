#include<stdio.h>
#include<unistd.h>
int main(int argv,char*argc[])
{
   int i=0;
   for(;i<argv;++i)
   {
     printf("argc %d:%s\n",i,argc[i]);
   }
  // execl("./argc",NULL);
   return 0;
}
