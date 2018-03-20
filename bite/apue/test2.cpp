#include<iostream>
#include<stdlib.h>
using namespace std;
class A
{
public:
 ~A()
  {}
};
int main(int argv,char*argc[])
{
   char*p=(char*)malloc(14);
   p=p+4;
   free(p);
   return 0;
}
