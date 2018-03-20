#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>
#include <pthread.h>
void * Run(void*i)
{
  printf("i am pthread ,pid:%d,tid:%u\n",getpid(),(unsigned long )pthread_self());
  sleep(1);
  return (void*) 123;
}
void * Run2(void*j)
{
  printf("i am 2  pthread ,pid:%d,tid:%u\n",getpid(),(unsigned  long )pthread_self());
  sleep(1);
  return (void*) 123;
}
int main()
{
   int count=0;
   pthread_t tid;
   void*tret=NULL;
   pthread_create(&tid,NULL,&Run,NULL); 
  pthread_join(tid,&tret);
  printf("pthread id :%u,exitcode:%d\n",(unsigned long long)tid,(int)tret);
  pthread_create(&tid,NULL,Run2,NULL);
  pthread_cancel(tid);
  pthread_join(tid,&tret);
  printf("wait 2 success,pthread id:%u exit code :%d\n",(unsigned long)tid,(int)tret);
   printf("i am main pthread,pid:%d,tid:%u\n",getpid(),(unsigned long  )pthread_self());
 return 0;
}

   
