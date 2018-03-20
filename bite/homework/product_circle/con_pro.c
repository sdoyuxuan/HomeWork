#include "con_prod.h"
PNode head=NULL;
int Bank[SIZE];
sem_t product_sem;
sem_t consume_sem;
void* product(void*i)
{
  int step=0;
  int goods=0;   
  while(1)
  {
    sem_wait(&product_sem); 
    Bank[step]=rand()%9999; 
    printf("product success,step:%d GOODs :%d\n",step,Bank[step]);
    step=(++step)%SIZE; 
    sem_post(&consume_sem);
    sleep(1);
  }
  return (void*)0;
}
void * consume(void*j)
{
  int p=0;
  int step=0;
  while(1)
  {
    sem_wait(&consume_sem);
    printf("buy success step:%d,GOODS:%d\n",step,Bank[step]);
    step=(++step)%SIZE;
    sem_post(&product_sem);
    sleep(2);
  }
  return (void*)1;
}
int main()
{
   Init_sem();
   pthread_t tid,tid_2;
   pthread_create(&tid,NULL,product,NULL);
   pthread_create(&tid_2,NULL,consume,NULL);
   pthread_join(tid,NULL);
   pthread_join(tid,NULL);
   Destroy_all();
   return 0;
}
