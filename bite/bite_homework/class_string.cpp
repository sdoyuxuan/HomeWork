#include "class_string.h"
int main()
{
  String s1("1234");
  cout<<s1<<endl;
  String s2(s1);
  cout<<s2<<endl;
  if(s1==s2)
  { cout<<"s1==s2"<<endl;}
  else
 {
  cout<<"s1!=s2"<<endl;
 }
String s3;
s3=s1;
cout<<s1<<endl;
cout<<s1.size()<<endl;
return 0;
}
 

