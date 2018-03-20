#ifndef CON_PROC_H
#define CON_PROC_H 
#include<stdio.h>
#include<stdlib.h>
#include<pthread.h>
typedef int datatype;
typedef struct list{
   int _value;
   struct list * _pNext;
} Node,*PNode,**position;
PNode head;
void Insert(datatype value,position p)
{
    PNode NewNode=(Node*)malloc(sizeof(Node));
    if(NewNode==NULL)
   {
      perror("malloc");
      return ;
   }
   if(*p==NULL)
   {
     NewNode->_value=value;
     NewNode->_pNext=NULL; 
     *p=NewNode;
     return ;
   }
   NewNode->_value=value;
   NewNode->_pNext=*p;
   *p=NewNode;
}
int  empty()
{
   return head==NULL;
}
void pop_front(int*p)
{
   if(empty())
    {
      printf("List is empty\n");
      return ;
    }
   PNode del=head;
   *p=head->_value;
   head=head->_pNext;
   free(del);
}
void Delete_List()
{
   PNode del; 
   while(head)
   {
     del=head;
     head=head->_pNext;
     free(del);
   }
}
#endif 
