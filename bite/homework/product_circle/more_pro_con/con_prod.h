#ifndef CON_PROC_H
#define CON_PROC_H 
#include<stdio.h>
#include<stdlib.h>
#include<pthread.h>
#include<semaphore.h>
#define SIZE 10
typedef int datatype;
typedef struct list{
   int _value;
   struct list * _pNext;
} Node,*PNode,**position;
PNode head;
int Bank[SIZE];
sem_t product_sem;
sem_t consume_sem;
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
void Init_sem()
{
   size_t nums= sizeof(Bank)/sizeof(Bank[0]);
   size_t idx=0;
   for( idx=0;idx<nums;idx++)
   {
     Bank[idx]=0;
   }
   sem_init(&product_sem,0,10);
   sem_init(&consume_sem,0,0);
}
void Destroy_all()
{
    sem_destroy(&product_sem);
    sem_destroy(&consume_sem); 
    printf("delete sem success\n");
}
#endif 
