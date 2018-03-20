#include <unistd.h>
#include <stdio.h>
int main()
{
  execl("./test","test",NULL);
  printf("1111\n");
  return 0;
}
