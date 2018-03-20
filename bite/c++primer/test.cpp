#include<iostream>
using namespace std;
const int a=1;
int main()
{
  const int b=1;
  const int &rci=1;
  cout<<&a<<endl;
  cout<<&b<<endl;
  cout<<&rci<<endl;
  return 0;
}
