#include <iostream>
#include <unistd.h>
#include <stdlib.h>
using namespace std;
void Fun()
{
  if(fork<0)
  {
    cout<<"failed"<<endl;
  }
  else if(0==fork())
  {
    while(1)
   {
      cout<<"child"<<" "<<"pid:"<<" "<<getpid()<<" "<<"ppid:"<<getppid()<<endl;
      sleep(3);
   }
  }
  else 
  {
   while(1)
   {
    cout<<"father"<<" "<<"pid:"<<" "<<getpid()<<" "<<"ppid:"<<getppid()<<endl;
    sleep(3);
    exit(1);
   }
  }
}
int main()
{
  Fun();
  return 0;
}

