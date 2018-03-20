#include<iostream>
using namespace std;

class A{
public:
   A()
   :_data(1)
  {}
  virtual void Fun()=0
   {
      cout<<_data<<endl;
   }
  virtual ~A()
   {}
protected:
  int _data;
};
class B:public A
{
  public:
   B()
    {}
   void Fun()
   {
     cout<<_data<<endl;
   }  
   ~B()
   {}
   
};

int main()
{
   B b;
   b.Fun();
   return 0;
}    
