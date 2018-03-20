#include<iostream>
#include<string>
using namespace std;
int main()
{
   string s1;  
   string s2;
   s1="AAAAAA";
   s2="BBB";
   s1.append(s2);
   cout<<s1<<endl;
   return 0;
}
