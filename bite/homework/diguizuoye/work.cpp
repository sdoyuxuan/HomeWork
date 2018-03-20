#include <iostream>
#include <vector>
using namespace std;
struct Node
{
   Node(int _data)
    :data(_data),PNext(NULL)
   {}
   int data;
   Node * PNext;
};
int  Sum(int n)
{
  if(1==n)
  { 
    return 1;
  }
  return Sum(n-1)+n;
}
int Fac(int n)
{
  if (1==n)
  {
    return 1;
  }
  return Fac(n-1)*n;
}
void Print_List_Tail2head(Node * PHead)
{
  if(PHead)
  {
    Print_List_Tail2head(PHead->PNext);
    cout << PHead->data<<" ";
  }
}
int Find_Tail2head(Node * PHead,int data)
{
  static int ret = 0;
  if(PHead)
  {
    Find_Tail2head(PHead->PNext,data);
    if(data == PHead->data)
      {
         ret =data;     
      }
  }
  return ret;
}
int Binary_search (int * array ,int data,size_t lenth)
{
  static int ret=-1;
  int left=0;
  int right= lenth;
  int  mid= (left&right)|(left^right)>>1;
 if(left<right)
  { if(data==array[mid])
    {
       return  ret=array[mid];
    }
   else if(data > array[mid])
   {  
      left=mid+1;
      Binary_search(array+left,data,right);
   }
   else if(data< array[mid])
   {
     right= mid;
     Binary_search(array,data,right);
   }
  } 
}
void print_array(int * array,size_t size)
{
   if(size == 0 || NULL == array)
   { return ;}
   cout<<array[size-1]<<" ";
   if(size)      
   {
     print_array(array,size-1);
   }
}  
bool check_str (const char * p,size_t length)
{
  static bool ret=false;
  if (NULL == p) return ret;
  if(p[0]==p[length-1])
  {
    if(length==1 || length == 0)
    {
      ret =true;
    } 
    check_str(p+1,length-2);
  }
  else 
 {
    return ret;
 }
 return ret;
}
int main()
{
  cout<<Sum(10)<<endl;
  cout<<Fac(5)<<endl ;
  Node N1 (1);
  Node N2 (2);
  Node N3 (3);
  N1.PNext=&N2;
  N2.PNext=&N3;
  Print_List_Tail2head(&N1);
  int test = Find_Tail2head(&N1,2);
  cout <<test<<endl;
  int arr[5] = {1,2,3,4,5};
  test=Binary_search(arr,3,5);
  cout << test<<endl;
  print_array(arr,5);
  if(check_str("12321",5)) cout<<"1"<<endl;
  return 0;
}
