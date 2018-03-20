#include <stdio.h>
#include <unistd.h>
int main()
{
  char bar[102];
  int i=0;
  const char *p="|/-\\";
  do{
  bar[i]='#';
  bar[i+1]='\0';
  printf("[%-100s]\033[1;32m %d\033[1;36m%%\033[1;31m %c\033[0m \r",bar,i,p[i%4]);
  usleep(20000);
  }while(++i<=100);
  printf("\n");
  return 0;
}
