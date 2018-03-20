#include<stdio.h>
int A(unsigned int data)
{
   int count=0;
   while(data)
  {
     count++;
     data=data&(data-1);
  }
  return count;
}   
int main()
{
   int data=0;
   scanf("%d",&data);
   printf("data:%d",A(data));
   return 0;
}

