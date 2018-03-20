#include <iostream>
using namespace std;
class Base
{
public:
	Base()
	{}
 public:
	virtual  void fun()
	 {
		 cout << "i am Base" << endl;
	 }
};
class Dervied :public Base
{
public:
	Dervied()
	{}
        virtual	void fun() 
	{
                cout<<"my pid :"<<getpid()<<endl;
		cout << "i am Dervied" << endl;
	}
};
int main()
{
	Dervied d;
	Base * b = &d;
	b->fun();
	return 0;

}
