#include "con_prod.h"
int Bank[SIZE];
sem_t product_sem;
sem_t consume_sem;
pthread_mutex_t pro_lock=PTHREAD_MUTEX_INITIALIZER;
pthread_mutex_t con_lock=PTHREAD_MUTEX_INITIALIZER;
void* product(void*i)
{
  int step=0;
  int goods=0;   
  while(1)
  {
    pthread_mutex_lock(&pro_lock);
    sem_wait(&product_sem); 
    Bank[step]=rand()%9999; 
    printf("product success,tid:%u tep:%d  GOODs :%d\n",pthread_self(),step,Bank[step]);
    step=(++step)%SIZE; 
    sem_post(&consume_sem);
    pthread_mutex_unlock(&pro_lock);
    sleep(2);
  }
  return (void*)0;
}
void* product_2(void*i)
{
  int step=0;
  int goods=0;   
  while(1)
  {
    pthread_mutex_lock(&pro_lock);
    sem_wait(&product_sem); 
    Bank[step]=rand()%9999; 
    printf("product 2 success,tid:%u tep:%d  GOODs :%d\n",pthread_self(),step,Bank[step]);
    step=(++step)%SIZE; 
    sem_post(&consume_sem);
    pthread_mutex_unlock(&pro_lock);
    sleep(2);
  }
  return (void*)0;
}
void * consume(void*j)
{
  int p=0;
  int step=0;
  while(1)
  {
    pthread_mutex_lock(&con_lock);
    sem_wait(&consume_sem);
    printf("conmuse 1 buy success ,tid:%u step:%d,GOODS:%d\n",pthread_self(),step,Bank[step]);
    step=(++step)%SIZE;
    sem_post(&product_sem);
    pthread_mutex_unlock(&con_lock);
    sleep(1);
  }
  return (void*)1;
}
void * consume_2(void*j)
{
  int p=0;
  int step=0;
  while(1)
  {
    pthread_mutex_lock(&con_lock);
    sem_wait(&consume_sem);
    printf("consume 2 buy success ,tid:%u step:%d,GOODS:%d\n",pthread_self(),step,Bank[step]);
    step=(++step)%SIZE;
    sem_post(&product_sem);
    pthread_mutex_unlock(&con_lock);
    sleep(1);
  }
  return (void*)1;
}
int main()
{
   Init_sem();
   pthread_t con,con_2,prod,prod_2;
   pthread_create(&prod,NULL,product,NULL);
   pthread_create(&con,NULL,consume,NULL);
   pthread_create(&prod_2,NULL,product_2,NULL);
   pthread_create(&con_2,NULL,consume_2,NULL);
   pthread_join(con,NULL);
   pthread_join(con_2,NULL);
   pthread_join(prod,NULL);
   pthread_join(prod_2,NULL);
   Destroy_all();
   return 0;
}
