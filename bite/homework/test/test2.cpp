#include<iostream>
using namespace std;
class Base1
{
public:
	Base1()
		:_b(0)
	{}
	virtual Base1* A()
	{
		cout << "i am Base1" << endl;
		return this;
	}
	int _b;
};
class Base2
{
public:
	Base2()
		:_b2(1)
	{}
	virtual Base2* A()
	{
		cout << "i am Base2" << endl;
		return this;
	}
	virtual Base2* B()
	{
		cout << "B" << endl;
		return this;
	}
	int _b2;
};
class Dervied:public  Base1,public Base2
{
public:
	Dervied()
		:Base1(), Base2(), _d(2)
	{}
	Dervied* A()
	{
		cout << "i am Dervied" << endl;
		return this;
	}
	int _d;
};
void test(Base2*p)
{
	p->A();
}
int main()
{
	Dervied d;
	Base2 b;
	b = d;
	Dervied * p = &d;
	Base2*q = &d;
	(*p).B();
	(*p).A();
	(*q).A();
	(*q).B();
	//int*_i = (int*)q;
	//	//int*_j=(int*)*_i; // *_i 为虚表地址
	test(p);
	return 0;
}
