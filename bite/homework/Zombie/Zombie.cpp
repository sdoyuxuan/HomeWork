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
     cout<<"child"<<endl;
     cout<<"pid"<<getpid()<<endl;
     cout<<"ppid"<<getppid()<<endl;
     exit(1);
  }
  else 
  {
   while(1)
   {
    cout<<"father"<<" "<<"pid:"<<" "<<getpid()<<" "<<"ppid:"<<getppid()<<endl;
    sleep(3);
   }
  }
}
int main()
{
  Fun();
  return 0;
}

