#include<iostream>
using namespace std;
class Node
{
  public:
   Node(int data)
  {
    _PNext=NULL;
    _data=data;
  }
  Node *_PNext;
  int _data;
};
void Pushback(Node**PHead,int data)
{
   if(*PHead==NULL)
   {
    *PHead=new Node(data);
     return ;
   }
   Node * ptemp=new Node(data);
   ptemp->_PNext=*PHead;
   *PHead=ptemp;
}
void rev(Node*PHead)
{
  if(NULL==PHead)
  {
    return ;
  }
  Node * PCur=PHead;
  Node * Ppre=PHead;
  while(PCur->_PNext)
  {
    Ppre=PCur;
    rev(PCur->_PNext);
    PCur=Ppre;
  }
}
void Print_List(Node * Phead)
{
  while(Phead)
  {
    cout<<Phead->_data<<"->";
  }
  cout<<"NULL"<<endl;
}
int main()
{
  Node*Phead=new Node(1); 
  Pushback(&Phead,2);
  Pushback(&Phead,3);
  rev(Phead);
  Print_List(Phead);
  return 0;
}
 
