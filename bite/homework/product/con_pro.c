#include "con_prod.h"
static pthread_mutex_t lock=PTHREAD_MUTEX_INITIALIZER;
static pthread_cond_t cond=PTHREAD_COND_INITIALIZER;
PNode head=NULL;
void* product(void*i)
{
  int goods=0;   
  while(1)
  {
    sleep(1); 
    pthread_mutex_lock(&lock);
    goods=rand()%9999;
    Insert(goods,&head);
    printf("product success :%d",goods);
    pthread_mutex_unlock(&lock);
    pthread_cond_signal(&cond);
  }
  return (void*)0;
}
void * consume(void*j)
{
  int p=0;
  while(1)
  {
    pthread_mutex_lock(&lock);
    if(empty()) pthread_cond_wait(&cond,&lock);
    pop_front(&p);
    printf("buy success :%d\n",p);
    pthread_mutex_unlock(&lock);
  }
  return (void*)1;
}
int main()
{
   pthread_t tid,tid_2;
   pthread_create(&tid,NULL,product,NULL);
   pthread_create(&tid_2,NULL,consume,NULL);
   pthread_join(tid,NULL);
   pthread_join(tid,NULL);
   return 0;
}
