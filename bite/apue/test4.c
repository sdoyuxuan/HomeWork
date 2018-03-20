#include<stdio.h>
#include<pthread.h>
void* Run(void*arg)
{
   printf("second pid:%d  ",getpid());
   return (void*)0;
}    
int main(int argc,char* argv[])
{
   pthread_t tid=0;
   printf("main pid:%d\n",getpid());
   pthread_create(&tid,NULL,Run,NULL);
   sleep(1);
   printf(" tid:%u\n",tid);
   return 0;
}
