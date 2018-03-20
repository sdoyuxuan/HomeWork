#include <iostream>
#include<string.h>
using namespace std;
class String
{
  public:
friend ostream& operator <<(ostream&_cout,String &str);
  String(const char *p="")
  {
    if(NULL==p || 0==*p)
    {
      _p=new char[1];
      *_p=0;
    }
    else
    {
       copy(&_p,p);
    }
  }
 String(const String& str)
   :_p(new char[strlen(str._p)+1])
 {
    copy(&_p,str._p);
 }
    
 String& operator=(const String&str)
 {
   if(*this!=str)
   {
     char *temp=NULL;
     copy(&temp,str._p);
     delete []_p;
     _p=temp;
   }
   return *this;
}
char& operator[](size_t index)
   {
     return _p[index];
   }
int size()const
{
   char * ret=_p;
   int count=0;
   while(*ret++!=0)
   {
    count ++;
   }
   return count;
}
bool operator >(const String&str)
 {
   if((*this).size()>str.size())
   {
     return true;
   }
   else 
  {
    return false;
  }
}
bool operator <(const String&str)
{
   if((*this).size()<str.size())
   {
     return true;
   }
   else 
  {
    return false;
  }
}
bool operator ==(const String&str)
{
  char * left=_p;
  char * right=str._p;
  if(*(right)==0&&0==*left)return true;
   while(*left++ == *right++);
  if(*(left)==0 &&0 ==*right)
   return true;
  else 
  return false;
}
bool operator !=(const String &str)
{
    if(*this==str)return false;
    else  return true;
}    
ostream& operator <<(ostream&_cout)
{
   _cout<<_p;
   return _cout;
}
~String()
{
  delete []_p;
  _p=NULL;
}
 private:
 void copy(char ** src,const char*dest)
{
 *src =new char[strlen(dest)+1];
  strcpy(*src,dest);
}
  char * _p;
};

ostream& operator <<(ostream&_cout,String &str)
{
   _cout<<str._p;
   return _cout;
}
